// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.AfloatGoodsItem;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AfloatGoodsItem_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AfloatGoodsItem.entityManager;
    
    public static final EntityManager AfloatGoodsItem.entityManager() {
        EntityManager em = new AfloatGoodsItem().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AfloatGoodsItem.countAfloatGoodsItems() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AfloatGoodsItem o", Long.class).getSingleResult();
    }
    
    public static List<AfloatGoodsItem> AfloatGoodsItem.findAllAfloatGoodsItems() {
        return entityManager().createQuery("SELECT o FROM AfloatGoodsItem o", AfloatGoodsItem.class).getResultList();
    }
    
    public static AfloatGoodsItem AfloatGoodsItem.findAfloatGoodsItem(Long id) {
        if (id == null) return null;
        return entityManager().find(AfloatGoodsItem.class, id);
    }
    
    public static List<AfloatGoodsItem> AfloatGoodsItem.findAfloatGoodsItemEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AfloatGoodsItem o", AfloatGoodsItem.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AfloatGoodsItem.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AfloatGoodsItem.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AfloatGoodsItem attached = AfloatGoodsItem.findAfloatGoodsItem(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AfloatGoodsItem.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AfloatGoodsItem.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AfloatGoodsItem AfloatGoodsItem.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AfloatGoodsItem merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
