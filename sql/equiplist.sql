SELECT		ID,
		Object,
		Manufacturer
FROM		$_config[table_prefix]Equipment
ORDER BY 	Manufacturer ASC, Object ASC