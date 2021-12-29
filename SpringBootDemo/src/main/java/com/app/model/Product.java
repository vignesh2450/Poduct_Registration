package com.app.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;
@Entity
@Table(name="PRODUCTTAB")
@Data
public class Product {
@Id
@Column(name="id")
@GeneratedValue
private Integer id;
@Column(name="code")
private String code;
@Column(name="name")
private String name;
@Column(name="cost")
private Double cost;
@Column(name="gst")
private String gst;
@Column(name="note")
private String note;
}