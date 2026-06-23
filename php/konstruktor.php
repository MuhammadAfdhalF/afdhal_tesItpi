<?php
class SoftwareDeveloper
{
    public $nama;
    public $posisi;
    public $skill;
    public function __construct($nama, $posisi, $skill)
    {
        $this->nama = $nama;
        $this->posisi = $posisi;
        $this->skill = $skill;
    }
    public function tampilData()
    {
        return "Nama: " . $this->nama . PHP_EOL . "Posisi: " . $this->posisi . PHP_EOL . "Skill: " . $this->skill;
    }
}
$developer = new SoftwareDeveloper("Afdhal", "Software Developer", "PHP dan Laravel");
echo $developer->tampilData();
