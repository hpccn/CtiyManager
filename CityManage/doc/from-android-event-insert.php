<?php 
/* 基本信息：
android端用http方式，POST数据给服务器端；
包括json（对象）数据和图片/视频文件；
服务器端php指定一个url，然后运行代码，把接收的变量和json，存入数据库，或者跟数据库进行比对：如果是用户名密码则比对后，从服务器去出关联数据，然后在当前页面echo输出成为新的json。
可以用手机在本地用局域网wifi测试：

现在上传和修改图片规则：手机第一次上传时候，json中s_photo为空，我自己取图像的后缀，自己做新名字。
我回传给你的时候，s_photo字段有文件名。
你保存修改的时候，选择了新图片，我会重新获取图片，并重新得到一个名字，保存到服务器s_photo。这之前，我会去查询数据库，找到原来的s_photo，然后删除原来的图和他的thumbnail。然后把新图保存的时候，才更新s_photo
video同样
*/  
?>
	
<?php
	header("Content-Type:text/html;charset=utf-8");

	$s_kind = ""; 
	$s_json = ""; //接收传过来的json（字符串）
	
	$s_kind = $_POST['kind'];//t_weijian或者其他表
	$s_id = $_POST['id'];//登录的用户名
	$s_json = $_POST['content'];//取得json字符串
	$s_content = json_decode($s_json);//变回了对象

	//转换顺序，然后写入数据库
	$con = mysql_connect("localhost","iisale_f","seatosky");  
	//$con = mysql_connect("localhost","drupal","seatosky");  
	if (!$con)
	{
		die('Could not connect: ' . mysql_error());
	}
	$db_selected = mysql_select_db("iisale",$con);
	//$db_selected = mysql_select_db("drupal724wangge",$con);
	mysql_query("SET NAMES 'UTF8'");
	$tmp_date=date("Y-m-d");


	//此处添加根据id获取s_netid和s_villageid的代码！！！！！！！！！！！！！！！！
	$sql = "SELECT * FROM t_register WHERE s_username ='".$s_id."'";
	$result = mysql_query($sql, $con); 
	$num_rows = mysql_num_rows($result);
		
	if($num_rows == 0) 
	{
		header("HTTP/1.1 401 Bad Request"); 
	}
	else
	{	
		//由用户名取用户姓名，用户级别
		while($row = mysql_fetch_array($result, MYSQL_ASSOC))
		{
			$s_name = $row['s_name'];
			$s_level = $row['s_level'];
			break;
		}	
		//由村名字取村ID，由网格名字取网格id等信息
		$result = mysql_query("SELECT s_villageid FROM t_villageinfo WHERE s_villagename='".$s_content->s_villagename."' LIMIT 1", $con);//关联性选择直接用数据库调出
		while($row = mysql_fetch_array($result, MYSQL_ASSOC))
		{
		//foreach ($result as $record) {
			$s_villageid = $row['s_villageid'];
			//$s_villageid = $record->s_villageid;
			break;
		}
		$result = mysql_query("SELECT * FROM t_netbaseinfo WHERE s_netname='".$s_content->s_netname."' ORDER BY s_yearmonth DESC LIMIT 1", $con);//应该是只有一行，不然查询量会非常大！！！
		while($row = mysql_fetch_array($result, MYSQL_ASSOC))
		{
		//foreach ($result as $record) {
			$s_netid = $row['s_netid'];
			$s_netleadername = $row['s_netleadername'];
			$s_netleadertel = $row['s_netleadertel'];
			break;
		}	

		////////////////////////////////////////////////////////////////////
		$s_photo = "";
		$s_photo_end = end(explode('.',basename($_FILES['photo']['name'])));//无需手机端发送后缀名
		if($s_photo_end !="")//有图像文件上传
		{
			$s_photo = date("YmdHis")."_".$s_id.".".$s_photo_end;
		}

		$s_video = "";
		$s_video_end = end(explode('.',basename($_FILES['video']['name'])));//无需手机端发送后缀名
		if($s_video_end !="")//有视频文件上传
		{
			$s_video = date("YmdHis")."_".$s_id.".".$s_video_end;
		}

		switch ($s_kind)
		{
			case "t_shengchan":
			$sql = "INSERT INTO t_shengchan (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername, s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, s_yinhuandanwei, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','生产安全','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."','".$s_content->s_yinhuandanwei."','"
			.$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;

			case "t_xiaofang":
			$sql = "INSERT INTO t_xiaofang (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername, s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, s_yinhuandanwei, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','消防安全','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."','".$s_content->s_yinhuandanwei."','"
			.$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;			
			
			case "t_meiqizhongdu":
			$sql = "INSERT INTO t_meiqizhongdu (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','煤气中毒','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."','".$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
					
			case "t_huanjing":
			$sql = "INSERT INTO t_huanjing (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, s_garbagetype, d_garbagequantity, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','环境安全','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."','".$s_content->s_garbagetype."','".$s_content->d_garbagequantity."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
			
			case "t_shipin":
			$sql = "INSERT INTO t_shipin (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuandanwei, s_license, s_weishengxuke, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','食品安全','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuandanwei."','".$s_content->s_license."','".$s_content->s_weishengxuke."','".$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;
							
			case "t_yaopin":
			$sql = "INSERT INTO t_yaopin (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuandanwei, s_yinhuandanweitype, s_license, s_weishengxuke, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','药品安全','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuandanwei."','".$s_content->s_yinhuandanweitype."','".$s_content->s_license."','".$s_content->s_weishengxuke."','".$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
			
			case "t_weishengsuo":
			$sql = "INSERT INTO t_weishengsuo (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuandanwei, t_jianchadate, s_weishengxuke, s_healthcertificate, s_outofbusiness, s_handlingroomclean, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','卫生所检查','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuandanwei."','".$s_content->t_jianchadate."','".$s_content->s_weishengxuke."','".$s_content->s_healthcertificate."','".$s_content->s_outofbusiness."','".$s_content->s_handlingroomclean."','".$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
			
			case "t_weijian":
			$sql = "INSERT INTO t_weijian (t_updatetime, t_tijiao, s_yearmonth, s_construction, s_discovererlevel, s_discoverername, s_eventtype, s_landstatus, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvemethod, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_weijianxiangduiren, s_yinhuanaddress, s_yinhuanlianluo, s_yinhuanren, s_yinhuanxiangqing, t_instructiondate, d_landarea, d_jianzhumianji, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','".$s_content->s_construction."','"
			.$s_level."','".$s_name."','违章建筑','"
			.$s_content->s_landstatus."','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvemethod."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_weijianxiangduiren."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanlianluo."','"
			.$s_content->s_yinhuanren."','".$s_content->s_yinhuanxiangqing."','".$s_content->t_instructiondate."',".$s_content->d_landarea.",".$s_content->d_jianzhumianji.",".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 			
			break;		
			
			case "t_wuzhaojingying":
			$sql = "INSERT INTO t_wuzhaojingying (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_houseowner, s_businessitems, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','无照经营','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_houseowner."','".$s_content->s_businessitems."','".$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
			
			case "t_maodunpaicha":
			$sql = "INSERT INTO t_maodunpaicha (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, t_paichadate, s_jiufentype, s_jiufenren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','矛盾排查','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."','".$s_content->t_paichadate."','".$s_content->s_jiufentype."','".$s_content->s_jiufenren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
			
			case "t_xingshianjian":
			$sql = "INSERT INTO t_xingshianjian (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','刑事案件','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;	
			
			case "t_jiaotong":
			$sql = "INSERT INTO t_jiaotong (t_updatetime, t_tijiao, s_yearmonth, s_discovererlevel, s_discoverername, s_eventtype, s_leaderid, s_leaderinstruction, s_leadername,s_netid, s_netleadername, s_netleadertel, s_netname, s_photo, s_remark, s_result, s_solvestatus, s_unsolvedreason, s_updatelevel, s_updatename, s_video, s_villagename, s_voiceinstruction, s_yinhuanaddress, s_yinhuanxiangqing, s_yinhuanren, s_yinhuanlianluo, d_longitude, d_latitude) 
			VALUES ('".$tmp_date."','".$tmp_date."','".date("Y-m")."','"
			.$s_level."','".$s_name."','交通安全','".$s_content->s_leaderid."','".$s_content->s_leaderinstruction."','".$s_content->s_leadername."','"
			.$s_netid."','".$s_netleadername."','".$s_netleadertel."','".$s_content->s_netname."','".$s_photo."','".$s_content->s_remark."','".$s_content->s_result."','".$s_content->s_solvestatus."','".$s_content->s_unsolvedreason."','".$s_level."','"
			.$s_name."','".$s_video."','".$s_content->s_villagename."','"
			.$s_content->s_voiceinstruction."','".$s_content->s_yinhuanaddress."','".$s_content->s_yinhuanxiangqing."','".$s_content->s_yinhuanren."','".$s_content->s_yinhuanlianluo."',".$s_content->d_longitude.",".$s_content->d_latitude.")";
			$result = mysql_query($sql, $con); 				
			break;																
		}
		
	
		//写入一个文本文件做输出测试
		//$datetime=date("YmdHis");
		//$file="test.txt";
		//$handle=fopen($file,"w");
		//fwrite($handle,"this is a test");
		//fwrite($handle,$s_photo."-insert");
		//fclose($handle);
		
		
		//通过使用 PHP 的全局数组 $_FILES，从客户计算机向远程服务器上传文件
		//命名规则是：提交人username-精确时间戳.jpg/3gp
		//传递的名字分别是$_POST['photo']，$_POST['video']
		//路径是相对于代码的相对路径：http://www.iisale.com/wangge/sites/all/themes/wangge/android/photo目录
		if (file_exists(dirname(__FILE__)."/photo/" . $_FILES["photo"]["name"]))
		{
			echo $_FILES["photo"]["name"] . " already exists. ";
		}
		else
		{
			move_uploaded_file($_FILES["photo"]["tmp_name"], dirname(__FILE__)."/photo/".$s_photo);
			echo "Stored in: " . dirname(__FILE__)."/photo/" . $_FILES["photo"]["name"];
		}		

		if (file_exists("/video/" . $_FILES["video"]["name"]))
		{
			echo $_FILES["video"]["name"] . " already exists. ";
		}
		else
		{
			move_uploaded_file($_FILES["video"]["tmp_name"], dirname(__FILE__)."/video/".$s_video);
			echo "Stored in: " . dirname(__FILE__)."/video/" . $_FILES["video"]["name"];
		}
			
		
		//保存该图为一张缩略图，保存到icon文件夹，但名字还是s_photo
		include "image-to-thumbnail.php";
		
		$src_img = dirname(__FILE__)."/photo/".$s_photo;
		$dst_img = dirname(__FILE__)."/icon/".$s_photo;
		$stat = img2thumb($src_img, $dst_img, $width = 72, $height = 72, $cut = 1, $proportion = 0);
		//if($stat){
			//echo 'Resize Image Success!<br />';
			//echo '<img src="'.$dst_img.'" />';	
		//}else{
			//echo 'Resize Image Fail!';	
		//}
		
		
		
			
	}


	mysql_close($con); 
?>	
