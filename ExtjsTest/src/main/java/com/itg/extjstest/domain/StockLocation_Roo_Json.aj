// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.domain;

import com.itg.extjstest.domain.StockLocation;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect StockLocation_Roo_Json {
    
    public String StockLocation.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static StockLocation StockLocation.fromJsonToStockLocation(String json) {
        return new JSONDeserializer<StockLocation>().use(null, StockLocation.class).deserialize(json);
    }
    
    public static String StockLocation.toJsonArray(Collection<StockLocation> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<StockLocation> StockLocation.fromJsonArrayToStockLocations(String json) {
        return new JSONDeserializer<List<StockLocation>>().use(null, ArrayList.class).use("values", StockLocation.class).deserialize(json);
    }
    
}