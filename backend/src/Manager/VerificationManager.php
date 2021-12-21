<?php

namespace App\Manager;

use App\AutoMapping;
use App\Entity\VerificationEntity;
use App\Repository\VerificationEntityRepository;
use App\Request\VerificationCreateRequest;
use App\Request\VerifyCodeRequest;
use Doctrine\ORM\EntityManagerInterface;

class VerificationManager
{
    private $autoMapping;
    private $entityManager;
    private $verificationEntityRepository;

    public function __construct(AutoMapping $autoMapping, EntityManagerInterface $entityManager, VerificationEntityRepository $verificationEntityRepository)
    {
        $this->autoMapping = $autoMapping;
        $this->entityManager = $entityManager;
        $this->verificationEntityRepository = $verificationEntityRepository;
    }

    public function createVerificationCode(VerificationCreateRequest $request)
    {
        $request->setCode($this->generateVerificationCode());

        $verificationEntity = $this->autoMapping->map(VerificationCreateRequest::class, VerificationEntity::class, $request);

        $this->entityManager->persist($verificationEntity);
        $this->entityManager->flush();

        return $verificationEntity;
    }

    public function checkVerificationCode(VerifyCodeRequest $request)
    {
        $response = [];

        $result = $this->verificationEntityRepository->getByUserIdAndCode($request->getUserID(), $request->getCode());

        if (!$result)
        {
            $response['resultMessage'] = 'incorrectEnteredData';

            return $response;
        }
        else
        {
            $interval = date_diff(new \DateTime('now') , $result['createdAt']);

            $different_days = $interval->format('%d');

            if ($different_days == 0)
            {
                $different_hours = $interval->format('%h');

                if ($different_hours <= 1)
                {
                    $response['resultMessage'] = 'activated';

                    return $response;
                }
            }
            else
            {
                $response['resultMessage'] = 'codeDateIsNotValid';

                return $response;
            }
        }
    }

    public function getVerificationCodeByCode($verificationCode)
    {
        return $this->verificationEntityRepository->getVerificationCodeByCode($verificationCode);
    }

    public function generateVerificationCode()
    {
        do
        {
            // keep generating verification code while it is exist
            $found = false;
            $verificationCode = "";
            $result = "";

            for ($i = 0; $i < 7; $i++)
            {
                $verificationCode .= random_int(0, 9);
            }

            // Check if it is exist
            $result = $this->getVerificationCodeByCode($verificationCode);

            if($result)
            {
                $found = true;
            }

        }
        while($found);

        return $verificationCode;
    }

}