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
        if ($this->isGranted('IS_AUTHENTICATED_REMEMBERED'))
        {
            $repository = $this->getDoctrine()
                ->getRepository(Utilisateur::class);
            $user=$repository->findOneBy(['username' => $this->getUser()->getUsername()]);
            return $this->render('@MU1/Default/index.html.twig',['user'=>$user]);
        }
        else
            return $this->redirectToRoute('fos_user_security_login');

    }
    public function tagsAction(){
        $repository = $this->getDoctrine()
            ->getRepository(Utilisateur::class);
        $user=$repository->findOneBy(['username' => $this->getUser()->getUsername()]);
        return $this->render('@MU1/Default/index.html.twig',['user'=>$user]);
    }
}
