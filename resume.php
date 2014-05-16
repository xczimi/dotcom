<?php
require('fpdf16/fpdf.php');

class PDF extends FPDF {
  // Page header
  function Header() {
    // Arial bold 15
    // Title
    $this->SetFont('Arial', '', 12);
    $this->Cell(60, 6, $this->personname, 'B', 0, 'L');
    $this->SetFont('Arial', 'B', 12);
    $this->Cell(70, 6, '', 'B', 0, 'C');
    $this->SetFont('Arial', '', 12);
    // $this -> Cell(60, 6, $this -> pageNo() . ". oldal", 'B', 0, 'R');
    $this->Cell(60, 6, date("Y-m-d"), 'B', 0, 'R'); 
    // Line break
    $this->Ln(10);
  }

  public $personname = "";

  function CV($person) {
    $this->personname = $person->personal['Name'];
    $this->AddPage();
    $this->CVHeader();
    $this->PersonalData($person->personal);
    $this->WorkHistoryData($person->workhistory);
    $this->SkillsData($person->skills);
    $this->HobbyData($person->other,"Awards");
    $this->EducationData($person->education);
    $this->HobbyData($person->hobbys);
  }

  function CVHeader() {
    $this->SetFillColor(192, 192, 192);
    $this->SetTextColor(255, 255, 255);
    $this->SetFont('Arial', 'B', 14);
    $this->Cell(190, 6, 'Resume', 0, 1, 'C', 1);
    $this->SetTextColor(0, 0, 0);
  }

  function PersonalData($data) {
    $this->Ln(10);
    foreach($data as $key => $value) {
      $this->SetFont('Arial', 'B', 10);
      $this->Cell(25, 5, $key . ":", 0, 0, 'L', 0);
      $this->SetFont('Arial', '', 10);
      if(strpos($value, "%")) {
        list($value, $link) = explode("%", $value);
        $this->SetFont('Arial', 'U');
        $this->SetTextColor(0, 0, 192);
        $this->Cell(170, 5, $value, 0, 1, 'L', 0, $link . $value);
        $this->SetTextColor(0, 0, 0);
        $this->SetFont('Arial', '');
      }else {
        $this->Cell(170, 5, $value, 0, 1, 'L', 0);
      }
    }
  }
  
  function HobbyData($data, $section="Hobby") {
    $this->Ln(5);
    $this->SetFont("Arial", 'B', 10);
    $this->Cell(30, 5, $section.":");
    $this->SetFont("Arial", '', 10);
    $i = 0;
    foreach($data as $hobby) {
      if($i++) $this->Cell(30, 5, "");
      $this->Cell(160, 5, $hobby, 0, 1);
    }
  }

  function SkillsData($data) {
    $this->Ln(5);
    $this->SetFont("Arial", 'B', 10);
    $this->Cell(30, 5, "Skills:");
    $this->SetFont("Arial", '', 10);
    $i = 0;
    foreach($data as $skill) {
      if($i++) $this->Cell(30, 5, "");
      $this->Cell(160, 5, $skill, 0, 1);
    }
  }

  function EducationData($data) {
    $this->Ln(5);
    $this->SetFont("Arial", 'B', 10);
    $this->Cell(30, 5, "Education:");
    $this->SetFont("Arial", '', 10);
    $i = 0;
    foreach($data as $school) {
      if(isset($school['name'])) {
        if($i++) $this->Cell(30, 5, "");
        $this->SetFont("Arial", 'I', 10);
        $this->Cell(160, 5, $school['name'], 0, 1);
        $this->SetFont("Arial", '', 10);
      }
      if(isset($school['range'])) {
        if($i++) $this->Cell(30, 5, "");
        $this->Cell(160, 5, $school['range'], 0, 1);
      }
      if(isset($school['other'])) {
        if($i++) $this->Cell(30, 5, "");
        $this->Cell(160, 5, $school['other'], 0, 1);
      }
      $this->Ln(2);
    }
  }

