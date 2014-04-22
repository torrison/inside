<?php

// Translate Table

$i = 0;
$table_columns[$i]['name'] = 'categories_id';
$table_columns[$i]['text'] = 'ID';
$table_columns[$i]['column_width'] = '100';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'categories_name';
$table_columns[$i]['text'] = 'Category Name';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'categories_img';
$table_columns[$i]['text'] = 'Image (300 x 188)';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['folder'] = 'categories_img';
$table_columns[$i]['input_type'] = 'image';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'categories_desc';
$table_columns[$i]['text'] = 'Description';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'html';
$table_columns[$i]['defend_filter'] = 2;
$table_columns[$i]['help'] = '';
$i++;
$table_columns[$i]['name'] = 'categories_html';
$table_columns[$i]['text'] = 'Full HTML';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'html';
$table_columns[$i]['defend_filter'] = 2;
$table_columns[$i]['help'] = '';

$i++;
$table_columns[$i]['name'] = 'categories_lang_alias';
$table_columns[$i]['text'] = 'Translate Language';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';

$table_config['key'] = 'categories_id';

// System names: access = Access System, Chat = Chat communication
$table_config['cell_tabs_arr'] = Array (
	'main' => 'Main'
);
