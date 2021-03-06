// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.Contract;
import com.itg.extjstest.domain.MaterialDoc;
import com.itg.extjstest.domain.MaterialDocItem;
import com.itg.extjstest.domain.MaterialDocType;
import com.itg.extjstest.domain.StockLocation;
import java.util.Date;
import java.util.Set;

privileged aspect MaterialDoc_Roo_JavaBean {
    
    public Contract MaterialDoc.getContract() {
        return this.contract;
    }
    
    public void MaterialDoc.setContract(Contract contract) {
        this.contract = contract;
    }
    
    public String MaterialDoc.getDeliveryNote() {
        return this.deliveryNote;
    }
    
    public void MaterialDoc.setDeliveryNote(String deliveryNote) {
        this.deliveryNote = deliveryNote;
    }
    
    public String MaterialDoc.getBatchNo() {
        return this.batchNo;
    }
    
    public void MaterialDoc.setBatchNo(String batchNo) {
        this.batchNo = batchNo;
    }
    
    public String MaterialDoc.getPlateNum() {
        return this.plateNum;
    }
    
    public void MaterialDoc.setPlateNum(String plateNum) {
        this.plateNum = plateNum;
    }
    
    public String MaterialDoc.getWorkingNo() {
        return this.workingNo;
    }
    
    public void MaterialDoc.setWorkingNo(String workingNo) {
        this.workingNo = workingNo;
    }
    
    public Date MaterialDoc.getDocDate() {
        return this.docDate;
    }
    
    public void MaterialDoc.setDocDate(Date docDate) {
        this.docDate = docDate;
    }
    
    public Set<MaterialDocItem> MaterialDoc.getItems() {
        return this.items;
    }
    
    public void MaterialDoc.setItems(Set<MaterialDocItem> items) {
        this.items = items;
    }
    
    public MaterialDocType MaterialDoc.getDocType() {
        return this.docType;
    }
    
    public void MaterialDoc.setDocType(MaterialDocType docType) {
        this.docType = docType;
    }
    
    public String MaterialDoc.getTargetWarehouse() {
        return this.targetWarehouse;
    }
    
    public void MaterialDoc.setTargetWarehouse(String targetWarehouse) {
        this.targetWarehouse = targetWarehouse;
    }
    
    public StockLocation MaterialDoc.getTargetStockLocation() {
        return this.targetStockLocation;
    }
    
    public void MaterialDoc.setTargetStockLocation(StockLocation targetStockLocation) {
        this.targetStockLocation = targetStockLocation;
    }
    
    public String MaterialDoc.getInvNo() {
        return this.invNo;
    }
    
    public void MaterialDoc.setInvNo(String invNo) {
        this.invNo = invNo;
    }
    
    public String MaterialDoc.getCause() {
        return this.cause;
    }
    
    public void MaterialDoc.setCause(String cause) {
        this.cause = cause;
    }
    
}
