<?php

// inside_top_menu CONFIG

$i = 0;
$table_columns[$i]['name'] = 'id';
$table_columns[$i]['text'] = 'ID';
$table_columns[$i]['column_width'] = '100';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'pdg_color';
$table_columns[$i]['text'] = 'Color';
$table_columns[$i]['tab'] = 'main';
$variants = array();
  	$variants[0]['id'] = '1';$variants[0]['name']="Стандартный";
  	$variants[1]['id'] = '2';$variants[1]['name']="Красный";
  	$variants[2]['id'] = '3';$variants[2]['name']="Зеленый";
  	$variants[3]['id'] = '4';$variants[3]['name']="Синий";
  	$variants[4]['id'] = '5';$variants[4]['name']="Белый";
	$variants[5]['id'] = '6';$variants[5]['name']="Оранжевый";
	$table_columns[$i]['variants'] = $variants;
$table_columns[$i]['input_type'] = 'select';

$i++;
$table_columns[$i]['name'] = 'name';
$table_columns[$i]['text'] = 'Task Name';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'parent_id';
$table_columns[$i]['text'] = 'Parent Name';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = "parent_select_custom";
$table_columns[$i]['table'] = "inside_tasks";
$table_columns[$i]['field'] = "name";
$table_columns[$i]['rules'] = " WHERE haschild > 0 ORDER BY parent_id, name ASC";

$i++;
$table_columns[$i]['name'] = 'haschild';
$table_columns[$i]['text'] = 'HasChild';
$table_columns[$i]['tab'] = 'select-checkbox';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'status';
$table_columns[$i]['text'] = 'Status';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'date_start';
$table_columns[$i]['text'] = 'Date Start';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'date';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'dotime';
$table_columns[$i]['text'] = 'Do Time';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'date';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'date_finish';
$table_columns[$i]['text'] = 'Date Finish';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'date';

$i++;
$table_columns[$i]['name'] = 'fio';
$table_columns[$i]['text'] = 'FIO';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'tel';
$table_columns[$i]['text'] = 'Phone';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'datetime';
$table_columns[$i]['text'] = 'DateTime';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'hot';
$table_columns[$i]['text'] = 'Hot?';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'select-checkbox';

$i++;
$table_columns[$i]['name'] = 'email';
$table_columns[$i]['text'] = 'E-mail';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'orgs';
$table_columns[$i]['text'] = 'Organisation';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'people';
$table_columns[$i]['text'] = 'People';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'user_id';
$table_columns[$i]['text'] = 'User ID';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'performer';
$table_columns[$i]['text'] = 'Performer ID';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'content';
$table_columns[$i]['text'] = 'Content';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'html';

$i++;
$table_columns[$i]['name'] = 'priority';
$table_columns[$i]['text'] = 'Priority';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'price';
$table_columns[$i]['text'] = 'Price';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'income';
$table_columns[$i]['text'] = 'Income';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'file1';
$table_columns[$i]['text'] = 'Attachment';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'image';
$table_columns[$i]['folder'] = 'inside_news_img';

$i++;
$table_columns[$i]['name'] = 'file2';
$table_columns[$i]['text'] = 'Attachment';
$table_columns[$i]['tab'] = 'adv';
$table_columns[$i]['input_type'] = 'image';
$table_columns[$i]['folder'] = 'inside_tasks';

$i++;
$table_columns[$i]['name'] = 'creator';
$table_columns[$i]['text'] = 'Creator';
$table_columns[$i]['tab'] = 'sys';
$table_columns[$i]['input_type'] = 'text';
$i++;
$table_columns[$i]['name'] = 'create_time';
$table_columns[$i]['text'] = 'Create Time';
$table_columns[$i]['tab'] = 'sys';
$table_columns[$i]['input_type'] = 'text';
$i++;
$table_columns[$i]['name'] = 'updator';
$table_columns[$i]['text'] = 'Updator';
$table_columns[$i]['tab'] = 'sys';
$table_columns[$i]['input_type'] = 'text';
$i++;
$table_columns[$i]['name'] = 'update_time';
$table_columns[$i]['text'] = 'Update Time';
$table_columns[$i]['tab'] = 'sys';
$table_columns[$i]['input_type'] = 'text';

$i++;
$table_columns[$i]['name'] = 'user_read';
$table_columns[$i]['text'] = 'Users Read';
$table_columns[$i]['tab'] = 'access';
$table_columns[$i]['input_type'] = 'textarea';
$i++;
$table_columns[$i]['name'] = 'user_write';
$table_columns[$i]['text'] = 'Users Write';
$table_columns[$i]['tab'] = 'access';
$table_columns[$i]['input_type'] = 'textarea';


$i++;
$table_columns[$i]['name'] = 'chat';
$table_columns[$i]['text'] = 'Chat';
$table_columns[$i]['tab'] = 'chat';
$table_columns[$i]['input_type'] = 'textarea';


$table_config['key'] = 'id';

// System names: access = Access System, Chat = Chat communication
$table_config['cell_tabs_arr'] = Array (
	'main' => 'Main', 
	'adv' => 'Advanced', 
	'sys' => 'System',
	'access' => 'Access', 
	'chat' => 'Chat'
);

?>