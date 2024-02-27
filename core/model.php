<?php

namespace core;

use \PDO;

class Model
{
	// Save the object
	protected $db;
	protected $table;
	protected $fields;

	public function __construct()
	{

		global $config;

		$this->db = new DB($config[$config['database']], $config['drivers']);
	}

	// Database write
	public function exec($sql)
	{
		return $this->db->exec($sql);
	}

	// Database read
	public function query($sql)
	{
		return $this->db->query($sql);
	}

	// Database read
	public function preSelect($sql, $queryArray)
	{
		return $this->db->preSelect($sql, $queryArray);
	}

	// Database read
	public function preInsert($sql, $queryArray)
	{
		return $this->db->preInsert($sql, $queryArray);
	}

	// Construct full table name
	protected function getTable(string $table)
	{
		// Configuration
		global $config;

		// Determine the table name
		$table = empty($table) ? $this->table : $table;

		// Construct table name
		return $config['database']['prefix'] . $table;

	}

	// Get table fields
	private function get_Fields()
	{
		// Get table fields through desc
		$sql = "desc {$this->getTable()}";

		$rows = $this->query($sql);

		// Traverse, select fields and primary keys
		foreach ($rows as $row) {
			$this->fields[] = $row['Field'];

			// Save primary key
			if ($row['Key'] == 'PRI')
				$this->fields['key'] = $row['Field'];
		}

	}

	// Get records by primary key
	public function getByID($id)
	{
		// Determine whether the primary key exists
		if (!isset($this->fields['key']))
			return false;

		$sql = "select * from {$this->getTable()} where {$this->fields['key']} = $id";

		return $this->query($sql);
	}

}
