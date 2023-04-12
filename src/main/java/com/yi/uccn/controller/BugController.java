package com.yi.uccn.controller;

import com.yi.uccn.model.TelInfo;
import com.yi.uccn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/bug")
public class BugController {
    @Autowired
    UserService userService;

    // 查询
    @GetMapping("/all")
    public Object all() {
        List<TelInfo> userAuthList = new ArrayList<>();

        return userAuthList;
//        return ResponseUtil.general_response(userAuthList, map);
    }
}