  function WorkHistoryData($data) {
    $this->Ln(5);
    $this->SetFont("Arial", 'B', 10);
    $this->Cell(30, 5, "Experience:");
    $this->SetFont("Arial", '', 10);
    $i = 0;
    foreach($data as $work) {
      if(isset($work['company'])) {
        if($i++) $this->Cell(30, 5, "");
        $this->SetFont("Arial", 'I', 10);
        $this->Cell(160, 5, $work['company'], 0, 1);
        $this->SetFont("Arial", '', 10);
      }
      if(isset($work['range'])) {
        if($i++) $this->Cell(30, 5, "");
        $this->Cell(160, 5, $work['range'], 0, 1);
      }
      if(isset($work['task'])) {
          foreach(explode("\n",$work['task']) as $taskItem) {
            if($i++) $this->Cell(30, 5, "");
            $this->Cell(160, 5, $taskItem, 0, 1);
          }
      }
      if(isset($work['reference'])) foreach($work['reference'] as $reference) {
        if($i++) $this->Cell(30, 5, "");
        $this->SetFont('Arial', 'U');
        $this->SetTextColor(0, 0, 192);
        $this->Cell(160, 5, $reference, 0, 1, 'L', 0, $reference);
        $this->SetTextColor(0, 0, 0);
        $this->SetFont('Arial', '');
      }
      $this->Ln(2);
    }
  }
}

class Person {
  public $personal;
  public $education;
  public $skills;
  public $workhistory;
  public $hobby;
  public $other;
  function Person($personal, $education = array(), $workhistory = array(), $skills = array(), $hobbys = array(), $other = array()) {
    $this->personal = $personal;
    $this->education = $education;
    $this->workhistory = $workhistory;
    $this->skills = $skills;
    $this->hobbys = $hobbys;
    $this->other = $other;
  }
}
$xczimi = new Person(
  array("Name" => "Peter Czimmermann",
    "Birth" => "1979, Dombóvár, Hungary",
    "Address" => "23 - 777 Burrard street, Vancouver, BC, Canada V6Z 1X7",
    "Address" => "Vancouver, BC, Canada",
    "E-mail" => "xczimi@gmail.com%mailto:",
    "Nationality" => "Hungarian",
    "Languages" => "English (fluent), German (basic)"
    ),
  array(
    array("name" => "Technical University of Budapest",
      "range" => "1998 - 2001, 2003",
      "other" => "informatics"),
    array("name" => "Fazekas Mihály Secondary School",
      "range" => "1994-1998",
      "other" => "special math")),
  array(
    array("company" => "Global Market Insite",
      "range" => "2000 May - ",
      "task" => "Designed and implemented web applications for market research
Sample management tool - PHP, Mysql
Dynamic and static quota management for surveys
Invitation Mailing engine - PHP (direct SMTP)
Panel management application - ASP (VBScript), Mssql
Panel management application - PHP, Mysql
Automated distributed deployment system - GNU make, Red Hat Package Manager (RPM)
Continuous Integration - phpUnderControl, PHPUnit",
      "reference" => array("http://www.gmi-mr.com")),
//    array("company" => "Artdat Kft.",
//      "range" => "2000 Jan - 2002 Dec",
//      "task" => "Art, Auction and Gallery portal system developement (PHP, HTML, PostgreSQL)",
//      "reference" => array("http://www.artdat.hu")
//      ),
//    array("company" => "Czimi & Co Bt.",
//      "range" => "2002 - in progress",
//      "task" => "Sport (basketball) statistics system developement (Web, SQL)",
//      "reference" => array("http://fod.dyn.hu","http://honvedkosar.preco.hu")
//      ),
//    array("company" => "SOTE Stundent Center",
//      "range" => "1999 Jan - 2000 August",
//      "task" => "Operator, system control, user support (Novell, Windows)"
//      ),
//    array("company" => "Personally (Nagykanizsa)",
//      "range" => "1992 - 1994",
//      "task" => "Meal service registry program for grammar schools (Pascal)"
//      )
      ),
  array("Languages: PHP, Scala, Javascript, Python, Java, Delphi, C++",
    "Databases: Couchbase, MySQL, MongoDB, BerkeleyDb (MemcacheDb), MsSQL, PostgreSQL",
    "VCS: subversion, git",
    "Other: Google App Engine, GNU Make, RPM"
    ),
    array("soccer, poker, travel, basketball, beer"),
    array("Hungarian national programming contest (1996) - 8th place")
  );

$persons = array("xczimi" => $xczimi);//, "tboy" => $tboy, "drool" => $drool);

$pdf = new PDF();
$pdf->Open();
$pdf->AliasNbPages();
if (isset($_GET["who"])) {
  $pdf->CV($persons[$_GET["who"]]);
}else {
  foreach($persons as $person) {
    $pdf->CV($person);
  }
}
$pdf->Output();

