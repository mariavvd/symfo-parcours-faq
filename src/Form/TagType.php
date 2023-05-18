<?php

namespace App\Form;

use App\Entity\Tag;
use App\Entity\Question;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class TagType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class)
            // je ne mets pas add questions volontairement car ce n'est pas très logique. On choisit plutôt dans une liste les tags qu'on veut ajouter à une question. 
            // ->add('questions', EntityType::class, [
            //     'class' => Question::class,
            //     'choice_label' => 'title',
            //     'multiple' => true,
            // ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Tag::class,
            'attr' => ['novalidate' => 'novalidate']
        ]);
    }
}
