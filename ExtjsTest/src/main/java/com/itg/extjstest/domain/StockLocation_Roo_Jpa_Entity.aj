// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.StockLocation;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect StockLocation_Roo_Jpa_Entity {
    
    declare @type: StockLocation: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long StockLocation.id;
    
    @Version
    @Column(name = "version")
    private Integer StockLocation.version;
    
    public Long StockLocation.getId() {
        return this.id;
    }
    
    public void StockLocation.setId(Long id) {
        this.id = id;
    }
    
    public Integer StockLocation.getVersion() {
        return this.version;
    }
    
    public void StockLocation.setVersion(Integer version) {
        this.version = version;
    }
    
}
