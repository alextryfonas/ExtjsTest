// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.MaterialDoc;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect MaterialDoc_Roo_Json {
    
    public String MaterialDoc.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Collection<MaterialDoc> MaterialDoc.fromJsonArrayToMaterialDocs(String json) {
        return new JSONDeserializer<List<MaterialDoc>>().use(null, ArrayList.class).use("values", MaterialDoc.class).deserialize(json);
    }
    
}
