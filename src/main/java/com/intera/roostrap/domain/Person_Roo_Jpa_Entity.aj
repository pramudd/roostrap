// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.intera.roostrap.domain;

import com.intera.roostrap.domain.Person;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import org.datanucleus.api.jpa.annotations.Extension;

privileged aspect Person_Roo_Jpa_Entity {
    
    declare @type: Person: @Entity;
    
    @Id
    @Extension(vendorName = "datanucleus", key = "gae.encoded-pk", value = "true")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private String Person.id;
    
    @Version
    @Column(name = "version")
    private Long Person.version;
    
    public String Person.getId() {
        return this.id;
    }
    
    public void Person.setId(String id) {
        this.id = id;
    }
    
    public Long Person.getVersion() {
        return this.version;
    }
    
    public void Person.setVersion(Long version) {
        this.version = version;
    }
    
}
