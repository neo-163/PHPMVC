<?php

namespace app\web\controllers;

use \core\controller;

class NoteController extends Controller
{
	public function __construct()
	{
		// use \app\web\models\DbModel class to connect database
		$this->db = new \app\web\models\DbModel();
	}

	public function index()
	{
		// notes data start
		$sql = "SELECT notes.id, notes.title as noteTitle, notes.content, notes.image, notes.created_time, notes.updated_time, notesets.title as notesetTitle ";
		$sql .= "FROM notes ";
		$sql .= "LEFT JOIN notesets ";
		$sql .= "ON notes.noteset_id = notesets.id ";
		$sql .= "limit 10 ";

		$queryArray = array();

		// Prepare data to select
		$results = $this->db->preSelect($sql, $queryArray);

		foreach ($results as $k => $row) {
			$data['notes'][$k]['id'] = $row['id'];
			$data['notes'][$k]['title'] = $row['noteTitle'];
			$data['notes'][$k]['content'] = $row['content'];
			$data['notes'][$k]['image'] = $row['image'];
			$data['notes'][$k]['created_time'] = $row['created_time'];
			$data['notes'][$k]['updated_time'] = $row['updated_time'];
			$data['notes'][$k]['notesetTitle'] = $row['notesetTitle'];
		}
		// notes data end

		// notesets data start
		$sql = "
            SELECT * FROM notes
			limit 10
        ";

		$queryArray = array();

		// Prepare data to select
		$results = $this->db->preSelect($sql, $queryArray);

		$notesetsRecords = 0;
		foreach ($results as $k => $row) {
			$data['notesets'][$k]['id'] = $row['id'];
			$data['notesets'][$k]['title'] = $row['title'];

			$notesetsRecords += 1;
		}
		// notesets data end

		$data['notesetsRecords'] = $notesetsRecords;

		echo json_encode($data);
	}

	public function search()
	{
		if ($_SERVER['REQUEST_METHOD'] != 'POST') {
			echo 'Permission denied !';
			exit;
		}

		$keyword = trim($_POST["keyword"]);

		$sql = "
            SELECT * FROM notes
			WHERE title LIKE :title
			OR title LIKE :title_int
			limit 30
        ";

		$queryArray = array();
		$queryArray[':title'] = $keyword . '%';
		$queryArray[':title_int'] = '% ' . $keyword . '%';

		// Prepare data to select
		$results = $this->db->preSelect($sql, $queryArray);

		$records = 0;
		foreach ($results as $k => $row) {
			$data[$k]['id'] = $row['id'];
			$data[$k]['title'] = $row['title'];

			$results_number += 1;
		}

		$data['records'] = $records;

		echo json_encode($data);
	}

	public function pages()
	{
		$table = 'notes';
		$num = 5; // Evey page number record
		$page = isset($_GET['p']) ? $_GET['p'] : 1; // If $page has a get pass value, get it, if not, it will default to the first page
		// If the page number is less than or equal to 1, go back the first page
		if ($page <= 0) {
			$page = $page + 1;
		}
		// Calculate the offset
		$offset = ($page - 1) * $num;

		// select $num records form $offset id
		$sql = "SELECT * FROM {$table} LIMIT {$num} OFFSET {$offset}";
		$queryArray = array();
		$stmt = $this->db->preSelect($sql, $queryArray);
		$count = 0;
		$sql = "SELECT count(*) as count FROM {$table}";
		$count = $this->db->query($sql);
		$count = $count[0]['count'];

		foreach ($stmt as $k => $row) {
			$data['notes'][$k]['id'] = $row['id'];
			$data['notes'][$k]['title'] = $row['title'];
		}

		$data['pageRecords'] = $num;

		// Calculate the total number of pages = total number of records / number displayed per day
		$total = ceil($count / $num); // +1 with remainder
		if ($page >= $total) // setting for next page
		{
			$page = $page - 1;
		}

		$data['count'] = $count;
		$data['page'] = $page;
		$data['total'] = $total;
		$data = json_encode($data);

		echo $data;
	}
}
