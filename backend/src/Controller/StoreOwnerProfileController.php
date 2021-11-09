<?php

namespace App\Controller;

use App\AutoMapping;
use App\Request\storeOwnerProfileStatusUpdateByAdminRequest;
use App\Request\StoreOwnerProfileCreateRequest;
use App\Request\StoreOwnerProfileCreateByAdminRequest;
use App\Request\StoreOwnerProfileUpdateRequest;
use App\Request\StoreOwnerUpdateByAdminRequest;
use App\Request\UserRegisterRequest;
use App\Service\StoreOwnerProfileService;
use stdClass;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Nelmio\ApiDocBundle\Annotation\Security;
use OpenApi\Annotations as OA;

class StoreOwnerProfileController extends BaseController
{
    private $autoMapping;
    private $validator;
    private $storeOwnerProfileService;
   
    public function __construct(SerializerInterface $serializer, AutoMapping $autoMapping, ValidatorInterface $validator, StoreOwnerProfileService $storeOwnerProfileService)
    {
        parent::__construct($serializer);
        $this->autoMapping = $autoMapping;
        $this->validator = $validator;
        $this->storeOwnerProfileService = $storeOwnerProfileService;
        
    }

    /**
     * @Route("storeownerregister", name="storeOwnerRegister", methods={"POST"})
     * @param Request $request
     * @return JsonResponse
    */
    public function storeOwnerRegister(Request $request)
    {
        $data = json_decode($request->getContent(), true);
        
        $request = $this->autoMapping->map(stdClass::class, UserRegisterRequest::class, (object)$data);

        $violations = $this->validator->validate($request);

        if(\count($violations) > 0)
        {
            $violationsString = (string) $violations;

            return new JsonResponse($violationsString, Response::HTTP_OK);
        }

        $response = $this->storeOwnerProfileService->storeOwnerRegister($request);

        if($response->found == 1)
        {
            return $this->response($response, self::ERROR_USER_FOUND);
        }

        return $this->response($response, self::CREATE);
    }

    /**
     * @Route("createstoreowner", name="createStoreOwner", methods={"POST"})
     * @param Request $request
     * @return JsonResponse
     *
     * @OA\Tag(name="user_register")
     *
     * @OA\RequestBody(
     *      description="Create new store owner",
     *      @OA\JsonContent(
     *          @OA\Property(type="string", property="userName"),
     *          @OA\Property(type="string", property="userID"),
     *          @OA\Property(type="string", property="password"),
     *      )
     * )
     *
     * @OA\Response(
     *      response=200,
     *      description="Returns the new store owner's role and the creation date",
     *      @OA\JsonContent(
     *          @OA\Property(type="string", property="status_code"),
     *          @OA\Property(type="string", property="msg"),
     *          @OA\Property(type="object", property="Data",
     *                  @OA\Property(type="array", property="roles",
     *                      @OA\Items(example="user")),
     *                  @OA\Property(type="object", property="createdAt")
     *          )
     *      )
     * )
     *
     */
    public function storeOwnerRegisterByTester(Request $request)
    {
        $data = json_decode($request->getContent(), true);

        $request = $this->autoMapping->map(stdClass::class, UserRegisterRequest::class, (object)$data);

        $violations = $this->validator->validate($request);

        if(\count($violations) > 0)
        {
            $violationsString = (string) $violations;

            return new JsonResponse($violationsString, Response::HTTP_OK);
        }

        $response = $this->storeOwnerProfileService->storeOwnerRegister($request);

        return new JsonResponse('correct_response', 200);
    }

