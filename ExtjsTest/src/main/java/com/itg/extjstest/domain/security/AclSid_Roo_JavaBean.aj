// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain.security;

import com.itg.extjstest.domain.security.AclSid;

privileged aspect AclSid_Roo_JavaBean {
    
    public boolean AclSid.isPrincipal() {
        return this.principal;
    }
    
    public void AclSid.setPrincipal(boolean principal) {
        this.principal = principal;
    }
    
    public String AclSid.getSid() {
        return this.sid;
    }
    
    public void AclSid.setSid(String sid) {
        this.sid = sid;
    }
    
}
