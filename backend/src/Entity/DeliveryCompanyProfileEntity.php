<?php

namespace App\Entity;

use App\Repository\DeliveryCompanyProfileEntityRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=DeliveryCompanyProfileEntityRepository::class)
 */
class DeliveryCompanyProfileEntity
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $phone;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $phone2;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $whatsapp;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $fax;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $bank;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $stc;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $nationalAddress;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $recordNumber;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $taxNumber;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $QRCode;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPhone(): ?string
    {
        return $this->phone;
    }

    public function setPhone(string $phone): self
    {
        $this->phone = $phone;

        return $this;
    }

    public function getPhone2(): ?string
    {
        return $this->phone2;
    }

    public function setPhone2(?string $phone2): self
    {
        $this->phone2 = $phone2;

        return $this;
    }

    public function getWhatsapp(): ?string
    {
        return $this->whatsapp;
    }

    public function setWhatsapp(?string $whatsapp): self
    {
        $this->whatsapp = $whatsapp;

        return $this;
    }

    public function getFax(): ?string
    {
        return $this->fax;
    }

    public function setFax(?string $fax): self
    {
        $this->fax = $fax;

        return $this;
    }

    public function getBank(): ?string
    {
        return $this->bank;
    }

    public function setBank(?string $bank): self
    {
        $this->bank = $bank;

        return $this;
    }

    public function getStc(): ?string
    {
        return $this->stc;
    }

    public function setStc(?string $stc): self
    {
        $this->stc = $stc;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getNationalAddress(): ?string
    {
        return $this->nationalAddress;
    }

    public function setNationalAddress(string $nationalAddress): self
    {
        $this->nationalAddress = $nationalAddress;

        return $this;
    }
    public function getRecordNumber(): ?string
    {
        return $this->recordNumber;
    }

    public function setRecordNumber(string $recordNumber): self
    {
        $this->recordNumber = $recordNumber;

        return $this;
    }

    public function getTaxNumber(): ?string
    {
        return $this->taxNumber;
    }

    public function setTaxNumber(string $taxNumber): self
    {
        $this->taxNumber = $taxNumber;

        return $this;
    }

    public function getQRCode(): ?string
    {
        return $this->QRCode;
    }

    public function setQRCode(?string $QRCode): self
    {
        $this->QRCode = $QRCode;

        return $this;
    }
}