    /**
     * @Route("/storeowner", name="storeOwnerProfileUpdate", methods={"PUT"})
     * @IsGranted("ROLE_OWNER")
     * @param Request $request
     * @return JsonResponse
     * *
     * @OA\Tag(name="Store Owner Profile")
     *
     * @OA\RequestBody(
     *      description="Update Store Owner Profile",
     *      @OA\JsonContent(
     *          @OA\Property(type="string", property="storeOwnerName"),
     *          @OA\Property(type="string", property="image"),
     *          @OA\Property(type="string", property="phone"),
     *          @OA\Property(type="integer", property="storeCategoryId"),
     *          @OA\Property(type="boolean", property="privateOrders"),
     *          @OA\Property(type="boolean", property="hasProducts"),
     *          @OA\Property(type="string", property="branchName"),
     *          @OA\Property(type="string", property="openingTime"),
     *          @OA\Property(type="string", property="closingTime"),
     *          @OA\Property(type="object", property="location",
     *              @OA\Property(type="string", property="lat"),
     *              @OA\Property(type="string", property="lon")
     *
     *          )
     *      )
     * )
     *
     * @OA\Response(
     *      response=200,
     *      description="Returns the store owner's profile",
     *      @OA\JsonContent(
     *          @OA\Property(type="string", property="status_code"),
     *          @OA\Property(type="string", property="msg"),
     *          @OA\Property(type="object", property="Data",
     *              @OA\Property(type="string", property="storeOwnerName"),
     *              @OA\Property(type="string", property="image"),
     *              @OA\Property(type="string", property="phone"),
     *              @OA\Property(type="integer", property="storeCategoryId"),
     *              @OA\Property(type="boolean", property="privateOrders"),
     *              @OA\Property(type="boolean", property="hasProducts"),
     *              @OA\Property(type="string", property="branchName"),
     *              @OA\Property(type="string", property="openingTime"),
     *              @OA\Property(type="string", property="closingTime"),
     *              @OA\Property(type="object", property="location",
     *                   @OA\Property(type="string", property="lat"),
     *                   @OA\Property(type="string", property="lon")
     *
     *          )
     *      )
     *   )
     * )
     */
    public function storeOwnerProfileUpdate(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(), true);

