<?php

namespace App\Service;

use App\AutoMapping;
use App\Entity\UserEntity;
use App\Manager\StoreOwnerProfileManager;
use App\Request\storeOwnerProfileStatusUpdateByAdminRequest;
use App\Entity\StoreOwnerProfileEntity;
use App\Manager\UserManager;
use App\Request\StoreOwnerProfileCreateByAdminRequest;
use App\Request\StoreOwnerProfileUpdateRequest;
use App\Request\StoreOwnerUpdateByAdminRequest;
use App\Request\UserRegisterRequest;
use App\Response\CaptainIsActiveResponse;
use App\Response\StoreOwnerProfileCreateResponse;
use App\Response\StoreOwnerProfileResponse;
use App\Response\StoreOwnerByCategoryIdResponse;
use App\Response\StoresFilterByNameResponse;
use App\Response\UserRegisterResponse;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;


class StoreOwnerProfileService
{
    private $autoMapping;
    private $userManager;
    private $storeOwnerProfileManager;
    private $storeOwnerBranchService;
    private $params;
    private $roomIdHelperService;
    private $ratingService;

    public function __construct(AutoMapping $autoMapping, UserManager $userManager, RatingService $ratingService, StoreOwnerBranchService $storeOwnerBranchService,
                                ParameterBagInterface $params, RoomIdHelperService $roomIdHelperService, StoreOwnerProfileManager $storeOwnerProfileManager)
    {
        $this->autoMapping = $autoMapping;
        $this->userManager = $userManager;
        $this->storeOwnerProfileManager = $storeOwnerProfileManager;
        $this->ratingService = $ratingService;
        $this->storeOwnerBranchService = $storeOwnerBranchService;
        $this->roomIdHelperService = $roomIdHelperService;
        $this->params = $params->get('upload_base_url') . '/';
    }

    public function storeOwnerRegister(UserRegisterRequest $request)
    {
        $request->setRoomID($this->roomIdHelperService->roomIdGenerate());

        $userRegister = $this->storeOwnerProfileManager->storeOwnerRegister($request);

        if($userRegister instanceof UserEntity)
        {
            return $this->autoMapping->map(UserEntity::class, UserRegisterResponse::class, $userRegister);
        }
        elseif(is_array($userRegister))
        {
            $response = $this->autoMapping->map('array', UserRegisterResponse::class, $userRegister);

            $response->found = 1;

            return $response;
        }
    }

    public function storeOwnerProfileUpdate(StoreOwnerProfileUpdateRequest $request)
    {
        $item = $this->userManager->storeOwnerProfileUpdate($request);
        
        return $this->autoMapping->map(StoreOwnerProfileEntity::class, StoreOwnerProfileResponse::class, $item);
    }

    public function updateStoreOwnerByAdmin(StoreOwnerUpdateByAdminRequest $request)
    {
        $item = $this->userManager->updateStoreOwnerByAdmin($request);

        return $this->autoMapping->map(StoreOwnerProfileEntity::class, StoreOwnerProfileResponse::class, $item);
    }

    public function storeOwnerProfileStatusUpdateByAdmin(storeOwnerProfileStatusUpdateByAdminRequest $request)
    {
        $item = $this->userManager->storeOwnerProfileStatusUpdateByAdmin($request);

        return $this->autoMapping->map(StoreOwnerProfileEntity::class, StoreOwnerProfileResponse::class, $item);
    }

    public function getStoreOwnerProfileById($id)
    {
        $response = null;
        $item = $this->userManager->getStoreOwnerProfileByID($id);
        if($item){
            $item['imageURL'] = $item['image'];
            $item['image'] = $this->params.$item['image'];
            $item['baseURL'] = $this->params;
            $item['branches'] = $this->storeOwnerBranchService->getBranchesByStoreOwnerProfileID($item['id']);
            $item['rating'] = $this->ratingService->getAvgRating($id, 'store');

            $response = $this->autoMapping->map('array', StoreOwnerProfileCreateResponse::class, $item);
        }
        return $response;
    }

    public function getStoreOwnerProfile($userID)
    {
        $response = null;

        $storeOwnerProfileId = $this->userManager->getStoreProfileId($userID);

        $item = $this->userManager->getStoreOwnerProfileByID($storeOwnerProfileId);

        if($item)
        {
            $item['image'] = $this->getImageParams($item['image'], $this->params.$item['image'], $this->params);

            $item['branches'] = $this->storeOwnerBranchService->getBranchesByStoreOwnerProfileID($item['id']);

            $item['rating'] = $this->ratingService->getAvgRating($storeOwnerProfileId, 'store');

            $response = $this->autoMapping->map('array', StoreOwnerProfileCreateResponse::class, $item);
        }

        return $response;
    }

