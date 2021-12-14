<?php

namespace App\Service;

use App\AutoMapping;
use App\Constant\LocalNotificationList;
use App\Constant\OrderStateConstant;
use App\Entity\OrderEntity;
use App\Manager\OrderManager;
use App\Request\OrderClientCreateRequest;
use App\Request\OrderClientSendCreateRequest;
use App\Request\OrderClientSpecialCreateRequest;
use App\Request\orderUpdateBillCalculatedByCaptainRequest;
use App\Request\OrderUpdateProductCountByClientRequest;
use App\Request\OrderUpdateStateByCaptainRequest;
use App\Request\OrderUpdateInvoiceByCaptainRequest;
use App\Request\OrderUpdateByClientRequest;
use App\Request\OrderUpdateSpecialByClientRequest;
use App\Request\OrderUpdateSendByClientRequest;
use App\Response\CountReportForStoreOwnerResponse;
use App\Response\OrderCancelResponse;
use App\Response\OrderDetailsByOrderNumberForStoreResponse;
use App\Response\OrderInfoResponse;
use App\Response\OrderResponse;
use App\Response\OrderClosestResponse;
use App\Response\OrderPendingResponse;
use App\Response\OrdersPendingForStoreResponse;
use App\Response\orderUpdateBillCalculatedByCaptainResponse;
use App\Response\OrderUpdateProductCountByClientResponse;
use App\Response\OrderUpdateStateResponse;
use App\Response\OrderUpdateInvoiceByCaptainResponse;
use App\Response\OrderCreateClientResponse;
use App\Response\OrderClientSendCreateResponse;
use App\Response\AcceptedOrderResponse;
use App\Response\CountReportResponse;
use App\Response\OrdersByClientResponse;
use App\Response\CountOrdersInLastMonthForStoreResponse;
use App\Response\CountOrdersInLastMonthForCaptainResponse;
use App\Response\CountOrdersInLastMonthForClientResponse;
use App\Response\CountOrdersInLastMonthForProoductResponse;
use App\Response\StoreOrdersOngoingResponse;
use App\Response\StoreOrdersResponse;
use App\Response\OrderDetailResponse;
use App\Constant\ResponseConstant;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use DateTime;

class OrderService
{
    private $autoMapping;
    private $orderManager;
    private $storeOwnerProfileService;
    private $params;
    private $ratingService;
    // private $notificationService;
    private $roomIdHelperService;
    private $dateFactoryService;
    private $captainProfileService;
    private $productService;
    private $orderDetailService;
    private $deliveryCompanyFinancialService;
    private $clientProfileService;
    private $notificationLocalService;
    private $orderLogService;
    private $userService;
    private $ordersInvoicesService;

    public function __construct(AutoMapping $autoMapping, OrderManager $orderManager, StoreOwnerProfileService $storeOwnerProfileService, ParameterBagInterface $params,  RatingService $ratingService
                                // , NotificationService $notificationService
                               , RoomIdHelperService $roomIdHelperService,  DateFactoryService $dateFactoryService, CaptainProfileService $captainProfileService, ProductService $productService, OrderDetailService $orderDetailService, DeliveryCompanyFinancialService $deliveryCompanyFinancialService,
                               ClientProfileService $clientProfileService, NotificationLocalService $notificationLocalService, OrderLogService $orderLogService, UserService $userService, OrdersInvoicesService $ordersInvoicesService
                                )
    {
        $this->autoMapping = $autoMapping;
        $this->orderManager = $orderManager;
        $this->storeOwnerProfileService = $storeOwnerProfileService;
        $this->ratingService = $ratingService;
        $this->roomIdHelperService = $roomIdHelperService;
        $this->dateFactoryService = $dateFactoryService;
        $this->params = $params->get('upload_base_url') . '/';
        // $this->notificationService = $notificationService;
        $this->captainProfileService = $captainProfileService;
        $this->productService = $productService;
        $this->orderDetailService = $orderDetailService;
        $this->deliveryCompanyFinancialService = $deliveryCompanyFinancialService;
        $this->clientProfileService = $clientProfileService;
        $this->notificationLocalService = $notificationLocalService;
        $this->orderLogService = $orderLogService;
        $this->userService = $userService;
        $this->ordersInvoicesService = $ordersInvoicesService;
    }

