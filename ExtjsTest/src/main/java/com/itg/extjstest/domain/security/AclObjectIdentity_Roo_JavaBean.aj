// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain.security;

import com.itg.extjstest.domain.security.AclClass;
import com.itg.extjstest.domain.security.AclObjectIdentity;
import com.itg.extjstest.domain.security.AclSid;

privileged aspect AclObjectIdentity_Roo_JavaBean {
    
    public AclClass AclObjectIdentity.getObject_id_class() {
        return this.object_id_class;
    }
    
    public void AclObjectIdentity.setObject_id_class(AclClass object_id_class) {
        this.object_id_class = object_id_class;
    }
    
    public Long AclObjectIdentity.getObject_id_identity() {
        return this.object_id_identity;
    }
    
    public void AclObjectIdentity.setObject_id_identity(Long object_id_identity) {
        this.object_id_identity = object_id_identity;
    }
    
    public AclObjectIdentity AclObjectIdentity.getParent_object() {
        return this.parent_object;
    }
    
    public void AclObjectIdentity.setParent_object(AclObjectIdentity parent_object) {
        this.parent_object = parent_object;
    }
    
    public AclSid AclObjectIdentity.getOwner_sid() {
        return this.owner_sid;
    }
    
    public void AclObjectIdentity.setOwner_sid(AclSid owner_sid) {
        this.owner_sid = owner_sid;
    }
    
    public boolean AclObjectIdentity.isEntries_inheriting() {
        return this.entries_inheriting;
    }
    
    public void AclObjectIdentity.setEntries_inheriting(boolean entries_inheriting) {
        this.entries_inheriting = entries_inheriting;
    }
    
}
