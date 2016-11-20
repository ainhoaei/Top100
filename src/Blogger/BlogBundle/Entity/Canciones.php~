<?php

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;

/**
 * Blogger\BlogBundle\Entity\Canciones
 *
 * @ORM\Table(name="canciones")
 * @ORM\Entity(repositoryClass="Blogger\BlogBundle\Entity\CancionesRepository")
 * @ORM\HasLifecycleCallbacks()
 */
class Canciones
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
     * @ORM\Column(name="nombre_cancion", type="text")
     */
    private $nombre_cancion;

    /**
     * @ORM\ManyToOne(targetEntity="Interprete", inversedBy="canciones")
     * @ORM\JoinColumn(name="interprete_id", referencedColumnName="id")
     */
    private $interprete_id;

    /**
     * @var int
     *
     * @ORM\Column(name="puesto_ranking", type="integer")
     */
    private $puesto_ranking;

    /**
     * @ORM\ManyToMany(targetEntity="Estilos", mappedBy="canciones")
     */
    private $estilos;

    /**
     * @var string
     *
     * @ORM\Column(name="letra", type="text")
     */
    private $letra;


    public function __construct()
    {
        $this->estilos = new ArrayCollection();
        $this->interprete_id = new ArrayCollection();

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
     * Set nombre_cancion
     *
     * @param string $nombreCancion
     * @return Canciones
     */
    public function setNombreCancion($nombreCancion)
    {
        $this->nombre_cancion = $nombreCancion;

        return $this;
    }

    /**
     * Get nombre_cancion
     *
     * @return string 
     */
    public function getNombreCancion()
    {
        return $this->nombre_cancion;
    }

    /**
     * Set puesto_ranking
     *
     * @param integer $puestoRanking
     * @return Canciones
     */
    public function setPuestoRanking($puestoRanking)
    {
        $this->puesto_ranking = $puestoRanking;

        return $this;
    }

    /**
     * Get puesto_ranking
     *
     * @return integer 
     */
    public function getPuestoRanking()
    {
        return $this->puesto_ranking;
    }

    /**
     * Set letra
     *
     * @param string $letra
     * @return Canciones
     */
    public function setLetra($letra)
    {
        $this->letra = $letra;

        return $this;
    }

    /**
     * Get letra
     *
     * @return string 
     */
    public function getLetra()
    {
        return $this->letra;
    }

    /**
     * Set interprete_id
     *
     * @param \Blogger\BlogBundle\Entity\Interprete $interpreteId
     * @return Canciones
     */
    public function setInterpreteId(\Blogger\BlogBundle\Entity\Interprete $interpreteId = null)
    {
        $this->interprete_id = $interpreteId;

        return $this;
    }

    /**
     * Get interprete_id
     *
     * @return \Blogger\BlogBundle\Entity\Interprete 
     */
    public function getInterpreteId()
    {
        return $this->interprete_id;
    }

    /**
     * Add estilos
     *
     * @param \Blogger\BlogBundle\Entity\Estilos $estilos
     * @return Canciones
     */
    public function addEstilo(\Blogger\BlogBundle\Entity\Estilos $estilos)
    {
        $this->estilos[] = $estilos;

        return $this;
    }

    /**
     * Remove estilos
     *
     * @param \Blogger\BlogBundle\Entity\Estilos $estilos
     */
    public function removeEstilo(\Blogger\BlogBundle\Entity\Estilos $estilos)
    {
        $this->estilos->removeElement($estilos);
    }

    /**
     * Get estilos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getEstilos()
    {
        return $this->estilos;
    }
}