    public function closestOrders($userId)
    {
       $captain = $this->captainProfileService->captainIsActive($userId);
    
       $response = ResponseConstant::$CAPTAIN_INACTIVE;

       if ($captain->getStatus() == ResponseConstant::$CAPTAIN_ACTIVE) {

           $response = [];

           $orders = $this->orderManager->closestOrders();

           foreach ($orders as $order){
                $response[] = $this->autoMapping->map('array', OrderClosestResponse::class, $order);
            }
       }

       return $response;
    }
    
    public function getPendingOrders():?array
    {
        $response = [];

        $orders = $this->orderManager->getPendingOrders();

        foreach ($orders as $order) {
            $response[] = $this->autoMapping->map('array', OrderPendingResponse::class, $order);
        }

        return $response;
    }
    
    public function orderUpdateStateByCaptain(OrderUpdateStateByCaptainRequest $request)
    {
        $response = "Not updated!!";
        $orderDetails = $this->orderDetailService->getOrderIdByOrderNumber($request->getOrderNumber());
        if($orderDetails){
            $request->setId($orderDetails[0]->orderID);
            $item = $this->orderManager->orderUpdateStateByCaptain($request);

            //----> start create log
            // if order type is product order or special order
            if ($item->getOrderType() == 1 ||  $item->getOrderType() == 2) {
                $this->orderLogService->createOrderLog($request->getOrderNumber(), $item->getState(), $request->getCaptainID(), $item->getStoreOwnerProfileID());
            }
            // if order type is send order
            if ($item->getOrderType() == 3) {
                $this->orderLogService->createOrderLog($request->getOrderNumber(), $item->getState(), $request->getCaptainID());
            }
            //----> end create log

            //create notification local
            $state ="";
            if ($request->getState() == "on way to pick order"){
                $state = LocalNotificationList::$STATE_ON_WAY_PICK_ORDER;
            }
            if ($request->getState() == "in store"){
                $state =  LocalNotificationList::$STATE_IN_STORE;
            }
            if ($request->getState() == "ongoing"){
                $state =  LocalNotificationList::$STATE_ONGOING;
            }
            if ($request->getState() == "delivered"){
                $state =  LocalNotificationList::$STATE_DELIVERED;
            }

            $this->notificationLocalService->createNotificationLocal($item->getClientID(),  LocalNotificationList::$STATE_TITLE, $state, $request->getOrderNumber());

            $response = $this->autoMapping->map(OrderEntity::class, OrderUpdateStateResponse::class, $item);
        
        //start-----> notification
        //
        // $notificationRequest = new SendNotificationRequest();
        // $notificationRequest->setUserIdOne($item->getOwnerID());
        // $notificationRequest->setOrderID($item->getId());
        // $this->notificationService->notificationOrderUpdate($notificationRequest);
        //notification <------end
        //
       }

        return $response;
    }
   
    public function getOrdersWithOutPending():?array
    {
       $orders = $this->orderManager->getOrdersWithOutPending();

       return $this->getOrdersWithStore($orders);
    }
    
    public function getOrdersWithStore($orders):?array
    {
        $response=[];

        foreach ($orders as $order) {
            if ($order['storeOwnerProfileID'] == true) {  
                $order['storeOwner'] = $this->storeOwnerProfileService->getStoreOwnerProfileById($order['storeOwnerProfileID']);
                if( $order['storeOwner'] != null ){
                    $order['storeOwnerName']=$order['storeOwner']->storeOwnerName;
                    $order['image']=$order['storeOwner']->image;
                    $order['branches']=$order['storeOwner']->branches;
                }
            }

            $response[] = $this->autoMapping->map('array', OrderClosestResponse::class, $order);
        }

        return $response;
    }