    public function getAllStoreOwners(): array
    {
        $response = [];
        $items = $this->userManager->getAllStoreOwners();
        foreach ($items as $item) {
            $item['imageURL'] = $item['image'];
            $item['image'] = $this->params.$item['image'];
            $item['baseURL'] = $this->params;
            $response[] = $this->autoMapping->map('array', StoreOwnerByCategoryIdResponse::class, $item);
            }        
        return $response;
    }

    public function getStoreOwnerByCategoryId($storeCategoryId):array
    {
        $response = [];
        $items = $this->userManager->getStoreOwnerByCategoryId($storeCategoryId);
        foreach ($items as $item) {
            $item['rating'] = $this->ratingService->getAvgRating($item['id'], 'store');
            $response[] = $this->autoMapping->map('array', StoreOwnerByCategoryIdResponse::class, $item);
            }        
        return $response;
    }

    public function getStoreOwnerByCategoryIdForAdmin($storeCategoryId):array
    {
        $response = [];
        $items = $this->userManager->getStoreOwnerByCategoryIdForAdmin($storeCategoryId);
        foreach ($items as $item) {
            $item['rating'] = $this->ratingService->getAvgRating($item['id'], 'store');
            $response[] = $this->autoMapping->map('array', StoreOwnerByCategoryIdResponse::class, $item);
            }
        return $response;
    }

    public function getStoreOwnerBest():array
    {
        $response = [];
        $items = $this->userManager->getStoreOwnerBest();
        foreach ($items as $item) {
            $response[] = $this->autoMapping->map('array', StoreOwnerByCategoryIdResponse::class, $item);
            }        
        return $response;
    }

    public function getStoreOwnerInactive():array
    {
        $response = [];
        $items = $this->userManager->getStoreOwnerInactive();
        foreach ($items as $item) {
            $item['imageURL'] = $item['image'];
            $item['image'] = $this->params.$item['image'];
            $item['baseURL'] = $this->params;
           $response[] = $this->autoMapping->map('array', StoreOwnerByCategoryIdResponse::class, $item);
            }
        return $response;
    }

    public function getStoreOwnerInactiveFilterByName($name):array
    {
        $response = [];
        $items = $this->userManager->getStoreOwnerInactiveFilterByName($name);
        foreach ($items as $item) {
            $item['imageURL'] = $item['image'];
            $item['image'] = $this->params.$item['image'];
            $item['baseURL'] = $this->params;
            //this for future
//              $item['image'] = $this->getImageParams($item['image'], $this->params.$item['image'], $this->params);
              $response[] = $this->autoMapping->map('array', StoreOwnerByCategoryIdResponse::class, $item);
            }
        return $response;
    }

    public function getImageParams($imageURL, $image, $baseURL):array
    {
        $item['imageURL'] = $imageURL;
        $item['image'] = $image;
        $item['baseURL'] = $baseURL;

        return $item;
    }

    public function createStoreOwnerProfileByAdmin(StoreOwnerProfileCreateByAdminRequest $request)
    {
        $userProfile = $this->userManager->createStoreOwnerProfileByAdmin($request);

        if ($userProfile instanceof StoreOwnerProfileEntity) {

            return $this->autoMapping->map(StoreOwnerProfileEntity::class,StoreOwnerProfileCreateResponse::class, $userProfile);
       }
    }

    public function countStores() {
        return $this->userManager->countStores();
    }

    public function getStoresByName($name) {
       return $this->userManager->getStoresByName($name);
    }

    public function getStoresFilterByName($name) {
        $items = $this->userManager->getStoresByName($name);
        foreach ($items as $item) {
            $item['image'] = $this->getImageParams($item['image'], $this->params.$item['image'], $this->params);
            $response[] = $this->autoMapping->map('array', StoresFilterByNameResponse::class, $item);
        }
        return $response;
    }

    public function storeIsActive($captainID)
    {
        $item = $this->userManager->storeIsActive($captainID);
        return $this->autoMapping->map('array',CaptainIsActiveResponse::class, $item);
    }
}
