// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import java.lang.String;

privileged aspect Contract_Roo_ToString {
    
    public String Contract.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ContractType: ").append(getContractType()).append(", ");
        sb.append("Eta: ").append(getEta()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Items: ").append(getItems() == null ? "null" : getItems().size()).append(", ");
        sb.append("Supplier: ").append(getSupplier()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
