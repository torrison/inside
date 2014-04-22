<?php

// inside_top_menu CONFIG

$i = 0;
$table_columns[$i]['name'] = 'lang_id';
$table_columns[$i]['text'] = 'ID';
$table_columns[$i]['column_width'] = '100';
$table_columns[$i]['in_crud'] = true;

$i++;

$table_columns[$i]['name'] = 'lang_name';
$table_columns[$i]['text'] = 'Vocubulary Alias';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'select_from_table_chosen';

$table_columns[$i]['select_index'] = 'vocabulary_alias';
$table_columns[$i]['select_field'] = 'vocabulary_alias';
$table_columns[$i]['select_table'] = 'it_vocabulary';
$table_columns[$i]['filter'] = true;
$table_columns[$i]['in_crud'] = true;

$table_columns[$i]['help'] = 'Vocabulary Alias';

$i++;
$table_columns[$i]['name'] = 'lang_alias';
$table_columns[$i]['text'] = 'lang Alias';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['help'] = 'Short, 2 symbol name';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'lang_img';
$table_columns[$i]['text'] = 'Image (29 x 19)';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'image';
$table_columns[$i]['folder'] = 'lang_img';
$table_columns[$i]['in_crud'] = true;

$i++;
$table_columns[$i]['name'] = 'lang_priority';
$table_columns[$i]['text'] = 'Priority';
$table_columns[$i]['tab'] = 'main';
$table_columns[$i]['input_type'] = 'text';
$table_columns[$i]['in_crud'] = true;

$table_config['key'] = 'lang_id';

// System names: access = Access System, Chat = Chat communication
$table_config['cell_tabs_arr'] = Array (
	'main' => 'Main',
	'chat' => 'Chat'
);