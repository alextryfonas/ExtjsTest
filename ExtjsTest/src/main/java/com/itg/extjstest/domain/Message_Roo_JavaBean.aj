// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.Message;
import com.itg.extjstest.domain.Specification;
import java.util.Date;
import java.util.Set;

privileged aspect Message_Roo_JavaBean {
    
    public String Message.getDepartment() {
        return this.department;
    }
    
    public void Message.setDepartment(String department) {
        this.department = department;
    }
    
    public String Message.getType() {
        return this.type;
    }
    
    public void Message.setType(String type) {
        this.type = type;
    }
    
    public String Message.getArticle() {
        return this.article;
    }
    
    public void Message.setArticle(String article) {
        this.article = article;
    }
    
    public Double Message.getQuantity() {
        return this.quantity;
    }
    
    public void Message.setQuantity(Double quantity) {
        this.quantity = quantity;
    }
    
    public String Message.getDeparture() {
        return this.departure;
    }
    
    public void Message.setDeparture(String departure) {
        this.departure = departure;
    }
    
    public String Message.getSupplier() {
        return this.supplier;
    }
    
    public void Message.setSupplier(String supplier) {
        this.supplier = supplier;
    }
    
    public String Message.getOwner() {
        return this.owner;
    }
    
    public void Message.setOwner(String owner) {
        this.owner = owner;
    }
    
    public Double Message.getCostPrice() {
        return this.costPrice;
    }
    
    public void Message.setCostPrice(Double costPrice) {
        this.costPrice = costPrice;
    }
    
    public Double Message.getSuggestedPrice() {
        return this.suggestedPrice;
    }
    
    public void Message.setSuggestedPrice(Double suggestedPrice) {
        this.suggestedPrice = suggestedPrice;
    }
    
    public String Message.getRemark() {
        return this.remark;
    }
    
    public void Message.setRemark(String remark) {
        this.remark = remark;
    }
    
    public Boolean Message.getIsUrgent() {
        return this.isUrgent;
    }
    
    public void Message.setIsUrgent(Boolean isUrgent) {
        this.isUrgent = isUrgent;
    }
    
    public Set<Specification> Message.getSpecifications() {
        return this.specifications;
    }
    
    public void Message.setSpecifications(Set<Specification> specifications) {
        this.specifications = specifications;
    }
    
    public Date Message.getValidBefore() {
        return this.validBefore;
    }
    
    public void Message.setValidBefore(Date validBefore) {
        this.validBefore = validBefore;
    }
    
    public String Message.getEta() {
        return this.eta;
    }
    
    public void Message.setEta(String eta) {
        this.eta = eta;
    }
    
    public Date Message.getLastChangeTime() {
        return this.lastChangeTime;
    }
    
    public void Message.setLastChangeTime(Date lastChangeTime) {
        this.lastChangeTime = lastChangeTime;
    }
    
}
