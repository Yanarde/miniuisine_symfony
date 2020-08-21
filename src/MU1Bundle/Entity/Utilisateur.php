<?php

namespace MU1Bundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * Utilisateur
 *
 * @ORM\Table(name="utilisateur")
 * @ORM\Entity(repositoryClass="MU1Bundle\Repository\UtilisateurRepository")
 */
class Utilisateur extends BaseUser
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var bool
     *
     * @ORM\Column(name="zone4", type="boolean")
     */
    private $zone4;

    /**
     * @var bool
     *
     * @ORM\Column(name="zone5", type="boolean")
     */
    private $zone5;

    /**
     * @var bool
     *
     * @ORM\Column(name="zone6", type="boolean")
     */
    private $zone6;

    public function __construct()
    {
        parent::__construct();
        $this->zone4 = false;
        $this->zone5 = false;
        $this->zone6 = false;
        $this->enabled = true;

    }

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set zone4
     *
     * @param boolean $zone4
     *
     * @return Utilisateur
     */
    public function setZone4($zone4)
    {
        $this->zone4 = $zone4;

        return $this;
    }

    /**
     * Get zone4
     *
     * @return bool
     */
    public function getZone4()
    {
        return $this->zone4;
    }

    /**
     * Set zone5
     *
     * @param boolean $zone5
     *
     * @return Utilisateur
     */
    public function setZone5($zone5)
    {
        $this->zone5 = $zone5;

        return $this;
    }

    /**
     * Get zone5
     *
     * @return bool
     */
    public function getZone5()
    {
        return $this->zone5;
    }

    /**
     * Set zone6
     *
     * @param boolean $zone6
     *
     * @return Utilisateur
     */
    public function setZone6($zone6)
    {
        $this->zone6 = $zone6;

        return $this;
    }

    /**
     * Get zone6
     *
     * @return bool
     */
    public function getZone6()
    {
        return $this->zone6;
    }
}

