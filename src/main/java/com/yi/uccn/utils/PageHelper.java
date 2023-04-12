package com.yi.uccn.utils;

import java.util.HashMap;
import java.util.Map;

public class PageHelper {
    Integer limit;
    Integer page;

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Map<Object, Object> getMap() {
        if (this.limit == null || this.page == null) return null;
        Map<Object, Object> map = new HashMap<>();
        map.put("start", (this.page - 1) * this.limit);
        map.put("count", this.limit);
        return map;
    }
}
