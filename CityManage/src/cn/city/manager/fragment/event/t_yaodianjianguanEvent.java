package cn.city.manager.fragment.event;
/**
 * 药店监管（新）
 * @author hpc
 *
 */
public class t_yaodianjianguanEvent extends CommonEvent {

	
//	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
//	protected String s_yinhuandanwei;//	nvarchar(100)	医疗机构名称	no	事件专属字段。
//	protected String s_yinhuanren;//	nvarchar(50)	医疗机构负责人	yes	事件专属字段。
//	protected String s_yinhuanaddress;//	ntext	医疗机构经营地址	no	事件专属字段。
//	protected String s_yinhuanlianluo;//	nvarchar(100)	医疗机构电话	yes	事件专属字段。
//	protected String s_yingyezhizhao;//	nvarchar(50)	是否有营业执照	no	事件专属字段。
//	protected String s_yaopinchucun;//	nvarchar(50)	药品储存房间是否干燥通风	no	事件专属字段。

	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
	protected String s_yinhuandanwei;//	nvarchar(100)	药店名称	no	事件专属字段。
	protected String s_yinhuanren;//	nvarchar(50)	药店负责人	yes	事件专属字段。
	protected String s_yinhuanaddress;//	ntext	药店经营地址	no	事件专属字段。
	protected String s_yinhuanlianluo;//	nvarchar(100)	药店电话	yes	事件专属字段。
	protected String s_yingyezhizhao;//	nvarchar(50)	是否有营业执照	no	事件专属字段。
	protected String s_yaopinjingyingxukezheng;//	nvarchar(50)	是否有药品经营许可证	no	事件专属字段。
	protected String s_youxiaoqi;//	nvarchar(50)	药品经营许可证是否在有效期内	no	事件专属字段。
	protected String s_gspcertificate;//	nvarchar(50)	是否通过药品经营质量管理规范（GSP）认证	no	事件专属字段。
	protected String s_baojianpinjingyingxukezheng;//	nvarchar(50)	是否有保健品经营许可证	no	事件专属字段。
	protected String s_baojianpinyouxiaoqi;//	nvarchar(50)	保健品经营许可证是否在有效期内	no	事件专属字段。
    
	
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

	public String getS_yaopinjingyingxukezheng() {
		return s_yaopinjingyingxukezheng;
	}

	public void setS_yaopinjingyingxukezheng(String s_yaopinjingyingxukezheng) {
		this.s_yaopinjingyingxukezheng = s_yaopinjingyingxukezheng;
	}

	public String getS_youxiaoqi() {
		return s_youxiaoqi;
	}

	public void setS_youxiaoqi(String s_youxiaoqi) {
		this.s_youxiaoqi = s_youxiaoqi;
	}

	public String getS_gspcertificate() {
		return s_gspcertificate;
	}

	public void setS_gspcertificate(String s_gspcertificate) {
		this.s_gspcertificate = s_gspcertificate;
	}

	public String getS_baojianpinjingyingxukezheng() {
		return s_baojianpinjingyingxukezheng;
	}

	public void setS_baojianpinjingyingxukezheng(
			String s_baojianpinjingyingxukezheng) {
		this.s_baojianpinjingyingxukezheng = s_baojianpinjingyingxukezheng;
	}

	public String getS_baojianpinyouxiaoqi() {
		return s_baojianpinyouxiaoqi;
	}

	public void setS_baojianpinyouxiaoqi(String s_baojianpinyouxiaoqi) {
		this.s_baojianpinyouxiaoqi = s_baojianpinyouxiaoqi;
	}



}
