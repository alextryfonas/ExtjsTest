// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.AfloatGoods;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect AfloatGoods_Roo_Json {
    
    public String AfloatGoods.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static String AfloatGoods.toJsonArray(Collection<AfloatGoods> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<AfloatGoods> AfloatGoods.fromJsonArrayToAfloatGoodses(String json) {
        return new JSONDeserializer<List<AfloatGoods>>().use(null, ArrayList.class).use("values", AfloatGoods.class).deserialize(json);
    }
    
}
