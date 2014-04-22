<?php

foreach ($table_arr as $row)
{
?>

<div style="width:1300px;">
	<div style="float:left; margin:10px; width: 970px;">	
	<b><?php echo $row['inside_news_name']?></b> [<i>Published: <?php echo $row['inside_news_datetime']?> Author: <b><?php echo $row['inside_news_author']?></b></i>]	
		<div style="margin-top:10px;">
			<?php echo $row['inside_news_text']?>
		</div>
	</div>
	<img style="float:left; margin:10px; width:200px;" src="/files/uploads/inside_news_img/<?php echo $row['inside_news_image']?>" />
</div>
<div style="clear:both"></div>

<a class="news_comments" OnClick="news_comments_dialog(<?php echo $row['inside_news_id'];?>)" item_id="<?php echo $row['inside_news_id'];?>" style="cursor:pointer; text-decoration:underline;">Comments (<?php echo $row['inside_news_comments_count']?>)</a>

<?php
}
?>