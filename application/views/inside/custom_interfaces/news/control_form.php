<div id="search_div">

Fast Search: &nbsp;<input type="text" style="width:250px;" value="" id="pdg_fsearch" name="pdg_fsearch" placeholder="Search..." />
&nbsp;&nbsp;&nbsp;&nbsp;
On page: 
<input type="text" value="100" id="pdg_limit" name="pdg_limit" /> cells
&nbsp;&nbsp;&nbsp;&nbsp;
<button class="btn btn-mini" type="button" id="pdg_send">Send</button>
&nbsp;&nbsp;&nbsp;&nbsp;
 <a id="pdg_page_prev">&lt;&lt;</a>  Page: <b id="pdg_page_text">1</b>  <a id="pdg_page_next">&gt;&gt;</a>
 <input type="hidden" id="pdg_page" name="pdg_page" value="1" />
 
<?php 
if (isset ($user_info_arr))
{
	echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>User:</b> ';
	echo '<span style="color:#ddf; font-weight:bold;"><b>';
	echo $user_info_arr['users']['first_name']." ".$user_info_arr['users']['last_name']."</b></span> [".$user_info_arr['id']."]";
	echo ' <b>Входит в группы:</b> ';
	foreach ($user_info_arr['groups'] as $groups) {echo $groups['description']." ";}
}
?>
</div>