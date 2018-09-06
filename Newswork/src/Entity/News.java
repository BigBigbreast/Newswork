package Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class News {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String newsid;
	private String newstitle;
	private String newstype;
	private String newssource;
	private String newswriter;
	private String newsissuer;
	private String newsdate;
	private String newskeys;
	private String newsbody;
	private int newsclick;
	private String newsstate;
	private String newsdeletestate;
	
	public int getNewsclick() {
		return newsclick;
	}
	public void setNewsclick(int newsclick) {
		this.newsclick = newsclick;
	}
	public String getNewsstate() {
		return newsstate;
	}
	public void setNewsstate(String newsstate) {
		this.newsstate = newsstate;
	}
	public String getNewsdeletestate() {
		return newsdeletestate;
	}
	public void setNewsdeletestate(String newsdeletestate) {
		this.newsdeletestate = newsdeletestate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNewsid() {
		return newsid;
	}
	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}
	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public String getNewstype() {
		return newstype;
	}
	public void setNewstype(String newstype) {
		this.newstype = newstype;
	}
	public String getNewssource() {
		return newssource;
	}
	public void setNewssource(String newssource) {
		this.newssource = newssource;
	}
	public String getNewswriter() {
		return newswriter;
	}
	public void setNewswriter(String newswriter) {
		this.newswriter = newswriter;
	}
	public String getNewsissuer() {
		return newsissuer;
	}
	public void setNewsissuer(String newsissuer) {
		this.newsissuer = newsissuer;
	}
	public String getNewsdate() {
		return newsdate;
	}
	public void setNewsdate(String newsdate) {
		this.newsdate = newsdate;
	}
	public String getNewskeys() {
		return newskeys;
	}
	public void setNewskeys(String newskeys) {
		this.newskeys = newskeys;
	}
	public String getNewsbody() {
		return newsbody;
	}
	public void setNewsbody(String newsbody) {
		this.newsbody = newsbody;
	}
	

}
