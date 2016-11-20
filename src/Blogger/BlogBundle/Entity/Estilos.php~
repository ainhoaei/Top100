<?php

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;

/**
 * Blogger\BlogBundle\Entity\Estilos
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Blogger\BlogBundle\Entity\EstilosRepository")
 * @ORM\HasLifecycleCallbacks()
 */

class Estilos
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="text")
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="descrip", type="text")
     */
    private $descrip;

    /**
     * @ORM\ManyToMany(targetEntity="Canciones", inversedBy="estilos")
     * @ORM\JoinTable(name="estilos_canciones")
     */
    private $canciones;

    public function __construct()
    {
        $this->canciones = new ArrayCollection();

    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Estilos
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set descrip
     *
     * @param string $descrip
     * @return Estilos
     */
    public function setDescrip($descrip)
    {
        $this->descrip = $descrip;

        return $this;
    }

    /**
     * Get descrip
     *
     * @return string 
     */
    public function getDescrip()
    {
        return $this->descrip;
    }

    /**
     * Add canciones
     *
     * @param \Blogger\BlogBundle\Entity\Canciones $canciones
     * @return Estilos
     */
    public function addCancione(\Blogger\BlogBundle\Entity\Canciones $canciones)
    {
        $this->canciones[] = $canciones;

        return $this;
    }

    /**
     * Remove canciones
     *
     * @param \Blogger\BlogBundle\Entity\Canciones $canciones
     */
    public function removeCancione(\Blogger\BlogBundle\Entity\Canciones $canciones)
    {
        $this->canciones->removeElement($canciones);
    }

    /**
     * Get canciones
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCanciones()
    {
        return $this->canciones;
    }
}
