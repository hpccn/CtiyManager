package cn.city.manager.fragment.event;

/**
 * 学校卫生监督（新）
 * @author hpc
 *
 */
public class t_xuexiaoweishengEvent extends CommonEvent {

	
	
	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
	protected String s_yinhuandanwei;//	nvarchar(100)	被监督单位名称	no	事件专属字段。
	protected String s_yinhuanren;//	nvarchar(50)	被监督单位负责人	yes	事件专属字段。
	protected String s_yinhuanaddress;//	ntext	被监督单位地址	no	事件专属字段。
	protected String s_yinhuanlianluo;//	nvarchar(100)	被监督单位电话	yes	事件专属字段。
	protected String s_schooltype;//	nvarchar(50)	学校类型（公办/民办/其他）	no	事件专属字段。
	protected int i_studentnumber;//	int	学生总数	no	事件专属字段。
	protected int i_girlnumber;//	int	女生人数	no	事件专属字段。
	protected int i_boynumber;//	int	男生人数	no	事件专属字段。
	protected String s_studentsushe;//	nvarchar(50)	是否有学生宿舍	no	事件专属字段。
	protected int i_sushestudentnumber;//	int	宿舍学生人数	no	事件专属字段。
	protected String s_baojianshi;//	nvarchar(50)	是否有保健室	no	事件专属字段。

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

	public String getS_schooltype() {
		return s_schooltype;
	}

	public void setS_schooltype(String s_schooltype) {
		this.s_schooltype = s_schooltype;
	}

	public int getI_studentnumber() {
		return i_studentnumber;
	}

	public void setI_studentnumber(int i_studentnumber) {
		this.i_studentnumber = i_studentnumber;
	}

	public int getI_girlnumber() {
		return i_girlnumber;
	}

	public void setI_girlnumber(int i_girlnumber) {
		this.i_girlnumber = i_girlnumber;
	}

	public int getI_boynumber() {
		return i_boynumber;
	}

	public void setI_boynumber(int i_boynumber) {
		this.i_boynumber = i_boynumber;
	}

	public String getS_studentsushe() {
		return s_studentsushe;
	}

	public void setS_studentsushe(String s_studentsushe) {
		this.s_studentsushe = s_studentsushe;
	}

	public int getI_sushestudentnumber() {
		return i_sushestudentnumber;
	}

	public void setI_sushestudentnumber(int i_sushestudentnumber) {
		this.i_sushestudentnumber = i_sushestudentnumber;
	}

	public String getS_baojianshi() {
		return s_baojianshi;
	}

	public void setS_baojianshi(String s_baojianshi) {
		this.s_baojianshi = s_baojianshi;
	}




}
