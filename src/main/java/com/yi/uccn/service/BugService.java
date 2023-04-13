package com.yi.uccn.service;

import com.yi.uccn.model.BugSubmit;

public interface BugService {

    /**
     * 问题反馈
     * @param bugSubmit
     */
    void addBufInfo(BugSubmit bugSubmit);

}
