package com.entities;
import java.util.*;
import jakarta.persistence.*;


@Entity
@Embeddable
@Table(name="Notes")
public class Note {
	@Id
private int id;
private String title;
@Column(length=1500)
private String content;
private String addeddate;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAddeddate() {
	return addeddate;
}
public void setAddeddate(String addeddate) {
	this.addeddate = addeddate;
}
public Note(String title, String content, String addeddate) {
	this.id=new Random().nextInt(100000);
	this.title = title;
	this.content = content;
	this.addeddate = addeddate;
}
public Note() {
}



}
