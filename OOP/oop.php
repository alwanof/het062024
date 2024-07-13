<?php

class Person
{
    public $name;
    public $age;
    public $city;

    // constructor
    public function __construct($name, $age, $city)
    {
        $this->name = $name;
        $this->age = $age;
        $this->city = $city;
    }

    public function greet()
    {
        echo "Hello, $this->name. You are $this->age years old and live in $this->city.";
    }
}

$person1 = new Person("John", 20, "New York");


$person1->greet();
