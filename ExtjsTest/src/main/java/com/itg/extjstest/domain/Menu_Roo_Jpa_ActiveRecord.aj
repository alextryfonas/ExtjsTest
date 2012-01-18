// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.Menu;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Menu_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Menu.entityManager;
    
    public static final EntityManager Menu.entityManager() {
        EntityManager em = new Menu().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Menu.countMenus() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Menu o", Long.class).getSingleResult();
    }
    
    public static List<Menu> Menu.findAllMenus() {
        return entityManager().createQuery("SELECT o FROM Menu o", Menu.class).getResultList();
    }
    
    public static Menu Menu.findMenu(Long id) {
        if (id == null) return null;
        return entityManager().find(Menu.class, id);
    }
    
    public static List<Menu> Menu.findMenuEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Menu o", Menu.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Menu.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Menu.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Menu attached = Menu.findMenu(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Menu.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Menu.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Menu Menu.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Menu merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}