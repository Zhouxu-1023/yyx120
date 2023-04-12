package com.yi.uccn.controller;

import com.yi.uccn.config.Config;
import com.yi.uccn.model.BugSubmit;
import com.yi.uccn.model.Presentation;
import com.yi.uccn.model.TelInfo;
import com.yi.uccn.service.UserService;
import com.yi.uccn.utils.MessageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/bug")
public class BugController {
    @Autowired
    UserService userService;

    /**
     * 问题反馈
     * @param bugSubmit bugSubmit
     * @return
     */
    @RequestMapping(value = "/submit",method = RequestMethod.POST)
    public MessageResult save(@RequestBody BugSubmit bugSubmit){
        MessageResult result = MessageResult.ok();

        if (bugSubmit == null){
            return MessageResult.errorMsg("不能为空");
        }

        try {
            System.out.println("调用service存储");
        }catch (Exception e){
            result = MessageResult.errorMsg(e.getMessage());
        }

        return result;
    }
}
