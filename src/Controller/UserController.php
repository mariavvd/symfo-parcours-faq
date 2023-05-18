<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

/**
 * @Route("/user")
 */
class UserController extends AbstractController
{   
    /**
     * @Route("/", name="user", methods={"GET"})
     */
    public function index(Request $request)
    {   
        $repository = $this->getDoctrine()->getRepository(User::class);
        $users = $repository->findAll();

        return $this->render('user/index.html.twig', [
            'users' => $users,
        ]);
    }
    
    /**
     * @Route("/{id}", name="user_show", methods={"GET"})
     */
    public function show(User $user): Response
    {   
        if($this->getUser() === $user || $this->isGranted('ROLE_ADMIN')) {
            return $this->render('user/show.html.twig', [
                'user' => $user,
            ]);    
        } 
        else {
            throw $this->createAccessDeniedException();
        }
    }

    /**
     * @Route("/{id}/edit", methods={"GET", "POST"}, name="user_edit")
     */
    public function edit(Request $request, User $user): Response
    {   
        if($this->getUser() === $user || $this->isGranted('ROLE_ADMIN')) {
            $form = $this->createForm(UserType::class, $user);      
            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                $this->getDoctrine()->getManager()->flush();

                $this->addFlash('success', 'you just updated your profile');

                return $this->redirectToRoute('user');
            }
        

            return $this->render('user/edit.html.twig', [
                'user' => $user,
                'form' => $form->createView(),
            ]);
        } else {
            throw $this->createAccessDeniedException();
        }

    }

    /**
     * Deletes a User entity.
     *
     * @Route("/{id}/delete", methods={"DELETE"}, name="user_delete")
     */
    public function delete(Request $request, User $user): Response
    {
        if ($this->isCsrfTokenValid('delete', $request->request->get('token'))) {
            return $this->redirectToRoute('user');
        }

        $em = $this->getDoctrine()->getManager();
        $em->remove($user);
        $em->flush();

        $this->addFlash('danger', 'user ? No more ;) !');

        return $this->redirectToRoute('user');
    }

    


    
}
