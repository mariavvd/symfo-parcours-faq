<?php

namespace App\Controller\Backend;

use App\Entity\Role;
use App\Repository\RoleRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Form\RoleType;

/**
 * @Route("/backend/role", name="backend_")
 */
class RoleController extends AbstractController
{
    /**
     * @Route("/", name="role_index", methods={"GET"})
     */
    public function index(RoleRepository $roleRepository)
    {
        return $this->render('backend/role/index.html.twig', [ 'roles' => $roleRepository->findAll()]);
    }

    /**
     * @Route("/new", name="role_new", methods={"GET","POST"})
     */
    public function new(Request $request = null): Response
    {
        $role = new Role();
        $form = $this->createForm(RoleType::class, $role);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($role);
            $entityManager->flush();

            $this->addFlash(
                'success',
                'The new role type is registered.'
            );
            
            return $this->redirectToRoute('backend_role_index');
        }

        return $this->render('backend/role/new.html.twig', [
            'role' => $role,
            'form' => $form->createView(),
        ]);
    }

     /**
     * @Route("/{id}", name="role_show", methods={"GET"}, requirements={"id"="\d+"})
     */
    public function show(Role $role): Response
    {
        if (!$role) {
            throw $this->createNotFoundException('Le role demandé n\existe pas.');
        }

        return $this->render('backend/role/show.html.twig', ['role' => $role]);
    }

    /**
     * @Route("/{id}/edit", name="role_edit", methods={"GET","POST"}, requirements={"id"="\d+"})
     */
    public function edit(Request $request, Role $role): Response
    {

        $form = $this->createForm(RoleType::class, $role);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash(
                'info',
                'The role was updated.'
            );

            return $this->redirectToRoute('backend_role_index', ['id' => $role->getId()]);
        }

        return $this->render('backend/role/edit.html.twig', [
            'role' => $role,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="role_delete", methods={"DELETE"}, requirements={"id"="\d+"})
     */
    public function delete(Request $request, Role $role): Response
    {
        if ($this->isCsrfTokenValid('delete'.$role->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($role);
            $entityManager->flush();

            $this->addFlash(
                'danger',
                'role? No more ;) !'
            );
        }

        return $this->redirectToRoute('backend_role_index');
    }
}
