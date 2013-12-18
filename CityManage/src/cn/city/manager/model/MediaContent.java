package cn.city.manager.model;

public class MediaContent {
    private long uploaddate;//": 1380962998588,
    private String position;//": "照片地理信息",
    private String loadperson;//": "照片上传人",
    private String photouploadlevel;//": "照片上传人级别",
    private String url;//": "http: //a.b.c/potho1.jpg",
    private String file;
    private double latitude;//": 38.112,
    private double longitude;//": 116.002
    
    

	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getLoadperson() {
		return loadperson;
	}
	public void setLoadperson(String loadperson) {
		this.loadperson = loadperson;
	}
	public String getPhotouploadlevel() {
		return photouploadlevel;
	}
	public void setPhotouploadlevel(String photouploadlevel) {
		this.photouploadlevel = photouploadlevel;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public long getUploaddate() {
		return uploaddate;
	}
	public void setUploaddate(long uploaddate) {
		this.uploaddate = uploaddate;
	}
}
