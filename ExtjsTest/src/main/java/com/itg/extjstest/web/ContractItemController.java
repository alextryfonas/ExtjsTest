package com.itg.extjstest.web;

import com.itg.extjstest.domain.ContractItem;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = ContractItem.class)
@Controller
@RequestMapping("/contractitems")
public class ContractItemController {
	
	
	
	
}
