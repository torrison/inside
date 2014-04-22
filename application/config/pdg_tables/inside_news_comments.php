<?php

// inside_access_top_menu CONFIG

$i = 0;
$table_columns[$i]['name'] = 'news_comments_id';
$table_columns[$i]['text'] = 'ID';
$table_columns[$i]['column_width'] = '100';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'news_comments_new_id';
$table_columns[$i]['text'] = 'New ID';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'news_comments_user_id';
$table_columns[$i]['text'] = 'User ID';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'news_comments_user_name';
$table_columns[$i]['text'] = 'User Name';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'news_comments_content';
$table_columns[$i]['text'] = 'Comment Text';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'textarea';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'news_comments_datetime';
$table_columns[$i]['text'] = 'Datetime';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'news_comments_invisible';
$table_columns[$i]['text'] = 'Invisible';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'select-checkbox';
$table_columns[$i]['in_crud'] = true;



$table_config['key'] = 'news_comments_id';


$table_config['cell_tabs_arr'] = Array (
	'main' => 'Main', 
);

?>