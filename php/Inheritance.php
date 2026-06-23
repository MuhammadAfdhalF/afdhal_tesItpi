<?php

class Pegawai
{
    public $nama;

    public function __construct($nama)
    {
        $this->nama = $nama;
    }

    public function tampilNama()
    {
        return "Nama pegawai: " . $this->nama;
    }
}

class Programmer extends Pegawai
{
    public $bahasa;

    public function __construct($nama, $bahasa)
    {
        parent::__construct($nama);
        $this->bahasa = $bahasa;
    }

    public function tampilData()
    {
        return $this->tampilNama() . PHP_EOL . "Bahasa pemrograman: " . $this->bahasa;
    }
}

$programmer = new Programmer("Afdhal", "PHP");
echo $programmer->tampilData();
