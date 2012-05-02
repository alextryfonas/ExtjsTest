// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.itg.extjstest.web;

import com.itg.extjstest.domain.MaterialDoc;
import com.itg.extjstest.web.MaterialDocController;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect MaterialDocController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{docNo}", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> MaterialDocController.showJson(@PathVariable("docNo") Long docNo) {
        MaterialDoc materialDoc = MaterialDoc.findMaterialDoc(docNo);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (materialDoc == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(materialDoc.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> MaterialDocController.createFromJsonArray(@RequestBody String json) {
        for (MaterialDoc materialDoc: MaterialDoc.fromJsonArrayToMaterialDocs(json)) {
            materialDoc.persist();
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> MaterialDocController.updateFromJsonArray(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        for (MaterialDoc materialDoc: MaterialDoc.fromJsonArrayToMaterialDocs(json)) {
            if (materialDoc.merge() == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{docNo}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> MaterialDocController.deleteFromJson(@PathVariable("docNo") Long docNo) {
        MaterialDoc materialDoc = MaterialDoc.findMaterialDoc(docNo);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (materialDoc == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        materialDoc.remove();
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}
