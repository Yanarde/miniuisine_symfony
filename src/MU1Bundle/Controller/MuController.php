<?php

namespace MU1Bundle\Controller;

use MU1Bundle\Entity\Utilisateur;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class MuController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        if ($this->isGranted('ROLE_SUPER_ADMIN'))
            return $this->redirect('/admin');

        if ($this->isGranted('IS_AUTHENTICATED_REMEMBERED'))
        {
            $repository = $this->getDoctrine()
                ->getRepository(Utilisateur::class);
            $user=$repository->findOneBy(['username' => $this->getUser()->getUsername()]);

            return $this->render('@MU1/accueil.html.twig',['user'=>$user]);
        }
        
        return $this->redirectToRoute('fos_user_security_login');

    }

    public function tagsAction($zone){
        $repository = $this->getDoctrine()
            ->getRepository(Utilisateur::class);
        $user=$repository->findOneBy(['username' => $this->getUser()->getUsername()]);

        if ( !method_exists($user, "getZone".$zone) || !$user->{"getZone".$zone}())
            return $this->redirectToRoute('mu_homepage',['user'=>$user]);

        $em = $this->getDoctrine()->getManager('esync');
        $stat = $em->getConnection()->prepare('SELECT * FROM esync_tags WHERE Name REGEXP \'^Z'.$zone.'_\' ;');
        $stat->execute();
        $tags = $stat->fetchAll();
        return $this->render('@MU1/tags.html.twig',['user'=>$user, 'tags'=>$tags, 'zone'=>$zone]);
    }
}
