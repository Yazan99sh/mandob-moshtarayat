<?php

namespace App\Controller;

use App\Service\OrderLogService;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\SerializerInterface;
use Nelmio\ApiDocBundle\Annotation\Security;
use OpenApi\Annotations as OA;

class OrderLogController extends BaseController
{
    private $orderLogService;

    public function __construct(SerializerInterface $serializer, OrderLogService $orderLogService)
    {
        parent::__construct($serializer);
        $this->orderLogService = $orderLogService;
    } 
    
    /**
      * @Route("/orderlog/{orderNumber}", name="GetLogByOrderNumber", methods={"GET"})
      * @param Request $request
      * @return JsonResponse
      */
      public function getOrderLogByOrderNumber($orderNumber)
      {
          $result = $this->orderLogService->getOrderLogByOrderNumber($orderNumber);
  
          return $this->response($result, self::FETCH);
      }
      
    /**
     * Get order logs timeLine.
      * @Route("/orderLogsTimeLine/{orderNumber}", name="getOrderLogsTimeLine", methods={"GET"})
      * @param Request $request
      * @return JsonResponse
     * *
     * @OA\Tag(name="Logs")
     *
     * @OA\Response(
     *      response=200,
     *      description="Returns Order Logs Time Line",
     *      @OA\JsonContent(
     *          @OA\Property(type="string", property="status_code"),
     *          @OA\Property(type="string", property="msg"),
     *          @OA\Property(type="object", property="Data",
     *
     *                  @OA\Property(type="object", property="orderStatus",
     *                      @OA\Property(type="string", property="completionTime"),
     *                      @OA\Property(type="string", property="currentStage"),
     *                      @OA\Property(type="string", property="deliveredTime"),
     *                  ),
     *              @OA\Property(type="array", property="logs",
     *                  @OA\Items(
     *              @OA\Property(type="integer", property="id"),
     *              @OA\Property(type="string", property="state"),
     *              @OA\Property(type="object", property="createdAt")
     *
     *          )
     *              )
     *          )
     *      )
     * )
     *
     */
      public function getOrderLogsTimeLine($orderNumber)
      {
          $result = $this->orderLogService->getOrderLogsTimeLine($orderNumber);
  
          return $this->response($result, self::FETCH);
      }

    /**
      * @Route("/orderLogsByCaptainId/{captainId}", name="getOrderLogsByCaptainId", methods={"GET"})
      * @param Request $request
      * @return JsonResponse
      */
      public function orderLogsByCaptainId($captainId)
      {
          $result = $this->orderLogService->orderLogsByCaptainId($captainId);
  
          return $this->response($result, self::FETCH);
      }
    /**
      * @Route("/orderLogsByStoreProfileId/{storeProfileId}", name="getOrderLogsByStoreProfileId", methods={"GET"})
      * @param Request $request
      * @return JsonResponse
      */
      public function orderLogsByStoreProfileId($storeProfileId)
      {
          $result = $this->orderLogService->orderLogsByStoreProfileId($storeProfileId);
  
          return $this->response($result, self::FETCH);
      }

     /**
      * @Route("/orderLogs", name="GetLogsByUserId", methods={"GET"})
      * @param Request $request
      * @return JsonResponse
      */
    public function getOrderLogsByUserID()
    {    
        if( $this->isGranted('ROLE_CLIENT') ) {
            $result = $this->orderLogService->getClientOrderLogs($this->getUserId());
        }

        if($this->isGranted('ROLE_CAPTAIN')) {
            $result = $this->orderLogService->getCaptainOrderLogs($this->getUserId());
        }

        return $this->response($result, self::FETCH);
    }

}
