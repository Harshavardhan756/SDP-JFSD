package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "servicerequest_table")
public class ServiceRequests {
  
    @Column(name="service_id")
    private int id;
    @Id
  @Column(name="service_name",nullable=false,length = 50)
  private String serviceName;
  @Column(name="service_type",length = 50)
    private String serviceType;
  @Column(name="service_date",length = 50)
    private String date;
  @Column(name="service_time",nullable=false,length = 50)
    private String time;
  @Column(name="service_discription",nullable=false,length = 50)
    private String description;
  @Column(name="service_status")
  private boolean status;
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getServiceName() {
    return serviceName;
  }
  public void setServiceName(String serviceName) {
    this.serviceName = serviceName;
  }
  public String getServiceType() {
    return serviceType;
  }
  public void setServiceType(String serviceType) {
    this.serviceType = serviceType;
  }
  public String getDate() {
    return date;
  }
  public void setDate(String date) {
    this.date = date;
  }
  public String getTime() {
    return time;
  }
  public void setTime(String time) {
    this.time = time;
  }
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }
  public boolean getStatus() {
    return status;
  }
  public void setStatus(boolean b) {
    this.status = b;
  }
  @Override
  public String toString() {
    return "ServiceRequests [id=" + id + ", serviceName=" + serviceName + ", serviceType=" + serviceType + ", date="
        + date + ", time=" + time + ", description=" + description + ", status=" + status + "]";
  }
 
  
}