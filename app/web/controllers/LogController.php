<?php

namespace app\web\controllers;

use \core\controller;

class LogController extends Controller
{
	public function __construct()
	{
		// $this->db = new \app\web\models\DbModel();
	}

	static function test()
	{
		echo 'Testing text !';
	}

	static function preInsertLog($table, $title, $description)
	{
		if (!empty($title)) {
			$sql = "
				INSERT INTO $table
				(
					title
					,description
				)
				VALUES 
				(
					:title
					,:description
				)
			";

			$queryArray = array();
			$queryArray['title'] = $title;
			$queryArray['description'] = $description;
			// $queryArray['updated_time'] = date('Y-m-d H:i:s');

			// Prepare data to insert
			$db = new \app\web\models\DbModel();
			$db->preInsert($sql, $queryArray);
		}

		echo 'insert log';
	}
}
