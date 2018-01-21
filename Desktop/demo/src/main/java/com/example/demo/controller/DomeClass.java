package com.example.demo.controller;

import org.springframework.web.bind.annotation.*;
////ee
@RestController
@RequestMapping("demo")
public class DomeClass {

    //http://baidu.com?id=1&name=3;
    //http://baidu.com/hello/perpson
    //http://baidu.com/hello/1   delete

    @RequestMapping(value = "hello",method = RequestMethod.DELETE)
    public String helloWord(String id){
        return "delete hello word"+id;
    }

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    public String helloWord2(String id){
        return "get hello word"+id;
    }
}
