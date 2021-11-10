<?php

namespace App\Manager;

use App\AutoMapping;
use App\Entity\ProductEntity;
use App\Repository\ProductEntityRepository;
use App\Request\ProductCreateRequest;
use App\Request\ProductUpdateByStoreOwnerRequest;
use App\Request\ProductUpdateRequest;
use Doctrine\ORM\EntityManagerInterface;


class ProductManager
{
    private $autoMapping;
    private $entityManager;
    private $productEntityRepository;

    public function __construct(AutoMapping $autoMapping, EntityManagerInterface $entityManager, ProductEntityRepository $productEntityRepository)
    {
        $this->autoMapping = $autoMapping;
        $this->entityManager = $entityManager;
        $this->productEntityRepository = $productEntityRepository;
    }

    public function createProductByAdmin(ProductCreateRequest $request)
    {
        $entity = $this->autoMapping->map(ProductCreateRequest::class, ProductEntity::class, $request);

        $this->entityManager->persist($entity);
        $this->entityManager->flush();
        $this->entityManager->clear();

        return $entity;
    }

    public function getProductsByProductCategoryId($storeProductCategoryID)
    {
        return $this->productEntityRepository->getProductsByProductCategoryId($storeProductCategoryID);
    }

    public function getProductsByCategoryIdAndStoreOwnerProfileId($storeProductCategoryID, $storeOwnerProfileId)
    {
        return $this->productEntityRepository->getProductsByCategoryIdAndStoreOwnerProfileId($storeProductCategoryID, $storeOwnerProfileId);
    }

    public function getProducts()
    {
        return $this->productEntityRepository->getProducts();
    }

    public function getProductByIdWithFullInfo($id)
    {
        return $this->productEntityRepository->getProductByIdWithFullInfo($id);
    }

    public function getProductsTopWanted()
    {
        return $this->productEntityRepository->getProductsTopWanted();
    }

    public function productsTopWantedOfSpecificStoreOwner($storeOwnerProfileId)
    {
        return $this->productEntityRepository->productsTopWantedOfSpecificStoreOwner($storeOwnerProfileId);
    }

    public function getStoreProductsByProfileId($storeOwnerProfileId)
    {
        return $this->productEntityRepository->getStoreProductsByProfileId($storeOwnerProfileId);
    }

    public function getStoreProducts($storeOwnerProfileId)
    {
        return $this->productEntityRepository->getStoreProducts($storeOwnerProfileId);
    }

    public function getProductsByStoreProductCategoryID($storeProductCategoryID)
    {
        return $this->productEntityRepository->getProductsByStoreProductCategoryID($storeProductCategoryID);
    }

    public function getProductsByStoreProfileIDAndStoreProductCategoryID($storeOwnerProfileId, $storeProductCategoryID)
    {
        return $this->productEntityRepository->getProductsByStoreProfileIDAndStoreProductCategoryID($storeOwnerProfileId, $storeProductCategoryID);
    }

    public function updateProductByAdmin(ProductUpdateRequest $request)
    {
        $entity = $this->productEntityRepository->find($request->getId());

        if (!$entity) {
            return null;
        }
        $entity = $this->autoMapping->mapToObject(ProductUpdateRequest::class, ProductEntity::class, $request, $entity);

        $this->entityManager->flush();

        return $entity;
    }

    public function countProducts()
    {
        return $this->productEntityRepository->countProducts();
    }

    public function getProductsByName($name)
    {
        return $this->productEntityRepository->getProductsByName($name);
    }

    public function createProductByStore(ProductCreateRequest $request)
    {
        $entity = $this->autoMapping->map(ProductCreateRequest::class, ProductEntity::class, $request);

        $this->entityManager->persist($entity);
        $this->entityManager->flush();
        $this->entityManager->clear();

        return $entity;
    }

    public function updateProductByStore(ProductUpdateByStoreOwnerRequest $request)
    {
        $entity = $this->productEntityRepository->find($request->getId());

        if (!$entity) {
            return null;
        }
        $entity = $this->autoMapping->mapToObject(ProductUpdateByStoreOwnerRequest::class, ProductEntity::class, $request, $entity);

        $this->entityManager->flush();

        return $entity;
    }

    public function getStoreProductCategoryIdLevel2()
    {
        return $this->productEntityRepository->getStoreProductCategoryIdLevel2();
    }

    public function getStoreProductCategoryIdOfLevel1($storeCategoryID, $StoreProductCategoryId)
    {
        return $this->productEntityRepository->getStoreProductCategoryIdOfLevel1($storeCategoryID, $StoreProductCategoryId);
    }
}
