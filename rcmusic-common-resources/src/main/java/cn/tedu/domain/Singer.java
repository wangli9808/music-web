package cn.tedu.domain;

import java.io.Serializable;

public class Singer implements Serializable {
	private int singerId;
	private String singerName;
	private String singerIntrodution;
	private String singerImageLink;
	
	public Singer() {
	}
	public Singer(int singerId, String singerName, String singerIntrodution, String singerImageLink) {
		super();
		this.singerId = singerId;
		this.singerName = singerName;
		this.singerIntrodution = singerIntrodution;
		this.singerImageLink = singerImageLink;
	}

	public int getSingerId() {
		return singerId;
	}
	public void setSingerId(int singerId) {
		this.singerId = singerId;
	}
	public String getSingerName() {
		return singerName;
	}
	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}
	public String getSingerIntrodution() {
		return singerIntrodution;
	}
	public void setSingerIntrodution(String singerIntrodution) {
		this.singerIntrodution = singerIntrodution;
	}
	public String getSingerImageLink() {
		return singerImageLink;
	}
	public void setSingerImageLink(String singerImageLink) {
		this.singerImageLink = singerImageLink;
	}
	@Override
	public String toString() {
		return "Singer [singerId=" + singerId + ", singerName=" + singerName + ", singerIntrodution="
				+ singerIntrodution + ", singerImageLink=" + singerImageLink + "]";
	}
}
