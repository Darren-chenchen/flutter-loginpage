package com.hd123.lianhua_jingxuan_flutter;

import java.io.Serializable;
import java.util.Map;

public class MapEvent implements Serializable {
    private Map data;

    public MapEvent(Map map) {
        this.data = map;
    }

    public Map getData() {
        return data;
    }

    public void setData(Map data) {
        this.data = data;
    }
}
