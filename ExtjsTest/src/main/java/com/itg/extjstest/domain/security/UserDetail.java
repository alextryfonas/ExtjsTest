package com.itg.extjstest.domain.security;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findUserDetailsByUserNameEquals" })
public class UserDetail {

    private String userName;

    @NotNull
    @Size(max = 45)
    private String password;

    private Boolean enabled;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<SecurityRole> roles = new HashSet<SecurityRole>();
}