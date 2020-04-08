package com.hd123.lianhua_jingxuan_flutter;

import com.baidu.mapapi.map.MapView;
import com.hd123.lianhua_jingxuan_flutter.BMapViewFactory;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.StandardMessageCodec;

public final class ViewRegistrant {
    public static void registerWith(PluginRegistry registry, MapView mapView) {
        final String key = ViewRegistrant.class.getCanonicalName();

        if (registry.hasPlugin(key)) return;

        PluginRegistry.Registrar registrar = registry.registrarFor(key);
        registrar.platformViewRegistry().registerViewFactory("BaiduMapView_id", new BMapViewFactory(new StandardMessageCodec(), mapView));
    }
}