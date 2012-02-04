// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain.security;

import com.itg.extjstest.domain.security.AclEntry;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AclEntry_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AclEntry.entityManager;
    
    public static final EntityManager AclEntry.entityManager() {
        EntityManager em = new AclEntry().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AclEntry.countAclEntrys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AclEntry o", Long.class).getSingleResult();
    }
    
    public static List<AclEntry> AclEntry.findAllAclEntrys() {
        return entityManager().createQuery("SELECT o FROM AclEntry o", AclEntry.class).getResultList();
    }
    
    public static AclEntry AclEntry.findAclEntry(Long id) {
        if (id == null) return null;
        return entityManager().find(AclEntry.class, id);
    }
    
    public static List<AclEntry> AclEntry.findAclEntryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AclEntry o", AclEntry.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AclEntry.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AclEntry.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AclEntry attached = AclEntry.findAclEntry(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AclEntry.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AclEntry.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AclEntry AclEntry.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AclEntry merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
