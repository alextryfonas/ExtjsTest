package com.itg.extjstest.domain.security;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findSecurityRolesByRoleNameEquals", "findSecurityRolesByRoleNameLike" })
public class SecurityRole {

    @NotNull
    @Size(max = 45)
    private String roleName;
}
