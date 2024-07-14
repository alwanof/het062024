<?php
class Human
{
    public $name;
    public $age;
    public $gender;
    public $height;
    public $weight;
    static public $count = 0;
    public function __construct()
    {
        self::$count++;
    }

    public function speak()
    {
        return "Hello";
    }
}

$person1 = new Human();
$person2 = new Human();

echo Human::$count;