    public function getOrdersOngoing():?array
    {
        $orders = $this->orderManager->getOrdersOngoing();

        return $this->getOrdersWithStore($orders);
    }

     public function getOrdersInSpecificDate($fromDate, $toDate):?array
     {
        $date = $this->dateFactoryService->returnSpecificDate($fromDate, $toDate);

        $orders = $this->orderManager->getOrdersInSpecificDate($date[0], $date[1]);

        return $this->getOrdersWithStore($orders);
    }

    public function getCountOrdersEveryStoreInLastMonth():?array
    {
       $response=[];

       $date = $this->dateFactoryService->returnLastMonthDate();
 
       $items = $this->orderManager->getCountOrdersEveryStoreInLastMonth($date[0],$date[1]);

       foreach ($items as $item) {
//           $item['image'] = $this->getImageParams($item['image'], $this->params . $item['image'], $this->params);

           $response[] = $this->autoMapping->map('array', CountOrdersInLastMonthForStoreResponse::class, $item);
       }

       return $response;
   }

    public function getCountOrdersEveryCaptainInLastMonth():?array
    {
       $response=[];

       $date = $this->dateFactoryService->returnLastMonthDate();
 
       $items = $this->orderManager->getCountOrdersEveryCaptainInLastMonth($date[0],$date[1]);

        foreach ($items as $item) {
//            $item['image'] = $this->getImageParams($item['image'], $this->params . $item['image'], $this->params);

            $response[] = $this->autoMapping->map('array', CountOrdersInLastMonthForCaptainResponse::class, $item);
        }

        return $response;
   }
   
    public function getCountOrdersEveryClientInLastMonth():?array
    {
       $response=[];

       $date = $this->dateFactoryService->returnLastMonthDate();

       $items = $this->orderManager->getCountOrdersEveryClientInLastMonth($date[0],$date[1]);

       foreach ($items as $item) {
//           $item['image'] = $this->getImageParams($item['image'], $this->params . $item['image'], $this->params);

           $response[] = $this->autoMapping->map('array', CountOrdersInLastMonthForClientResponse::class, $item);
        }

       return $response;
   }

    public function getCountOrdersEveryProductInLastMonth():?array
    {
       $response=[];

       $date = $this->dateFactoryService->returnLastMonthDate();

       $items = $this->orderDetailService->getCountOrdersEveryProductInLastMonth($date[0],$date[1]);
     
        foreach ($items as $item) {
//            $item['productImage'] = $this->getImageParams($item['productImage'], $this->params . $item['productImage'], $this->params);

            $response[] = $this->autoMapping->map('array', CountOrdersInLastMonthForProoductResponse::class, $item);
        }

        return $response;
   }

    public function getAcceptedOrderByCaptainId($captainID):array
    {
        $response = [];

        $orders = $this->orderManager->getAcceptedOrderByCaptainId($captainID);
   
        foreach ($orders as $order){
          $order['orderDetail'] = $this->orderDetailService->getOrderNumberByOrderId($order['id']);
          $order['orderNumber'] = $order['orderDetail'][0]->orderNumber;

          $response[] = $this->autoMapping->map('array', AcceptedOrderResponse::class, $order);
        }
    
        return $response;
    }

    public function createClientOrder(OrderClientCreateRequest $request)
    {  
        $response = ResponseConstant::$ORDER_NOT_CREATED;

        $orderNumber = 1;

        $lastOrderNumber = $this->orderDetailService->getLastOrderNumber();
        if ($lastOrderNumber) {
            $orderNumber = $lastOrderNumber['orderNumber'] + 1;
       }

        $roomID = $this->roomIdHelperService->roomIdGenerate();

        $item = $this->orderManager->createClientOrder($request, $roomID);
        if ($item) {
            $orderDetails = $request->getOrderDetails();

            foreach ($orderDetails as $orderDetail) {
               $productID = $orderDetail['productID'];
               $countProduct = $orderDetail['countProduct'];
               $storeOwnerProfileID = $orderDetail['storeOwnerProfileID'];

               $orderDetail = $this->orderDetailService->createOrderDetail($item->getId(), $productID, $countProduct, $orderNumber, $storeOwnerProfileID);
               if(!$orderDetail) {
                   return $response;
               }
               //create log
              $this->orderLogService->createOrderLog($orderNumber, $item->getState(), $request->getClientID(), $storeOwnerProfileID);
            }

            //create notification local
            $this->notificationLocalService->createNotificationLocal($request->getClientID(), LocalNotificationList::$NEW_ORDER_TITLE, LocalNotificationList::$CREATE_ORDER_SUCCESS, $orderNumber);

            $response = $this->autoMapping->map(OrderEntity::class, OrderCreateClientResponse::class, $item);
            $response->orderDetail = $orderDetail;
          }

        return $response;
    }

