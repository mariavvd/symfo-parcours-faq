<?php

namespace App\Controller;

use App\Entity\Tag;
use App\Entity\Question;
use App\Repository\AnwserRepository;
use App\Repository\QuestionRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class QuestionController extends AbstractController
{
    /**
     * @Route("/", name="home", methods={"GET", "POST"})
     */
    public function index(Request $request)
    {
        $repository = $this->getDoctrine()->getRepository(Question::class);
        $questions = $repository->findQuestionByCrDate();
        $repository= $this->getDoctrine()->getRepository(Tag::class); 
        $tags = $repository->findAll();
        return $this->render('question/index.html.twig', [
            'questions' => $questions,
            'tags' => $tags
        ]);
    }

    /**
     * @Route("/question/{id}", name="question_show", methods={"GET"}, requirements={"id"="\d+"})
     */
    public function show(Question $question, AnwserRepository $anwserRepository)
    {   
        $anwsers = $anwserRepository->findByQuestion($question);
    

        return $this->render('question/show.html.twig',[
            'question' => $question,
            'anwsers' => $anwsers,
        ]);
    }

    /**
     * @Route("/question/{id}/tag", name="question_tag", methods={"GET"}, requirements={"id"="\d+"})
     */
    public function showByTag(Tag $tag, QuestionRepository $questionRepository)
    {   
        $questions = $questionRepository->findAll();

        return $this->render('question/tag.html.twig',[
            'tag' => $tag,
            'questions' => $questions,
        ]);
    }
}
