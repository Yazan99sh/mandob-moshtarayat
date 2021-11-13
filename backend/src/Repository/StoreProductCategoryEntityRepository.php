<?php

namespace App\Repository;

use App\Entity\ProductEntity;
use App\Entity\StoreProductCategoryEntity;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Query\Expr\Join;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method StoreProductCategoryEntity|null find($id, $lockMode = null, $lockVersion = null)
 * @method StoreProductCategoryEntity|null findOneBy(array $criteria, array $orderBy = null)
 * @method StoreProductCategoryEntity[]    findAll()
 * @method StoreProductCategoryEntity[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class StoreProductCategoryEntityRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, StoreProductCategoryEntity::class);
    }

    public function getStoreProductsCategoryForStoreSpecific($storeOwnerProfileId)
    {
        return $this->createQueryBuilder('storeProductCategory')
            ->select('storeProductCategory.id', 'storeProductCategory.productCategoryName', 'storeProductCategory.storeOwnerProfileId', 'storeProductCategory.productCategoryImage')

            ->andWhere('storeProductCategory.storeOwnerProfileId = :storeOwnerProfileId')
            
            ->setParameter('storeOwnerProfileId', $storeOwnerProfileId)
            ->getQuery()
            ->getResult()
        ;
    }

    public function getSubCategoriesByStoreCategoryID($storeCategoryID)
    {
        return $this->createQueryBuilder('storeProductCategory')
            ->select('storeProductCategory.id', 'storeProductCategory.productCategoryName', 'storeProductCategory.isLevel1', 'storeProductCategory.productCategoryImage')

            ->andWhere('storeProductCategory.storeCategoryID = :storeCategoryID')
            ->setParameter('storeCategoryID', $storeCategoryID)

            ->andWhere('storeProductCategory.isLevel1 = :isLevel1')
            ->setParameter('isLevel1', 1)

            ->getQuery()
            ->getResult();
    }

    public function getStoreProductsCategoryLevelTwoByStoreProductCategoryID($storeProductCategoryID)
    {
        return $this->createQueryBuilder('storeProductCategory')
            ->select('storeProductCategory.id', 'storeProductCategory.productCategoryName', 'storeProductCategory.isLevel1', 'storeProductCategory.productCategoryImage')

            ->where('storeProductCategory.storeProductCategoryID = :storeProductCategoryID')
            ->andWhere('storeProductCategory.isLevel2 = :isLevel2')
            ->setParameter('isLevel2', true)
            ->setParameter('storeProductCategoryID', $storeProductCategoryID)

            ->getQuery()
//            ->getResult()
            ->getArrayResult()
        ;
    }

    public function getStoreProductsCategoryLevelTwoByStoreOwnerProfile($storeOwnerProfileID)
    {
        return $this->createQueryBuilder('storeProductCategory')
            ->select('storeProductCategory.id', 'storeProductCategory.productCategoryName', 'storeProductCategory.isLevel2', 'storeProductCategory.productCategoryImage')

            ->leftJoin(ProductEntity::class, 'ProductEntity', Join::WITH, 'ProductEntity.storeOwnerProfileID = :storeOwnerProfileID')

            ->andWhere('ProductEntity.storeOwnerProfileID = :storeOwnerProfileID')
            ->andWhere('storeProductCategory.isLevel2 = :isLevel2')

            ->setParameter('storeOwnerProfileID', $storeOwnerProfileID)
            ->setParameter('isLevel2', 1)
            ->groupBy('storeProductCategory.id')
            ->getQuery()
            ->getResult()
            ;
    }
}
