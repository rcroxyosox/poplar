var date = 0, quality = 1, qualvis=0, mainvis=1, optvis=1;
var offset = 0, picnum = 0, picvis=0, picnumf = 0;
var dates = new Array("images/slideShow");
var pics = new Array(
	new Array("winter_WellHood_march_1",'<b>Winter 2011 -Photo &copy; Daniel Dunn</b>'),
				new Array("winter_WellHood_march_10",'<b>Winter 2011</b>'),
				new Array("winter_WellHood_march_11",'<b>Winter 2011</b>'),
				new Array("winter_WellHood_march_21",'<b>Winter 2011</b>'),
				new Array("winter_Wellington_Christmas_14",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_2",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_29",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_3",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_41",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_49",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_54",'<b>Winter Solstice Party 2010</b>'),
				new Array("winter_Wellington_Christmas_69",'<b>Winter Solstice Party 2010</b>'),
				new Array("hall_wellington_halloween_112",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_2",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_38",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_3_copy",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_4",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_6",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_8",'<b>Halloween 2010</b>'),
				new Array("hall_wellington_halloween_9",'<b>Halloween 2010</b>'),
			
				new Array("ss_smart",'<p></p><p><a href="news_11_22_2002.html"><b>More Smart Growth awards would be nice</b></a><br>Summit Daily News - November 22, 2002</p><p><a href="news_11_21_2002.html"><b>What made the Smart Growth award</b></a><br>Summit Daily News - November 21, 2002</p>'),
				new Array("ss_willowgreenjuly",'Willow Green'),
				new Array("ss_1",'<a href="homes_catalog_ponderosa.htm">Ponderosa</a>'),
				new Array("ss_04_porch",'<b>Ponderosa Porch</b>'),
				new Array("ss_2",'<b>Ponderosa Living Room</b>'),
				new Array("ss_3",'<b>Ponderosa Master Bedroom</b>'),
				new Array("ss_ponderosa_kitchen",'<b>Ponderosa Kitchen</b>'),
				new Array("ss_willow_green",'<b>Street with Houses</b>'),
				new Array("ss_7",'<b>Midnight Sun Road</b>'),
				new Array("ss_well_window",'<b>View from a Window</b>'),
				new Array("ss_horses",'<b>Summer Solstice Party</b>'),
				new Array("ss_kids",'<b>Summer Solstice Party</b>'),
				new Array("ss_mayor",'<b>Summer Solstice Party</b>'),
				new Array("ss_balloons",'<b>Summer Solstice Party</b>'),
				new Array("ss_wagon",'<b>Summer Solstice Party</b>'),
				new Array("ss_dave_kids",'<b>Summer Solstice Party</b>'),
				new Array("ss_bbq",'<b>Summer Solstice Party</b>'),
				new Array("ss_chalk",'<b>Summer Solstice Party</b>'),
				new Array("ss_chalk1",'<b>Summer Solstice Party</b>'),
				new Array("ss_dan",'<b>Summer Solstice Party</b>'),
				new Array("ss_fire",'<b>Summer Solstice Party</b>'),
				new Array("ss_david",'<b>Summer Solstice Party</b>'),
				new Array("ss_07_04_02_ann",'<b>Summer Solstice Party</b>'),
				new Array("ss_07_04_02_kids",'<b>Summer Solstice Party</b>'),
				new Array("ss_07_04_02_pinwheel",'<b>Summer Solstice Party</b>'),
				new Array("ss_07_04_02_porch",'<b>Summer Solstice Party</b>'),
				new Array("ss_07_04_02_union_mill",'<b>Summer Solstice Party</b>'),
				new Array("ss_ss_05_firetruck",'<b>Summer Solstice Party</b>'),
				new Array("ss_ss_05_green",'<b>Summer Solstice Party</b>'),
				new Array("ss_ss_05_parade",'<b>Summer Solstice Parade</b>'),
				new Array("ss_ss_05_parade2",'<b>Summer Solstice Parade</b>'),
				new Array("ss_ss_05_singing",'<b>Summer Solstice Party</b>'),
				new Array("ss_02_goldrungulchrace",'<b>Gold Run Gulch Race</b>'),
				new Array("ss_07_04_02_union_mill2",'<b>Fall</b>'),
				new Array("ss_fall_02_spruce",'<b>Fall</b>'),
				new Array("ss_fall_02_willow",'<b>Fall</b>'),
				new Array("ss_fall_05_ponderosa",'<b>Fall</b>'),
				new Array("ss_winter_03_unionmill",'<b>Union Mill</b>'),
				new Array("ss_winter_05_garages",'<b>Garages Under Snow</b>'),
				new Array("ss_winter_02_double",'<b>Winter</b>'),
				new Array("ws_neighbors",'<b>Winter Solstice Party</b>'),
				new Array("ws_reindeer",'<b>Winter Solstice Party</b>'),
				new Array("ws_reindeer_santa",'<b>Winter Solstice Party</b>'),
				new Array("ss_david_dog",'<b>Winter</b>'),
				new Array("ss_winter_02_hgtv",'<b>Winter</b>'),
				new Array("ss_4",'<b>Summer Green, Looking West</b>'),
				new Array("ss_5",'<b>Summer Green, Looking East</b>'),
				new Array("ss_6",'<b>Poplar</b>'),
				new Array("ss_school_bus",'<b>School Bus</b>'),
				new Array("ss_rodeo_winter",'<b>Rodeo Winter</b>'),
				new Array("ss_willowgreen",'<b>Willow Green</b>'));