    public function createClientSendOrder(OrderClientSendCreateRequest $request)
    {  
        $response = ResponseConstant::$ORDER_NOT_CREATED;

        $orderNumber = 1;

        $lastOrderNumber = $this->orderDetailService->getLastOrderNumber();
        if ($lastOrderNumber) {
            $orderNumber = $lastOrderNumber['orderNumber'] + 1;
       }

        $roomID = $this->roomIdHelperService->roomIdGenerate();

        $item = $this->orderManager->createClientSendOrder($request, $roomID);
        if ($item) {
            $orderDetail = $this->orderDetailService->createOrderDetail($item->getId(), null, null, $orderNumber);
            if(!$orderDetail){
                return $response;
            }

            //create log
            $this->orderLogService->createOrderLog($orderNumber, $item->getState(), $request->getClientID());

            //create notification local
            $this->notificationLocalService->createNotificationLocal($request->getClientID(), LocalNotificationList::$NEW_ORDER_TITLE, LocalNotificationList::$CREATE_ORDER_SUCCESS, $orderNumber);

            $response = $this->autoMapping->map(OrderEntity::class, OrderClientSendCreateResponse::class, $item);
            $response->orderDetail['orderNumber'] = $orderDetail->orderNumber;
            $response->orderDetail['orderDetailId'] = $orderDetail->id;
          }

        return $response;
    }

    public function createClientSpecialOrder(OrderClientSpecialCreateRequest $request)
    {  
        $response = ResponseConstant::$ORDER_NOT_CREATED;

        $orderNumber = 1;

        $lastOrderNumber = $this->orderDetailService->getLastOrderNumber();
        if ($lastOrderNumber) {
            $orderNumber = $lastOrderNumber['orderNumber'] + 1;
       }

        $roomID = $this->roomIdHelperService->roomIdGenerate();

        $item = $this->orderManager->createClientSpecialOrder($request, $roomID);
        if ($item) {
            $orderDetail = $this->orderDetailService->createOrderDetail($item->getId(), null, null, $orderNumber, $request->getStoreOwnerProfileID());
            if(!$orderDetail){
               return $response;
            }
            //create log
            $this->orderLogService->createOrderLog($orderNumber, $item->getState(), $request->getClientID(), $request->getStoreOwnerProfileID());

            //create notification local
            $this->notificationLocalService->createNotificationLocal($request->getClientID(), LocalNotificationList::$NEW_ORDER_TITLE, LocalNotificationList::$CREATE_ORDER_SUCCESS, $orderNumber);

            $response = $this->autoMapping->map(OrderEntity::class, OrderClientSendCreateResponse::class, $item);
            $response->orderDetail['orderNumber'] = $orderDetail->orderNumber;
            $response->orderDetail['orderDetailId'] = $orderDetail->id;
          }
          
        return $response;
    }

    public function getOrderStatusByOrderNumber($orderNumber) 
    {
        $response = [];

        $orderDetails = $this->orderDetailService->getOrderIdByOrderNumber($orderNumber);
        if($orderDetails) {
            $order = $this->orderManager->orderStatusByOrderId($orderDetails[0]->orderID);
            if ($order[0]['storeOwnerProfileID']) {
                if($orderDetails[0]->storeOwnerProfileID){
                    $storeOwner = $this->storeOwnerProfileService->getStoreOwnerProfileById($orderDetails[0]->storeOwnerProfileID);

                    $response['orderDetails'] = $orderDetails;
                    $response['storeOwner'] = $storeOwner;
                }
            }
            $response['order'] = $order[0];
    }
        return $response;
    }

