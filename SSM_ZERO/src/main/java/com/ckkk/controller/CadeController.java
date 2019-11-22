package com.ckkk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CadeController {

//    @Autowired
//    private ICadeService service;

    @RequestMapping("cade.do")
    public String cade(){
        System.out.println("jinru++++++++++++++++++++++");
//            service.xPower("Fize","Decade",1);
    return "main";
    }
}
