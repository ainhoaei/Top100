<?php
// src/Blogger/BlogBundle/Controller/CancionesController.php
namespace Blogger\BlogBundle\Controller;

use Blogger\BlogBundle\Entity\Canciones;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class CancionesController extends Controller
{

	public function portadaAction()
	{
		$canciones2 = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->findByPortadaCanciones();
		/*LLAMADA A LA FUNCION QUE HEMOS IMPLEMENTADO (getPortadaCanciones)*/
		return $this->render('BloggerBlogBundle:Canciones:list.html.twig', array('canciones2' => $canciones2));
	}

	public function listAction()
	{
		//$canciones2 = $this->get('doctrine')->getManager()->createQueryBuilder()->select('p')->from('BloggerBlogBundle:Canciones',  'p')->addOrderBy('p.puesto_ranking', 'ASC')->getQuery()->getResult();
	//AQUÍ HACEMOS TODAS LAS CONSULTAS A LA VEZ, PERO NORMALMENTE LO VAMOS A HACER A PARTE

		$canciones2 = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->getLatestCanciones();
		/*LLAMADA A LA FUNCION QUE HEMOS IMPLEMENTADO (getLatestPosts)*/

		return $this->render('BloggerBlogBundle:Canciones:list.html.twig', array('canciones2' => $canciones2));
	}


	public function showAction($id)
	{
		$canciones = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->find($id);
		if (!$canciones)
		{
			// cause the 404 page not found to be displayed
			throw $this->createNotFoundException();
		}
		
		return $this->render('BloggerBlogBundle:Canciones:show.html.twig', array('canciones' => $canciones));
	}

	public function estilo_musicalAction($id)
	{
		$estilo = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Estilos')->find($id);
		if (!$estilo) {
			throw $this->createNotFoundException('No se ha encontrado el estilo.');
		}
		$canciones = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->getCancionesForEstilo($estilo->getId());
		return $this->render('BloggerBlogBundle:Canciones:estilo_musical.html.twig', array('estilo' => $estilo, 'canciones' => $canciones));

		//return $this->render('BloggerBlogBundle:Canciones:estilo_musical.html.twig');
	}

	public function interpreteAction($id)
	{
		$interprete = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Interprete')->find($id);
		return $this->render('BloggerBlogBundle:Canciones:interprete.html.twig');
	}

	
	// helper function to render templates
	function render_template($path, array $args)
	{
		extract($args);
		ob_start();
		require $path;
		$html = ob_get_clean();
		return $html;
	}

}
?>
