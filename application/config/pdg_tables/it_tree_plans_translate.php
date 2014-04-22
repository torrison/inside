<?php

// Translate Table

$i = 0;
$table_columns[$i]['name'] = 'id';
$table_columns[$i]['text'] = 'ID';
$table_columns[$i]['column_width'] = '100';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'name';
$table_columns[$i]['text'] = 'Content Title';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'content';
$table_columns[$i]['text'] = 'Description';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'html';
$table_columns[$i]['help'] = 'Short text, for preview.';
$table_columns[$i]['defend_filter'] = 2;

$i++;
$table_columns[$i]['name'] = 'lang_alias';
$table_columns[$i]['text'] = 'Translate Language';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';

$table_config['key'] = 'id';

// System names: access = Access System, Chat = Chat communication
$table_config['cell_tabs_arr'] = Array (
	'main' => 'Main'
);

?>