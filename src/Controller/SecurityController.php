<?php
namespace App\Controller;
use App\Entity\User;
use App\Form\SigninType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
class SecurityController extends AbstractController
{       
   /**
     * @Route("/signin", name="app_signin", methods={"GET","POST"})
     * 
     * Celui va me permettre de recuperer l'encoodage definit sur l'entité user definie dans security.yml et de génerer un mot de passe encodé avec le nouveau mdp
     */
    public function signin (Request $request,UserPasswordEncoderInterface $passwordEncoder): Response
    {
        $user = new User();
        $form = $this->createForm(SigninType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $encodedPassword = $passwordEncoder->encodePassword(
                 $user, #detecte le type d'encodage
                 $user->getPassword() #le mot de passse a encoder
            );
            //j'ecrase le mot de passe en clair par celui que je vient d'encoder
            $user->setPassword($encodedPassword);
            $user->setRoles(['ROLE_USER']);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($user);
            $entityManager->flush();
            return $this->redirectToRoute('app_login');
        }
        return $this->render('security/signin.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();
        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }
}