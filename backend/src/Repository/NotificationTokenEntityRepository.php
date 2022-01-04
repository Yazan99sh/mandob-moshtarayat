<?php

namespace App\Repository;

use App\Entity\ClientProfileEntity;
use App\Entity\NotificationTokenEntity;
use App\Entity\StoreOwnerProfileEntity;
use App\Entity\SupportEntity;
use App\Entity\CaptainProfileEntity;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\Query\Expr\Join;
/**
 * @method NotificationTokenEntity|null find($id, $lockMode = null, $lockVersion = null)
 * @method NotificationTokenEntity|null findOneBy(array $criteria, array $orderBy = null)
 * @method NotificationTokenEntity[]    findAll()
 * @method NotificationTokenEntity[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class NotificationTokenEntityRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, NotificationTokenEntity::class);
    }
    
    public function getByReprotRoomID($roomID)
    {
        return $this->createQueryBuilder('NotificationTokenEntity')

        ->addSelect('reportEntity.userId')

        ->leftJoin(SupportEntity::class, 'reportEntity', Join::WITH, 'reportEntity.roomID = :roomID')

        ->andWhere("reportEntity.roomID = :roomID ")

        ->setParameter('roomID', $roomID)

        ->getQuery()
        ->getResult();
    }
    
    public function getCaptainRoomID($roomID)
    {
        return $this->createQueryBuilder('NotificationTokenEntity')

        ->select('captainProfileEntity.captainID')

        ->leftJoin(CaptainProfileEntity::class, 'captainProfileEntity', Join::WITH, 'captainProfileEntity.roomID = :roomID')

        ->andWhere("captainProfileEntity.roomID = :roomID ")

        ->setParameter('roomID', $roomID)

        ->groupBy('captainProfileEntity.captainID')

        ->getQuery()

        ->getOneOrNullResult();
    }

    public function getStoreRoomID($roomID)
    {
        return $this->createQueryBuilder('NotificationTokenEntity')

        ->select('storeOwnerProfileEntity.storeOwnerID')

        ->leftJoin(StoreOwnerProfileEntity::class, 'storeOwnerProfileEntity', Join::WITH, 'storeOwnerProfileEntity.roomID = :roomID')

        ->andWhere("storeOwnerProfileEntity.roomID = :roomID ")

        ->setParameter('roomID', $roomID)

        ->groupBy('storeOwnerProfileEntity.storeOwnerID')

        ->getQuery()
        ->getOneOrNullResult();
    }

    public function getClientRoomID($roomID)
    {
        return $this->createQueryBuilder('NotificationTokenEntity')

        ->select('clientProfileEntity.clientID')

        ->leftJoin(ClientProfileEntity::class, 'clientProfileEntity', Join::WITH, 'clientProfileEntity.roomID = :roomID')

        ->andWhere("clientProfileEntity.roomID = :roomID ")

        ->setParameter('roomID', $roomID)

        ->groupBy('clientProfileEntity.clientID')

        ->getQuery()
        ->getOneOrNullResult();
    }

    public function getTokens()
    {
        return $this->createQueryBuilder('NotificationTokenEntity')
            ->select('NotificationTokenEntity.token')

            ->leftJoin(CaptainProfileEntity::class, 'captainProfileEntity', Join::WITH, 'captainProfileEntity.captainID = NotificationTokenEntity.userID')

            ->andWhere("captainProfileEntity.status = :status ")

            ->setParameter('status', 'active')

            ->getQuery()
            ->getResult();
    }

    public function getStoreTokens($storeIDs)
    {
        return $this->createQueryBuilder('NotificationTokenEntity')
            ->select('NotificationTokenEntity.token')

            ->andWhere("NotificationTokenEntity.userID IN (:storeIDs)")

            ->setParameter('storeIDs', $storeIDs)

            ->getQuery()
            ->getResult();
    }
}