        $request = $this->autoMapping->map(stdClass::class, StoreOwnerProfileUpdateRequest::class, (object)$data);
        $request->setUserID($this->getUserId());
        $response = $this->storeOwnerProfileService->storeOwnerProfileUpdate($request);
        return $this->response($response, self::UPDATE);
    }

    /**
     * @Route("/storeownerprofileupdatebyadmin", name="storeOwnerProfileUpdateByAdmin", methods={"PUT"})
     * @IsGranted("ROLE_ADMIN")
     * @param Request $request
     * @return JsonResponse
     */
    public function updateStoreOwnerByAdmin(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(), true);

        $request = $this->autoMapping->map(stdClass::class, StoreOwnerUpdateByAdminRequest::class, (object)$data);

        $response = $this->storeOwnerProfileService->updateStoreOwnerByAdmin($request);

        return $this->response($response, self::UPDATE);
    }
    /**
     * @Route("/storeownerprofilestatusupdatebyadmin", name="storeOwnerProfileStatusUpdateByAdmin", methods={"PUT"})
     * @IsGranted("ROLE_ADMIN")
     * @param Request $request
     * @return JsonResponse
     */
    public function storeOwnerProfileStatusUpdateByAdmin(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(), true);

        $request = $this->autoMapping->map(stdClass::class, storeOwnerProfileStatusUpdateByAdminRequest::class, (object)$data);

        $response = $this->storeOwnerProfileService->storeOwnerProfileStatusUpdateByAdmin($request);

        return $this->response($response, self::UPDATE);
    }

    /**
     * @Route("/storeownerprofilebyid/{id}", name="getStoreOwnerProfileByID",methods={"GET"})
     * @param $id
     * @return JsonResponse
     */
    public function getStoreOwnerProfileByID($id): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerProfileByID($id);

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("storeownerprofilebyid", name="getStoreOwnerProfile", methods={"GET"})
     * @IsGranted("ROLE_OWNER")
     * @return JsonResponse
     * *
     * @OA\Tag(name="Store Owner Profile")
     *
     * @OA\Parameter(
     *      name="token",
     *      in="header",
     *      description="token to be passed as a header",
     *      required=true
     * )
     *
     * @OA\Response(
     *      response=200,
     *      description="Returns the signed-in store owner's profile",
     *      @OA\JsonContent(
     *          @OA\Property(type="string", property="status_code"),
     *          @OA\Property(type="string", property="msg"),
     *          @OA\Property(type="object", property="Data",
     *              @OA\Property(type="integer", property="id"),
     *              @OA\Property(type="string", property="storeOwnerName"),
     *              @OA\Property(type="string", property="image"),
     *              @OA\Property(type="string", property="phone"),
     *              @OA\Property(type="string", property="branch"),
     *              @OA\Property(type="string", property="free"),
     *              @OA\Property(type="array", property="branches",
     *                  @OA\Items(
     *                      @OA\Property(type="integer", property="id"),
     *                      @OA\Property(type="integer", property="storeOwnerProfileID"),
     *                      @OA\Property(type="object", property="geoLocation",
     *                          @OA\Property(type="string", property="lat"),
     *                          @OA\Property(type="string", property="lon")
     *
     *                      ),
     *                      @OA\Property(type="string", property="city"),
     *                      @OA\Property(type="string", property="branchName"),
     *                      @OA\Property(type="string", property="storeOwnerName"),
     *                      @OA\Property(type="string", property="free"),
     *                      @OA\Property(type="boolean", property="isActive")
     *                  )
     *              ),
     *              @OA\Property(type="string", property="city"),
     *              @OA\Property(type="string", property="imageURL"),
     *              @OA\Property(type="string", property="baseURL"),
     *              @OA\Property(type="number", property="deliveryCost"),
     *              @OA\Property(type="number", property="rating"),
     *              @OA\Property(type="integer", property="storeCategoryId"),
     *              @OA\Property(type="string", property="storeCategoryName"),
     *              @OA\Property(type="boolean", property="privateOrders"),
     *              @OA\Property(type="boolean", property="hasProducts"),
     *              @OA\Property(type="string", property="branchName"),
     *              @OA\Property(type="object", property="openingTime"),
     *              @OA\Property(type="object", property="closingTime"),
     *              @OA\Property(type="string", property="status")
     *      )
     *   )
     * )
     *
     * @Security(name="Bearer")
     */
    public function getStoreOwnerProfile()
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerProfile($this->getUserId());

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("/storeOwners", name="getAllStoreOwners",methods={"GET"})
     * @return JsonResponse
     */
    public function getAllStoreOwners(): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getAllStoreOwners();

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("/storeownerbycategoryid/{storeCategoryId}", name="getStoreOwnerByCategoryId",methods={"GET"})
     * @param $storeCategoryId
     * @return JsonResponse
     */
    public function getStoreOwnerByCategoryId($storeCategoryId): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerByCategoryId($storeCategoryId);

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("/storeownerbycategoryidforadmin/{storeCategoryId}", name="getStoreOwnerByCategoryIdForAdmin",methods={"GET"})
     * @IsGranted("ROLE_ADMIN")
     * @param $storeCategoryId
     * @return JsonResponse
     */
    public function getStoreOwnerByCategoryIdForAdmin($storeCategoryId): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerByCategoryIdForAdmin($storeCategoryId);

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("/storeOwnerBest", name="GetStoreOwnerBest",methods={"GET"})
     * @return JsonResponse
     */
    public function getStoreOwnerBest(): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerBest();

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("/storesinactive", name="GetStoresInactive", methods={"GET"})
     * @IsGranted("ROLE_ADMIN")
     * @return JsonResponse
     */
    public function getStoreOwnerInactive(): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerInactive();

        return $this->response($response, self::FETCH);
    }

    /**
     * @Route("/storesinactivefilter/{name}", name="GetStoresInactiveFilterByName", methods={"GET"})
     * @IsGranted("ROLE_ADMIN")
     * @return JsonResponse
     */
    public function getStoreOwnerInactiveFilterByName($name): JsonResponse
    {
        $response = $this->storeOwnerProfileService->getStoreOwnerInactiveFilterByName($name);

        return $this->response($response, self::FETCH);
    }

     /**
     * @Route("/storeownercreatbyadmin", name="CreateStoreOwnerProfileByAdmin", methods={"POST"})
     * @IsGranted("ROLE_ADMIN")
     * @param Request $request
     * @return JsonResponse
     */
    public function createStoreOwnerProfileByAdmin(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(), true);

        $request = $this->autoMapping->map(stdClass::class, StoreOwnerProfileCreateByAdminRequest::class, (object)$data);

        $violations = $this->validator->validate($request);
        if (\count($violations) > 0) {
            $violationsString = (string) $violations;

            return new JsonResponse($violationsString, Response::HTTP_OK);
        }

        $response = $this->storeOwnerProfileService->createStoreOwnerProfileByAdmin($request);

        return $this->response($response, self::CREATE);
    }

    /**
     * @Route("/storeFilter/{name}", name="getStoresByName", methods={"GET"})
     * @IsGranted("ROLE_ADMIN")
     * @return JsonResponse
     */
    public function getStoresFilterByName($name): JsonResponse
    {
        $result = $this->storeOwnerProfileService->getStoresFilterByName($name);

        return $this->response($result, self::FETCH);
    }


}
