<?php

namespace App\Controller\Backend;

use App\Entity\Tag;
use App\Entity\Question;
use App\Form\QuestionType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/backend/question", name="backend_")
 */
class QuestionController extends AbstractController
{
    /**
     * @Route("/", name="question_index", methods={"GET"})
     */
    public function index(Request $request)
    {
        $repository = $this->getDoctrine()->getRepository(Question::class);
        $questions = $repository->findQuestionByCrDate();
        $repository= $this->getDoctrine()->getRepository(Tag::class); 
        $tags = $repository->findAll();

        return $this->render('backend/question/index.html.twig', [
            'questions' => $questions,
            'tags' => $tags
        ]);
    }

    /**
     * Creates a new Question entity.
     * @Route("/new", name="question_new",  methods={"GET", "POST"})
     */
    public function new(Request $request): Response
    {
        $question = new Question();
        // TODO après création des user ;)
        // $question->setAuthor($this->getUser());
        $form = $this->createForm(QuestionType::class, $question);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            // $question->setSlug(Slugger::slugify($question->getTitle())); idée pour améliorer tirée du projet démo de symfo
            $user = $this->getUser();
            $question->setUser($user);
            $em = $this->getDoctrine()->getManager();
            $em->persist($question);
            $em->flush();
            $this->addFlash('success', 'your question is in the box !');
            return $this->redirectToRoute('backend_question_index');
        }
        return $this->render('backend/question/new.html.twig', [
            'question' => $question,
            'form' => $form->createView(),
        ]);
    }

    /**
     * Finds and displays a Question entity.
     *
     * @Route("/{id}", methods={"GET"}, name="question_show", requirements={"id"="\d+"})
     */
    public function show(Question $question): Response
    {
        if (!$question) {
            throw $this->createNotFoundException('The question you ask for does not exist.');
        }

        return $this->render('backend/question/show.html.twig', [
            'question' => $question,
        ]);
    }

    /**
     * Displays a form to edit an existing Question entity.
     *
     * @Route("/{id<\d+>}/edit",methods={"GET", "POST"}, name="question_edit")
     */
    public function edit(Request $request, Question $question): Response
    {   
        $form = $this->createForm(QuestionType::class, $question);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // TODO $question->setSlug(Slugger::slugify($question->getTitle()));
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash('success', 'Your question has been updated successfully');

            return $this->redirectToRoute('backend_question_edit', ['id' => $question->getId()]);
        }

        return $this->render('backend/question/edit.html.twig', [
            'question' => $question,
            'form' => $form->createView(),
        ]);
    }

     /**
     * Deletes a Question entity.
     *
     * @Route("/{id}/delete", methods={"DELETE"}, name="question_delete", requirements={"id"="\d+"})
     */
    public function delete(Request $request, Question $question): Response
    {
        if ($this->isCsrfTokenValid('delete', $request->request->get('token'))) {
            return $this->redirectToRoute('backend_question_index');
        }

        // TODO ?????????????$question->getTags()->clear();

        $em = $this->getDoctrine()->getManager();
        $em->remove($question);
        $em->flush();

        $this->addFlash('danger', 'question ? No more ;) !');

        return $this->redirectToRoute('backend_question_index');
    }
}
