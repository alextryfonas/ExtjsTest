// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.Specification;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Specification_Roo_Jpa_Entity {
    
    declare @type: Specification: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Specification.id;
    
    @Version
    @Column(name = "version")
    private Integer Specification.version;
    
    public Long Specification.getId() {
        return this.id;
    }
    
    public void Specification.setId(Long id) {
        this.id = id;
    }
    
    public Integer Specification.getVersion() {
        return this.version;
    }
    
    public void Specification.setVersion(Integer version) {
        this.version = version;
    }
    
}
