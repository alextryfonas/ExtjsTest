// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.Inspection;
import com.itg.extjstest.domain.InspectionItem;
import java.util.Date;
import java.util.Set;

privileged aspect Inspection_Roo_JavaBean {
    
    public Date Inspection.getInspectionDate() {
        return this.InspectionDate;
    }
    
    public void Inspection.setInspectionDate(Date InspectionDate) {
        this.InspectionDate = InspectionDate;
    }
    
    public String Inspection.getAuthority() {
        return this.authority;
    }
    
    public void Inspection.setAuthority(String authority) {
        this.authority = authority;
    }
    
    public String Inspection.getDocNo() {
        return this.docNo;
    }
    
    public void Inspection.setDocNo(String docNo) {
        this.docNo = docNo;
    }
    
    public Boolean Inspection.getOriginal() {
        return this.original;
    }
    
    public void Inspection.setOriginal(Boolean original) {
        this.original = original;
    }
    
    public Set<InspectionItem> Inspection.getItems() {
        return this.items;
    }
    
    public void Inspection.setItems(Set<InspectionItem> items) {
        this.items = items;
    }
    
    public String Inspection.getRemark() {
        return this.remark;
    }
    
    public void Inspection.setRemark(String remark) {
        this.remark = remark;
    }
    
    public String Inspection.getContracts() {
        return this.contracts;
    }
    
    public void Inspection.setContracts(String contracts) {
        this.contracts = contracts;
    }
    
    public String Inspection.getModel_tested() {
        return this.model_tested;
    }
    
    public void Inspection.setModel_tested(String model_tested) {
        this.model_tested = model_tested;
    }
    
}
