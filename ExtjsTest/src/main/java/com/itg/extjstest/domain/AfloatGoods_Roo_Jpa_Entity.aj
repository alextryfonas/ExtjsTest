// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.AfloatGoods;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect AfloatGoods_Roo_Jpa_Entity {
    
    declare @type: AfloatGoods: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long AfloatGoods.id;
    
    @Version
    @Column(name = "version")
    private Integer AfloatGoods.version;
    
    public Long AfloatGoods.getId() {
        return this.id;
    }
    
    public void AfloatGoods.setId(Long id) {
        this.id = id;
    }
    
    public Integer AfloatGoods.getVersion() {
        return this.version;
    }
    
    public void AfloatGoods.setVersion(Integer version) {
        this.version = version;
    }
    
}