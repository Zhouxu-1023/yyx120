package com.yi.uccn.service.impl;

import com.yi.uccn.dao.BugMapper;
import com.yi.uccn.model.BugSubmit;
import com.yi.uccn.service.BugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class BugServiceImpl implements BugService {

    @Autowired
    BugMapper bugMapper;

    @Override
    public void addBufInfo(BugSubmit bugSubmit) {
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(d);

        bugSubmit.setCreateTime(currentTime);
        bugMapper.insert(bugSubmit);

    }
}
