<?php
interface Chargeable
{
    public function chargeBattery();
    public function checkBatteryStatus();
}
abstract class ElectronicDevice implements Chargeable
{
    protected $batteryLevel;
    public function __construct()
    {
        $this->batteryLevel = 0; // default battery level
    }
    abstract public function chargeBattery();
    abstract public function checkBatteryStatus();
}

class Smartphone extends ElectronicDevice
{
    public function chargeBattery()
    {
        $this->batteryLevel = 100; // Simulate charging to full
        echo "Smartphone battery is fully charged.\n";
    }

    public function checkBatteryStatus()
    {
        echo "Smartphone battery level is at {$this->batteryLevel}%.\n";
    }
}

class Laptop extends ElectronicDevice
{
    public function chargeBattery()
    {
        $this->batteryLevel = 80; // Simulate charging to full
        echo "Laptop battery is fully charged.\n";
    }

    public function checkBatteryStatus()
    {
        echo "Laptop battery level is at {$this->batteryLevel}%.\n";
    }
}

$smartphone = new Smartphone();
$smartphone->chargeBattery();
$smartphone->checkBatteryStatus();
