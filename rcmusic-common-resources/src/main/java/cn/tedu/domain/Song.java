package cn.tedu.domain;

public class Song implements java.io.Serializable {
	private Integer songId;
	private String songName;
	private String songSingerId;
	private String songLink;
	private String songLyric;
	private String photoLink;
	public Song(){}
	public Song(Integer songId, String songName, String songSingerId, String songLink, String songLyric,
			String photoLink) {
		super();
		this.songId = songId;
		this.songName = songName;
		this.songSingerId = songSingerId;
		this.songLink = songLink;
		this.songLyric = songLyric;
		this.photoLink = photoLink;
	}
	public Integer getSongId() {
		return songId;
	}
	public void setSongId(Integer songId) {
		this.songId = songId;
	}
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public String getSongSingerId() {
		return songSingerId;
	}
	public void setSongSingerId(String songSingerId) {
		this.songSingerId = songSingerId;
	}
	public String getSongLink() {
		return songLink;
	}
	public void setSongLink(String songLink) {
		this.songLink = songLink;
	}
	public String getSongLyric() {
		return songLyric;
	}
	public void setSongLyric(String songLyric) {
		this.songLyric = songLyric;
	}
	public String getPhotoLink() {
		return photoLink;
	}
	public void setPhotoLink(String photoLink) {
		this.photoLink = photoLink;
	}
	@Override
	public String toString() {
		return "Song [songId=" + songId + ", songName=" + songName + ", songSingerId=" + songSingerId + ", songLink="
				+ songLink + ", songLyric=" + songLyric + ", photoLink=" + photoLink + "]";
	}
}
