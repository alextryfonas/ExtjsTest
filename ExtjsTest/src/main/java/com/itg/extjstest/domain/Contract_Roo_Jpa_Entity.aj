// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.Contract;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Contract_Roo_Jpa_Entity {
    
    declare @type: Contract: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Contract.id;
    
    @Version
    @Column(name = "version")
    private Integer Contract.version;
    
    public Long Contract.getId() {
        return this.id;
    }
    
    public void Contract.setId(Long id) {
        this.id = id;
    }
    
    public Integer Contract.getVersion() {
        return this.version;
    }
    
    public void Contract.setVersion(Integer version) {
        this.version = version;
    }
    
}
