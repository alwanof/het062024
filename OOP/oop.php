<?php
class FileHandler
{
    public $file;

    public function __construct($file)
    {

        $this->file  = fopen($file, 'w');
    }
    public function writeData($data)
    {

        fwrite($this->file, $data);
    }
    // destructor
    public function __destruct()
    {
        fclose($this->file);
    }
}

$fh = new FileHandler("example.txt");
$fh->writeData("Hello, world!");