    public function getOrderDetailsByOrderNumber($orderNumber)
    {
        $response = [];

        $item['orderDetails'] = $this->orderDetailService->orderDetails($orderNumber);

        $item['deliveryCost'] = $this->deliveryCompanyFinancialService->getDeliveryCostScalar();

        $item['rate'] = $this->ratingService->getAvgOrder($orderNumber);
        if($item['orderDetails']) {
            $item['order'] = $this->orderManager->orderStatusByOrderId($item['orderDetails'][0]->orderID);
            $response = $this->autoMapping->map('array', OrderInfoResponse::class, $item);
    }
        return $response;
    }

    public function orderUpdateByClient(OrderUpdateByClientRequest $request)
    {
        $response = ResponseConstant::$ERROR;

        $orderId = $this->orderDetailService->getOrderId($request->getOrderNumber());

        if($orderId) {
            $order = $this->orderManager->orderStatusByOrderId($orderId[0]['orderID']);
            if($order['state'] != OrderStateConstant::$ORDER_STATE_PENDING ) {
                //notification local
                $this->notificationLocalService->createNotificationLocal($request->getClientID(), LocalNotificationList::$UPDATE_ORDER_TITLE, LocalNotificationList::$UPDATE_ORDER_ERROR_CAPTAIN_IN_STORE, $request->getOrderNumber());

                return ResponseConstant::$ORDER_NOT_UPDATE_STATE;
            }

            $products = $request->getProducts();

            foreach ($products as $product) {

                $productID = $product['productID'];
                $countProduct = $product['countProduct'];
                $orderDetail = new OrderUpdateProductCountByClientRequest();
                $orderDetail->setCountProduct($countProduct);
                $orderDetail->setOrderNumber($request->getOrderNumber());
                $orderDetail->setProductId($productID);

                $updateProductCount = $this->orderDetailService->UpdateProductCount($orderDetail);
            }
            //notification local
            $this->notificationLocalService->createNotificationLocal($request->GetClientID(), LocalNotificationList::$UPDATE_ORDER_TITLE, LocalNotificationList::$UPDATE_ORDER_SUCCESS, $request->getOrderNumber());
            $response = $this->autoMapping->map(OrderUpdateProductCountByClientResponse::class, OrderUpdateProductCountByClientResponse::class, $updateProductCount);
        }
        return $response;
    }

