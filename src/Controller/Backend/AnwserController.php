<?php

namespace App\Controller\Backend;

use App\Entity\Question;
use App\Entity\Anwser;
use App\Form\AnwserType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


/**
 * @Route("/backend/anwser", name="backend_")
 */
class AnwserController extends AbstractController
{
    /**
     * @Route("/question/{id}", name="anwser_index", methods={"GET"})
     */
    public function index(Question $question)
    {
        return $this->render('backend/anwser/index.html.twig', [
            'question' => $question,
        ]);
    }

    /**
     * @Route("/new/question/{id}", name="anwser_new", methods={"GET","POST"})
     */
    public function new(Request $request, Question $question): Response
    {
        $anwser = new Anwser();
        $form = $this->createForm(AnwserType::class, $anwser);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $anwser->setQuestion($question);
            $user = $this->getUser();
            $anwser->setUser($user);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($anwser);
            $entityManager->flush();

            $this->addFlash(
                'success',
                'The answer is in the box !'
            );

            //attention , ici cette a changé car elle prend l'id en parametre , je l'ajoute aussi a la redirection
            return $this->redirectToRoute('backend_question_show', ['id' => $question->getId()]);
        }

        return $this->render('backend/anwser/new.html.twig', [
            'anwser' => $anwser,
            'form' => $form->createView(),
            'question' => $question
        ]);
    }

    /**
     * @Route("/{id}", name="anwser_show", methods={"GET"}, requirements={"id"="\d+"})
     */
    public function show(anwser $anwser): Response
    {
        return $this->render('backend/anwser/show.html.twig', [
            'anwser' => $anwser,
        ]);
    }

        /**
     * @Route("/{id}/edit", name="anwser_edit", methods={"GET","POST"}, requirements={"id"="\d+"})
     */
    public function edit(Request $request, Anwser $anwser): Response
    {
        $form = $this->createForm(AnwserType::class, $anwser);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash(
                'info',
                'Your anwser was updated !'
            );

            return $this->redirectToRoute('backend_anwser_index', [
                'id' => $anwser->getId(),
            ]);
        }

        return $this->render('backend/anwser/edit.html.twig', [
            'anwser' => $anwser,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="anwser_delete", methods={"DELETE"}, requirements={"id"="\d+"})
     */
    public function delete(Request $request, Anwser $anwser): Response
    {
        if ($this->isCsrfTokenValid('delete'.$anwser->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $questionId = $anwser->getQuestion()->getId();
            $entityManager->remove($anwser);
            $entityManager->flush();

            $this->addFlash(
                'danger',
                'Your anwser? No more ;) !'
            );
        }

        return $this->redirectToRoute('backend_anwser_index', ['id' => $questionId]);
    }
}
