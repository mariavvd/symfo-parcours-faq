<?php

namespace App\DataFixtures;

use Nelmio\Alice\Loader\NativeLoader;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;


class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
    $loader = new NativeLoader();
        $entities = $loader->loadFile(__DIR__.'/fixtures.yml')->getObjects();
        foreach ($entities as $entity) {
            $manager->persist($entity);
        };
          $manager->flush();
        
    }

}
