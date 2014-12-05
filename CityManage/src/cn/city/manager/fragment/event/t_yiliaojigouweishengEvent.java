package cn.city.manager.fragment.event;

/**
 * -医疗机构卫生监督（新）
 * @author hpc
 *
 */
public class t_yiliaojigouweishengEvent extends CommonEvent {

	
	
	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
	protected String s_yinhuandanwei;//	nvarchar(100)	被监督单位名称	no	事件专属字段。
	protected String s_yinhuanren;//;	nvarchar(50)	被监督单位负责人	yes	事件专属字段。
	protected String s_yinhuanaddress;//	ntext	被监督单位地址	no	事件专属字段。
	protected String s_yinhuanlianluo;//	nvarchar(100)	被监督单位电话	yes	事件专属字段。
	protected String s_zhiyexukezheng;//	nvarchar(50)	是否有医疗机构执业许可证	no	事件专属字段。
	protected String s_youxiaoqi;//	nvarchar(50)	是否在有效期范围内	no	事件专属字段。
	protected String s_memberzhiyexuke;//	nvarchar(50)	从业人员是否有医疗机构执业许可证	no	事件专属字段。
	protected String s_memberyiliaozige;//	nvarchar(50)	从业人员是否有医疗机构资格证	no	事件专属字段。
	protected String s_weishengzhidu;//	nvarchar(50)	是否有卫生管理制度	no	事件专属字段。
	protected String s_enviornmentclean;//	nvarchar(50)	环境是否干净整洁	no	事件专属字段。

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_yinhuandanwei;
	}

	@Override
	public String getAddress() {
		// TODO Auto-generated method stub
		return s_yinhuanaddress;
	}

	@Override
	public void setAddress(String address) {
		// TODO Auto-generated method stub
		s_yinhuanaddress = address;
	}

	public String getT_jianchadate() {
		return t_jianchadate;
	}

	public void setT_jianchadate(String t_jianchadate) {
		this.t_jianchadate = t_jianchadate;
	}

	public String getS_yinhuandanwei() {
		return s_yinhuandanwei;
	}

	public void setS_yinhuandanwei(String s_yinhuandanwei) {
		this.s_yinhuandanwei = s_yinhuandanwei;
	}

	public String getS_yinhuanren() {
		return s_yinhuanren;
	}

	public void setS_yinhuanren(String s_yinhuanren) {
		this.s_yinhuanren = s_yinhuanren;
	}

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String s_yinhuanaddress) {
		this.s_yinhuanaddress = s_yinhuanaddress;
	}

	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String s_yinhuanlianluo) {
		this.s_yinhuanlianluo = s_yinhuanlianluo;
	}

	public String getS_zhiyexukezheng() {
		return s_zhiyexukezheng;
	}

	public void setS_zhiyexukezheng(String s_zhiyexukezheng) {
		this.s_zhiyexukezheng = s_zhiyexukezheng;
	}

	public String getS_youxiaoqi() {
		return s_youxiaoqi;
	}

	public void setS_youxiaoqi(String s_youxiaoqi) {
		this.s_youxiaoqi = s_youxiaoqi;
	}

	public String getS_memberzhiyexuke() {
		return s_memberzhiyexuke;
	}

	public void setS_memberzhiyexuke(String s_memberzhiyexuke) {
		this.s_memberzhiyexuke = s_memberzhiyexuke;
	}

	public String getS_memberyiliaozige() {
		return s_memberyiliaozige;
	}

	public void setS_memberyiliaozige(String s_memberyiliaozige) {
		this.s_memberyiliaozige = s_memberyiliaozige;
	}

	public String getS_weishengzhidu() {
		return s_weishengzhidu;
	}

	public void setS_weishengzhidu(String s_weishengzhidu) {
		this.s_weishengzhidu = s_weishengzhidu;
	}

	public String getS_enviornmentclean() {
		return s_enviornmentclean;
	}

	public void setS_enviornmentclean(String s_enviornmentclean) {
		this.s_enviornmentclean = s_enviornmentclean;
	}


}