function init() {

	openDate(0);

}

function openDate(datenum) {
	offset=0;
	date = datenum;
	drawThumbs();
}

function writeToID(id, text)
{
	if (document.getElementById)
	{
		x = document.getElementById(id);
		x.innerHTML = text;
	}
	else if (document.all)
	{
		x = document.all[id];
		x.innerHTML = text;
	}
	else if (document.layers)
	{
		x = document.layers[id];
		text2 = '<P CLASS="pic">' + text + '</P>';
		x.document.open();
		x.document.write(text2);
		x.document.close();
	}
}

function showHidePic(id) {
	showHideID(id, picvis);
	showHideID('thumbWrapper', mainvis);

	picvis = (picvis == 0)?1:0;
	mainvis = (mainvis == 0)?1:0;
}

function showHideID(id, vis) {

	if (document.getElementById)
	{
		x = document.getElementById(id);
		x.style.display=((vis==0)?"block":"none");
	}
	else if (document.all)
	{
		x = document.all[id];
		x.style.display=((vis==0)?"block":"none");
	}
	else if (document.layers)
	{
		x = document.layers[id];
		x.display=((vis==0)?"block":"none");
	}
}

function openPic(picnum2) {

	var size = 0;

	picnum = picnum2; //just in case

	if(picnum < 0) {
		content = "";
		writeToID("picID",content);
		showHidePic('picID');
	}

	else {
	
		picnumf = picnum;

		content = "<table cellSpacing=0 cellPadding=0 width='800'>";

	//topnavbar
		content += "<tr><td width='300' align='right' class='picstd1' valign='middle'>";

		if(picnum > 0) {
			content += "<a href='#' onClick='javascript:prevPic();'>";
			content += "<img src='images/button_back.gif' class='picsbut' border='0'></a></td>";
		}
		else {
			content += "<a href='#' onClick='javascript:openPic(-1);'>";
			content += "<img src='images/button_back.gif' class='picsbut' border='0'></a></td>";
		}

		content += "<td width='200' align='center' valign='middle' style='text-align: center;'";
		content += "><a href='#' onClick='javascript:openPic(-1);'>";
		content += "<img src='images/button_index.gif' class='picsbut' border='0'></a></td>";
		content += "<td width='300' align='left' class='picstd2' valign='middle'>";

		if((picnum+1)< pics.length) {
			content += "<a href='#' onClick='javascript:nextPic();'>";
			content += "<img src='images/button_next.gif' class='picsbut' border='0'></a>";
		}
		else {
			content += "<a href='#' onClick='javascript:openPic(-1);'>";
			content += "<img src='images/button_next.gif' class='picsbut' border='0'></a>";
		}

		content += "</td></tr>";
	//end topnavbar

		content += "<tr>";
		content += "<td colspan='3' align='center' valign='middle' width='800'><a href='#'";
		content += " onclick='javascript:openPic(-1);'>";

		content += "<img src='" + dates[date] + "/" + pics[picnumf][0] + ".jpg' ";

		content += "class='pic' border='0' alt='Click to close'></a></td>";
		content += "</tr>";

	//btmnavbar
		content += "<tr>";

		content += "<td height='60' align='center' colspan='3' valign='middle' style=''";
		content += ">" + pics[picnumf][1] + "</td>";

		content += "</tr>";
	//end btmnavbar

		content += "</table>";

		writeToID("picID",content);
		
		if(picvis==0)
			showHidePic("picID");
	}
}

