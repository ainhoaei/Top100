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
		$canciones2 = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->getLatestCanciones();
		/*LLAMADA A LA FUNCION QUE HEMOS IMPLEMENTADO (getPortadaCanciones)*/
		return $this->render('BloggerBlogBundle:Canciones:list.html.twig', array('canciones2' => $canciones2));
	}

	/*public function listAction()
	{
		$canciones2 = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->getLatestCanciones();
		/*LLAMADA A LA FUNCION QUE HEMOS IMPLEMENTADO (getLatestPosts)*/

		//return $this->render('BloggerBlogBundle:Canciones:list.html.twig', array('canciones2' => $canciones2));
	//}


	public function showAction($id)
	{
		$canciones = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->findOneById($id);
		if (!$canciones)
		{
			// cause the 404 page not found to be displayed
			throw $this->createNotFoundException();
		}

		$interprete = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Interprete')->findOneById($id);

		
		return $this->render('BloggerBlogBundle:Canciones:show.html.twig', array('canciones' => $canciones));
	}

	public function estilo_musicalAction($id)
	{
		$estilo = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Estilos')->findOneById($id);
		if (!$estilo) {
			throw $this->createNotFoundException('No se ha encontrado el estilo.');
		}
		$canciones = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->getCancionesForEstilo($estilo->getId());
		return $this->render('BloggerBlogBundle:Canciones:estilo_musical.html.twig', array('estilo' => $estilo, 'canciones' => $canciones));

	}

	public function interpreteAction()
	{
		$interpretes = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Interprete')->findAll();
		//$interprete = $this->get('doctrine')->getManager()->createQuery('SELECT i FROM BloggerBlogBundle:Interprete i')->execute();
		
		//$canciones = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Canciones')->getCancionesForInterprete($interprete->getId());
		return $this->render('BloggerBlogBundle:Canciones:interprete.html.twig', array('interpretes' => $interpretes));
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
