<?php

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Blogger\BlogBundle\Entity\Interprete
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Blogger\BlogBundle\Entity\InterpreteRepository")
 * @ORM\HasLifecycleCallbacks()
 */

class Interprete
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
     * @ORM\Column(name="descripcion", type="text")
     */
    private $descripcion;

    /**
     * @var int
     *
     * @ORM\Column(name="num_miembros", type="integer")
     */
    private $num_miembros;

    /**
     * @var string
     *
     * @ORM\Column(name="nacionalidad", type="text")
     */
    private $nacionalidad;

    /**
    * @ORM\OneToMany(targetEntity="Canciones", mappedBy="interprete") 
    */
    private $canciones; /*ESTÁ ASOCIADO A POST*/



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
     * @return Interprete
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
     * Set descripcion
     *
     * @param string $descripcion
     * @return Interprete
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set num_miembros
     *
     * @param integer $numMiembros
     * @return Interprete
     */
    public function setNumMiembros($numMiembros)
    {
        $this->num_miembros = $numMiembros;

        return $this;
    }

    /**
     * Get num_miembros
     *
     * @return integer 
     */
    public function getNumMiembros()
    {
        return $this->num_miembros;
    }

    /**
     * Set nacionalidad
     *
     * @param string $nacionalidad
     * @return Interprete
     */
    public function setNacionalidad($nacionalidad)
    {
        $this->nacionalidad = $nacionalidad;

        return $this;
    }

    /**
     * Get nacionalidad
     *
     * @return string 
     */
    public function getNacionalidad()
    {
        return $this->nacionalidad;
    }

    /**
     * Add canciones
     *
     * @param \Blogger\BlogBundle\Entity\Canciones $canciones
     * @return Interprete
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