function drawThumbs() {

	content = "<table cellSpacing=10 cellPadding=0 width='100%'><tr>";

	for(i=0;i<pics.length;i++) {
	
		picnumf = (i+offset);

		content += "<td align='center' valign='top'>";

		if((i+offset) <= pics.length) {
			content += "<a href='#' onClick='javascript:openPic(" + (i+offset) + ")'>";
			content += "<img src='" + dates[date] + "/" + pics[picnumf][0] + "_t.jpg' style='border:1px solid #002200' border='0'></a>";
		}
		else {
			content += "<img src='images/blank.gif' width='160' height='120' border='0'>";
		}

		content += "</td>";

		if(((i+1) % 6) == 0) content += "</tr><tr>";

	}

	content += "</tr>";
	content += "</table>";

	writeToID("Thumbs",content);
}

function drawThumbs2() {

	content = "<table cellSpacing=10 cellPadding=0 width='100%'><tr>";

	for(i=0;i<6;i++) {
	
		picnumf = (i+offset);

		content += "<td align='center' valign='top'>";

		if((i+offset) <= pics.length) {
			content += "<a href='#' onClick='javascript:openPic(" + (i+offset) + ")'>";
			content += "<img src='" + dates[date] + "/" + pics[picnumf][0] + "_t.jpg' style='border:1px solid #002200' border='0'></a>";
		}
		else {
			content += "<img src='images/blank.gif' width='160' height='120' border='0'>";
		}

		content += "</td>";

		if(((i+1) % 6) == 0) content += "</tr><tr>";

	}

	content += "</tr>";
	content += "</table>";

	writeToID("Thumbs",content);
}


function drawPicNav() {

	content = "<table cellSpacing=0 cellPadding=0 width='100%'><tr>";
	content += "<td width='100' height='20' style='border-right:1px solid #660000;'>";

	if(offset != 0)
		content += "<a href='#' onClick='javascript:prevPics();'><img src='images/prevftr.jpg' border='0'></a></td>";
	else
		content += "<img src='images/prevftr2.jpg' border='0'></td>";

	content += "<td width='440' height='20' align='center'><span class='navbar'>";
	content += "" + pics[picnumf][1] + "</span></td>";
	content += "<td width='100' height='20' style=''>";

	if((offset+6) < pics.length)
		content += "<a href='#' onClick='javascript:nextPics();'><img src='images/nextftr.jpg' border='0'></a>";
	else
		content += "<img src='images/nextftr2.jpg' border='0'>";

	content += "</td></tr>";
	content += "</table>";

	writeToID("PicNav",content);
}

function nextPics() {
	offset += 6;
	drawThumbs();
	drawPicNav();

}

function prevPics() {
	offset -= 6;
	drawThumbs();
	drawPicNav();
}

function nextPic() {
	picnum++;

	openPic(picnum);
}

function prevPic() {
	picnum--;
	openPic(picnum);
}