package cn.city.manager.fragment.event;

/**
 * 医疗机构监管（新）
 * @author hpc
 *
 */
public class t_yiliaojigoujianguanEvent extends CommonEvent {

	
//	protected String s_yinhuandanwei;//	食品单位名称	no
//	protected String s_yinhuanaddress;//	营业地点	no
//	protected String s_license;//	是否有营业执照	no					下拉列表，单选：是，否
//	protected String s_weishengxuke;//	是否有卫生许可证	no		下拉列表，单选：是，否
//	protected String s_yinhuanren;//	隐患单位负责人	yes
//	protected String s_yinhuanlianluo;//	隐患单位电话	yes
	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
	protected String s_yinhuandanwei;//	nvarchar(100)	医疗机构名称	no	事件专属字段。
	protected String s_yinhuanren;//	nvarchar(50)	医疗机构负责人	yes	事件专属字段。
	protected String s_yinhuanaddress;//	ntext	医疗机构经营地址	no	事件专属字段。
	protected String s_yinhuanlianluo;//	nvarchar(100)	医疗机构电话	yes	事件专属字段。
	protected String s_yingyezhizhao;//	nvarchar(50)	是否有营业执照	no	事件专属字段。
	protected String s_yaopinchucun;//	nvarchar(50)	药品储存房间是否干燥通风	no	事件专属字段。

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

	public String getS_yingyezhizhao() {
		return s_yingyezhizhao;
	}

	public void setS_yingyezhizhao(String s_yingyezhizhao) {
		this.s_yingyezhizhao = s_yingyezhizhao;
	}

	public String getS_yaopinchucun() {
		return s_yaopinchucun;
	}

	public void setS_yaopinchucun(String s_yaopinchucun) {
		this.s_yaopinchucun = s_yaopinchucun;
	}



}
