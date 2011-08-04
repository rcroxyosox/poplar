<?php 
$homedirectory = "";
include($_SERVER['DOCUMENT_ROOT'].'/lib/header.php');
//include($homedirectory."lib/");
?>
<script type="text/javascript">
$(document).ready(function(){
	$('#tick').cycle({ 
    fx:    'fade',
	speed: 1000,
	timeout: 5000, 
    pause:  1
	});
});
</script>

<?php
include($_SERVER['DOCUMENT_ROOT'].'/lib/top_content.php'); 
?>
<div id="animation">
  <img src="images/talari_day.jpg" width="918" alt="Adaptive Private Networking" />
</div>
<div class="clearfloats"></div>
<div id="quicklinks_and_feeds">
  <div id="orange_gradient_top"></div>
  <div class="clearfloats"></div>
  <div id="orange_gradient">
    <div id="big_orange_text">
      <ul>
	<li>APN Appliances</li>
	<li>Latest News</li>
      </ul>
    </div>
      <p id="little_orange_text">Quick Links</p>
  </div>
  <div class="clearfloats"></div>
  <div id="quicklinks_content">
    <div id="left_quicklink">
      <p>APN Deployment: A seamless Addition to Existing Networks</p>
      <p class="learn_more">Learn More <img src="images/talari_blue_arrow.gif" width="6" alt="Quicklink" /></p>
      <p>Reduce Monthly WAN Costs by 40%-90%</p>
      <p class="learn_more">Learn More <img src="/images/talari_blue_arrow.gif" width="6" alt="Quick Link" /></p>  
    </div>
    <div id="center_quicklink">
		<?php
			require_once('magpierss/rss_fetch.inc');
			$rss = fetch_rss( "http://talari.typepad.com/talariblog/atom.xml" );
			
			echo "<ul>";
			foreach ($rss->items as $item) {
				$href = $item['link'];
				$title = $item['title'];
				echo "<li><a href=$href target=\"_blank\">$title</a></li>";
			}
			echo "</ul>";
		?>
		<div class="clearfloats"></div>
      <a href="http://talari.typepad.com/talariblog/atom.xml"><img src="images/talari_rss_feed_logo.gif" width="20" alt="Subscribe to Talari Networks News" /></a>
    </div>
    <div id="right_quicklink">
      <p id="quicklinks_heading">Overview</p>
      <p>Multipath Bandwidth Spectrometry</p>
      <p>Resilient Multipath Connectivity</p>
      <p>White Papers</p>
      <p>Customer Testimonials</p>
      <p>Partners</p>
      <p class="mailing_lists">Join Our Mailing List</p>
    </div>
  </div>
</div>
<div id="callouts">
	<div id="top_callout"><a href="<?php echo($homedirectory."index.php") ?>"><span class="callout_text">Learn More</span></a></div>
    <div class="clearfloats"></div>
	<div id="middle_callout"><a href="<?php echo($homedirectory."index.php") ?>"><span class="callout_text">White Papers</span></a></div>
    <div class="clearfloats"></div>
	<div id="bottom_callout"><a href="http://talari.typepad.com/" target="_blank"><span class="callout_text">Talari Blog</span></a></div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/lib/footer.php');  ?>