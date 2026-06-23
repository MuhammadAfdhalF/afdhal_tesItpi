<?php
class SoftwareDeveloper
{
    private $nama;
    private $skill;
    public function setNama($nama)
    {
        $this->nama = $nama;
    }
    public function getNama()
    {
        return $this->nama;
    }
    public function setSkill($skill)
    {
        $this->skill = $skill;
    }
    public function getSkill()
    {
        return $this->skill;
    }
}
$developer = new SoftwareDeveloper();
$developer->setNama("Afdhal");
$developer->setSkill("PHP dan Laravel");
echo "Nama Developer: " . $developer->getNama() . PHP_EOL;
echo "Skill: " . $developer->getSkill();
