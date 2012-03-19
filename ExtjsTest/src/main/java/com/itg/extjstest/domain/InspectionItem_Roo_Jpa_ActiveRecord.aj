// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.InspectionItem;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect InspectionItem_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager InspectionItem.entityManager;
    
    public static final EntityManager InspectionItem.entityManager() {
        EntityManager em = new InspectionItem().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long InspectionItem.countInspectionItems() {
        return entityManager().createQuery("SELECT COUNT(o) FROM InspectionItem o", Long.class).getSingleResult();
    }
    
    public static List<InspectionItem> InspectionItem.findAllInspectionItems() {
        return entityManager().createQuery("SELECT o FROM InspectionItem o", InspectionItem.class).getResultList();
    }
    
    public static InspectionItem InspectionItem.findInspectionItem(Long id) {
        if (id == null) return null;
        return entityManager().find(InspectionItem.class, id);
    }
    
    public static List<InspectionItem> InspectionItem.findInspectionItemEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM InspectionItem o", InspectionItem.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void InspectionItem.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void InspectionItem.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            InspectionItem attached = InspectionItem.findInspectionItem(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void InspectionItem.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void InspectionItem.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public InspectionItem InspectionItem.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        InspectionItem merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}