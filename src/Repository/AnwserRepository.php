<?php

namespace App\Repository;

use App\Entity\Anwser;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Anwser|null find($id, $lockMode = null, $lockVersion = null)
 * @method Anwser|null findOneBy(array $criteria, array $orderBy = null)
 * @method Anwser[]    findAll()
 * @method Anwser[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AnwserRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Anwser::class);
    }


    /**
     * @param Question $question
     * @return Anwser[] Returns an array of Anwser objects
     */
  
    public function findByQuestion($question)
    {
       $qb = $this->createQueryBuilder('r')
                ->where('r.question = :currentQuestion')
                ->setParameter('currentQuestion', $question)
        ;
        return $qb->getQuery()->getArrayResult();
    }
  

    /*
    public function findOneBySomeField($value): ?Anwser
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
