<?php

// inside_top_menu CONFIG

$i = 0;
$table_columns[$i]['name'] = 'inside_news_id';
$table_columns[$i]['text'] = 'ID';
$table_columns[$i]['column_width'] = '100';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'inside_news_name';
$table_columns[$i]['text'] = 'Title';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'inside_news_datetime';
$table_columns[$i]['text'] = 'AddTime';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'inside_news_text';
$table_columns[$i]['text'] = 'Text';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'html';
$table_columns[$i]['defend_filter'] = 2;
$i++;
$table_columns[$i]['name'] = 'inside_news_author';
$table_columns[$i]['text'] = 'Author';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;
$i++;
$table_columns[$i]['name'] = 'inside_news_image';
$table_columns[$i]['text'] = 'Image';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'image';
$table_columns[$i]['folder'] = 'inside_news_img';
$table_columns[$i]['in_crud'] = true;


$table_config['key'] = 'inside_news_id';

// System names: access = Access System, Chat = Chat communication
$table_config['cell_tabs_arr'] = Array (
	'main' => 'Main', 
	'access' => 'Access', 
	'chat' => 'Chat'
);

?>