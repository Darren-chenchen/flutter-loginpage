package com.hd123.lianhua_jingxuan_flutter;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;

import com.baidu.location.BDAbstractLocationListener;
import com.baidu.location.BDLocation;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;
import com.baidu.location.Poi;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class MapTools {
    private static MapTools instance = null;

    public static MapTools getInstance() {
        // 先判断实例是否存在，若不存在再对类对象进行加锁处理
        if (instance == null) {
            synchronized (MapTools.class) {
                if (instance == null) {
                    instance = new MapTools();
                }
            }
        }
        return instance;
    }


    public interface MapToolsSuccessCallBack {
        public void success(Map map);
    }

    MapToolsSuccessCallBack successCallBack;

    public void setMapToolsSuccessCallBack(MapToolsSuccessCallBack callBack) {
        this.successCallBack = callBack;
    }

    public LocationClient mLocationClient = null;

    void startLocation(Context myContext) {
        mLocationClient = new LocationClient(myContext);

        LocationClientOption option = new LocationClientOption();

        //可选，是否需要地址信息，默认为不需要，即参数为false
        option.setIsNeedAddress(true);
        //可选，是否需要位置描述信息，默认为不需要，即参数为false
        option.setIsNeedLocationDescribe(true);
        //可选，是否需要周边POI信息，默认为不需要，即参数为false
        option.setIsNeedLocationPoiList(true);

        mLocationClient.setLocOption(option);
        mLocationClient.registerLocationListener(new BDAbstractLocationListener() {
            @Override
            public void onReceiveLocation(BDLocation bdLocation) {
                //获取定位类型、定位错误返回码，具体信息可参照类参考中BDLocation类中的说明
                String latitude = Double.toString(bdLocation.getLatitude());
                String longitude = Double.toString(bdLocation.getLongitude());
                String describe = bdLocation.getLocationDescribe(); // 当前的位置
                String city = bdLocation.getCity(); // 当前的城市
                List<HashMap> poiList = new LinkedList<>(); /// 周边信息
                for (Poi poi : bdLocation.getPoiList()) {
                    HashMap<String, String> map = new HashMap<String, String>();
                    map.put("name", poi.getName());
                    map.put("uid", poi.getId());
                    poiList.add(map);
                }
                if (successCallBack != null) {
                    HashMap<String, Object> map = new HashMap<String, Object>();
                    map.put("latitude", latitude);//获取纬度信息
                    map.put("longitude", longitude);//获取经度信息
                    map.put("city", bdLocation.getCity());//获取城市
                    map.put("describe", bdLocation.getLocationDescribe());//位置描述
                    map.put("poiList", poiList);
                    Log.d("BMap", map.toString());
                    successCallBack.success(map);
                }
                float radius = bdLocation.getRadius();    //获取定位精度，默认值为0.0f

                String coorType = bdLocation.getCoorType();
                //获取经纬度坐标类型，以LocationClientOption中设置过的坐标类型为准

                int errorCode = bdLocation.getLocType();

//                Log.d("BMap", );
            }
        });
        mLocationClient.start();
    }

    void stopLocation() {
        mLocationClient.stop();
    }

}
