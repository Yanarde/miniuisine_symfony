<?php

namespace MU1Bundle\Controller;

use MU1Bundle\Entity\Utilisateur;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
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

            return $this->render('@MU1/acceuil.html.twig',['user'=>$user]);
        }
        
        return $this->redirectToRoute('fos_user_security_login');

    }

    public function tagsAction($zone){
        $zone = 10;
        $repository = $this->getDoctrine()
            ->getRepository(Utilisateur::class);
        $user=$repository->findOneBy(['username' => $this->getUser()->getUsername()]);

        $em = $this->getDoctrine()->getManager('esync');
        $stat = $em->getConnection()->prepare('SELECT * FROM esync_tags WHERE Name REGEXP :zone ;');
        $stat->bindValue('zone', "'^Z".$zone."_.*'");
        $stat->execute();
        $tags = $stat->fetchAll();
        printf("tags:");
        p($tags);
        return $this->render('@MU1/tags.html.twig',['user'=>$user, 'tags'=>$tags]);
    }
}