    public function orderSpecialUpdateByClient(OrderUpdateSpecialByClientRequest $request, $userID)
    {
        $response = "Not updated!!";

        $orderDetails = $this->orderDetailService->getOrderIdWithOutStoreProductByOrderNumber($request->getOrderNumber());
        if($orderDetails) {
            $order = $this->orderManager->orderStatusByOrderId($orderDetails[0]->getOrderID());
            if($order[0]['state'] == 'in store') {

                //notification local
                $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$UPDATE_ORDER_TITLE, LocalNotificationList::$UPDATE_ORDER_ERROR_CAPTAIN_IN_STORE, $request->getOrderNumber());

                return $response = "you can't edit, captain in the store.";
            }

                $orderUpdate = $this->orderManager->orderSpecialUpdateByClient($request, $orderDetails[0]->getOrderID());
                if($orderUpdate) {

                    foreach ($orderDetails as $orderDetail) {

                        $orderDetailDelete = $this->orderDetailService->orderDetailDelete($orderDetail->getId());
                    }

                    if ($orderDetailDelete == "Deleted") {
                        $createOrderDetail = $this->orderDetailService->createOrderDetail($orderDetails[0]->getOrderID(), null, null, $request->getOrderNumber());

                        //notification local
                        $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$UPDATE_ORDER_TITLE, LocalNotificationList::$UPDATE_ORDER_SUCCESS, $request->getOrderNumber());

                        return $response = $this->getOrderStatusByOrderNumber($request->getOrderNumber());
                    } 
                }     
        }       

        return $response;
    }

    public function orderSendUpdateByClient(OrderUpdateSendByClientRequest $request, $userID)
    {
        $response = "Not updated!!";

        $orderDetails = $this->orderDetailService->getOrderIdWithOutStoreProductByOrderNumber($request->getOrderNumber());
        if($orderDetails) {
            $order = $this->orderManager->orderStatusByOrderId($orderDetails[0]->getOrderID());
            if($order[0]['state'] == 'in store') {
                //notification local
                $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$UPDATE_ORDER_TITLE, LocalNotificationList::$UPDATE_ORDER_ERROR_CAPTAIN_IN_STORE, $request->getOrderNumber());

                return $response = "you can't edit, captain in the store.";
            }

                $orderUpdate = $this->orderManager->orderSendUpdateByClient($request, $orderDetails[0]->getOrderID());
                if($orderUpdate) {

                    foreach ($orderDetails as $orderDetail) {
                         $orderDetailDelete = $this->orderDetailService->orderDetailDelete($orderDetail->getId());
                    }

                    if ($orderDetailDelete == "Deleted") {
                        $createOrderDetail = $this->orderDetailService->createOrderDetail($orderDetails[0]->getOrderID(), null, null, $request->getOrderNumber());

                        //notification local
                        $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$UPDATE_ORDER_TITLE, LocalNotificationList::$UPDATE_ORDER_SUCCESS, $request->getOrderNumber());

                        return $response = $this->getOrderStatusByOrderNumber($request->getOrderNumber());
                    }
                }     
        }       

        return $response;
    }

    public function orderCancel($orderNumber, $userID)
    {
        $response= [];

        $orderDetails = $this->orderDetailService->getStoreOwnerProfileIdAndOrderIDByOrderNumber($orderNumber);

        if($orderDetails) {
            $order = $this->orderManager->orderStatusByOrderId($orderDetails[0]['orderID']);

            $halfHourLaterTime = date_modify($order['createdAt'],'+30 minutes');

            $nowDate = new DateTime('now');
            
            if ( $halfHourLaterTime < $nowDate) {
                //notification local
                $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$CANCEL_ORDER_TITLE, LocalNotificationList::$CANCEL_ORDER_ERROR_TIME, $orderNumber);

                $response=ResponseConstant::$ORDER_NOT_REMOVE_TIME;
            }

            elseif ($order['state'] != OrderStateConstant::$ORDER_STATE_PENDING) {
                //notification local
                $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$CANCEL_ORDER_TITLE, LocalNotificationList::$CANCEL_ORDER_ERROR_ACCEPTED, $orderNumber);

                $response = ResponseConstant::$ORDER_NOT_REMOVE_CAPTAIN_RECEIVED;
            }            

            else {
                $item = $this->orderManager->orderCancel($orderDetails[0]['orderID']);
                if($item) {
                    //----> start create log
                    // if order type is product order or special order
                    if ($item->getOrderType() == 1 ||  $item->getOrderType() == 2) {
                        $this->orderLogService->createOrderLog($orderNumber, $item->getState(), $userID, $orderDetails[0]['storeOwnerProfileID']);
                    }

                    //----> if order type is send order
                    if ($item->getOrderType() == 3) {
                        $this->orderLogService->createOrderLog($orderNumber, $item->getState(), $userID);
                    }

                    //notification local
                    $this->notificationLocalService->createNotificationLocal($userID, LocalNotificationList::$CANCEL_ORDER_TITLE, LocalNotificationList::$CANCEL_ORDER_SUCCESS, $orderNumber);
                }

                $response = $this->autoMapping->map(OrderEntity::class, OrderCancelResponse::class, $item);
            }
        }

        return $response;
    }

    public function getOrdersByClientID($clientID): array
    {
        $response = [];

        $orders = $this->orderManager->getOrdersByClientID($clientID);

        foreach ($orders as $order) {
           $order['amount'] = $order['deliveryCost'] + $order['orderCost'];

           $response[] = $this->autoMapping->map('array', OrdersByClientResponse::class, $order);
       }

        return $response;
    }

    public function getOrdersDeliveredAndCancelledByClientId($clientID)
    {
        $response = [];

        $orders = $this->orderManager->getOrdersDeliveredAndCancelledByClientId($clientID);
        foreach ($orders as $order) {
           $order['amount'] = $order['deliveryCost'] + $order['orderCost'];

           $response[] = $this->autoMapping->map('array', OrdersByClientResponse::class, $order);
       }

        return $response;
    }

    public function orderUpdateInvoiceByCaptain(OrderUpdateInvoiceByCaptainRequest $request)
    {
        $response = ResponseConstant::$ERROR;

        $orderInvoice = $this->ordersInvoicesService->orderUpdateInvoiceByCaptain($request);
        if(!$orderInvoice) {
            return $response;
        }

        $request->setOrderInvoiceId($orderInvoice->id);

        $item = $this->orderDetailService->orderUpdateInvoiceByCaptain($request);
        if(!$item) {
            return $response;
        }

        return $this->autoMapping->map(OrderUpdateInvoiceByCaptainResponse::class, OrderUpdateInvoiceByCaptainResponse::class, $orderInvoice);
    }

    public function orderUpdateBillCalculatedByCaptain(orderUpdateBillCalculatedByCaptainRequest $request)
    {
        $response = "Not updated!!";

        $orderDetails = $this->orderDetailService->getOrderIdByOrderNumber($request->getOrderNumber());
        if($orderDetails){
            $request->setId($orderDetails[0]->orderID);

            $item = $this->orderManager->orderUpdateBillCalculatedByCaptain($request);

            $response = $this->autoMapping->map(OrderEntity::class, orderUpdateBillCalculatedByCaptainResponse::class, $item);
       }
        return $response;
    }

    public function countReport()
    {
        $item['countCompletedOrders'] = $this->orderManager->countCompletedOrders();
        $item['countOngoingOrders'] = $this->orderManager->countOngoingOrders();
        $item['countCaptains'] = $this->captainProfileService->countCaptains();
        $item['countClients'] = $this->clientProfileService->countClients();
        $item['countStores'] = $this->storeOwnerProfileService->countStores();
        $item['countProducts'] = $this->productService->countProducts();
        $item['countOrdersInToday'] = $this->countOrdersInToday();
        
        $response = $this->autoMapping->map("array", CountReportResponse::class, $item);
        
        return $response;
    }

    public function countOrdersInToday() { 
       $date = $this->dateFactoryService->returnTodayDate();

       return $this->orderManager->countOrdersInToday($date[0], $date[1]);
    }

    public function countOrdersInTodayForStoreOwner($storeOwnerProfileId)
    {
       $date = $this->dateFactoryService->returnTodayDate();

       return $this->orderManager->countOrdersInTodayForStoreOwner($date[0], $date[1], $storeOwnerProfileId);
    }

    public function getOrdersAndCountByStoreProfileId($storeProfileId)
    {
        $response = [];
        $item = [];

        $countOrders = $this->orderManager->countStoreOrders($storeProfileId);

        $orders = $this->orderManager->getOrdersByStoreProfileId($storeProfileId);
        
        $response['ordersCount'] = $countOrders;

        foreach ($orders as $order) {
            $order['amount'] = $order['deliveryCost'] + $order['orderCost'];
            
            $item[] = $this->autoMapping->map('array', OrdersByClientResponse::class, $order);
        }
        $response['orders'] = $item;

        return $response;
    }

    public function getOrdersAndCountByCaptainId($captainId): array
    {
        $response = [];

        $item = [];

        $countOrders = $this->orderManager->countCaptainOrders($captainId);

        $orders = $this->orderManager->getOrdersByCaptainId($captainId);
        
        $response['ordersCount'] = $countOrders;

        foreach ($orders as $order) {
            $order['amount'] = $order['deliveryCost'] + $order['orderCost'];
            
            $item[] = $this->autoMapping->map('array', OrdersByClientResponse::class, $order);
        }

        $response['orders'] = $item;

        return $response;
    }

    public function getStoreOrdersOngoingForStoreOwner($userID)
    {
        $response = [];

        $item = $this->userService->getStoreProfileId($userID);

        $store = $this->storeOwnerProfileService->storeIsActive($userID);
        if ($store->getStatus() == 'inactive') {
            $response = "store inactive";
        }

        if ($store->getStatus() == 'active') {
            $orders = $this->orderManager->getStoreOrdersOngoingForStoreOwner($item['id']);

            foreach ($orders as $order) {
                $response[] = $this->autoMapping->map('array', StoreOrdersOngoingResponse::class, $order);
            }
        }

        return $response;
    }

    public function getStoreOrdersInSpecificDate($fromDate, $toDate, $userID):?array
    {
        $response=[];

        $date = $this->dateFactoryService->returnSpecificDate($fromDate, $toDate);

        $item = $this->userService->getStoreProfileId($userID);

        $orders = $this->orderManager->getStoreOrdersInSpecificDate($date[0], $date[1], $item['id']);

        foreach ($orders as $order) {
            $response[] = $this->autoMapping->map('array', StoreOrdersOngoingResponse::class, $order);
        }

        return $response;
    }

    public function getStoreOrders($userID):?array
    {
        $response=[];

        $storeOwnerProfileID= $this->userService->getStoreProfileId($userID);

        $orders = $this->orderManager->getStoreOrders($storeOwnerProfileID['id']);

        foreach ($orders as $order) {
            $response[] = $this->autoMapping->map('array', StoreOrdersResponse::class, $order);
        }

        return $response;
    }

    public function countReportForStoreOwner($userID)
    {
        $storeOwnerProfileId = $this->userService->getStoreProfileId($userID);

        $item['countCompletedOrders'] = $this->orderManager->countCompletedOrdersForStoreOwner($storeOwnerProfileId['id']);

        $item['countOngoingOrders'] = $this->orderManager->countOngoingOrdersForStoreOwner($storeOwnerProfileId['id']);

        $item['countOrdersInToday'] = $this->countOrdersInTodayForStoreOwner($storeOwnerProfileId['id']);

        return $this->autoMapping->map("array", CountReportForStoreOwnerResponse::class, $item);
    }

    public function getOrderDetailsByOrderNumberForStore($orderNumber)
    {
        $response = [];

        $orderDetails = $this->orderDetailService->getOrderIdByOrderNumber($orderNumber);
        if($orderDetails) {
            $order = $this->orderManager->orderStatusByOrderId($orderDetails[0]->orderID);

            $rate = $this->ratingService->getAvgRating($order[0]['storeOwnerProfileID'],'store');

            $item['orderDetails'] = $orderDetails;
            $item['invoiceAmount'] = $order[0]['invoiceAmount'];
            $item['invoiceImage'] = $this->getImageParams($order[0]['invoiceImage'], $this->params . $order[0]['invoiceImage'], $this->params);
            $item['createdAt'] = $order[0]['createdAt'];
            $item['detail'] = $order[0]['detail'];
            $item['orderType'] = $order[0]['orderType'];
            $item['note'] = $order[0]['note'];
            $item['state'] = $order[0]['state'];
            $item['rating'] = $rate;

            $response = $this->autoMapping->map("array", OrderDetailsByOrderNumberForStoreResponse::class, $item);
        }

        return $response;
    }

    public function getImageParams($imageURL, $image, $baseURL): array
    {
        $item['imageURL'] = $imageURL;
        $item['image'] = $image;
        $item['baseURL'] = $baseURL;

        return $item;
    }

    public function getStorePendingOrders($userId): array
    {
        $response = [];

        $storeOwnerProfileID = $this->userService->getStoreProfileId($userId);

        $orders = $this->orderManager->getStorePendingOrders($storeOwnerProfileID);

        foreach ($orders as $order) {
            $response[] = $this->autoMapping->map('array', OrdersPendingForStoreResponse::class, $order);
        }

        return $response;
    }
}
