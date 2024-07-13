<?php
class Person
{
    private $name;
    public $age;

    public function setName($name)
    {
        $this->name = ucfirst($name);
    }
    public function getName()
    {
        return $this->name;
    }
}

$person = new Person();
$person->setName("murad");
$person->age = 25;

echo $person->getName();
echo $person->age;
