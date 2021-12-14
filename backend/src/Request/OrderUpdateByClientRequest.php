<?php

namespace App\Request;

class OrderUpdateByClientRequest
{
    private $orderNumber;
    
    private $products;

    private $clientID;

     /**
     * Get the value of orderNumber
     */ 
    public function getOrderNumber()
    {
        return $this->orderNumber;
    }

    /**
     * Set the value of orderNumber
     *
     * @return  self
     */ 
    public function setOrderNumber($orderNumber)
    {
        $this->orderNumber = $orderNumber;

        return $this;
    }

    /**
     * Get the value of products
     */ 
    public function getProducts()
    {
        return $this->products;
    }

    /**
     * Set the value of products
     *
     * @return  self
     */ 
    public function setProducts($products)
    {
        $this->products = $products;

        return $this;
    }

    /**
     * Get the value of clientID
     */
    public function GetClientID()
    {
        return $this->clientID;
    }

    /**
     * Set the value of clientID
     *
     * @return  self
     */
    public function setClientID($clientID)
    {
        $this->clientID = $clientID;

        return $this;
    }
}
