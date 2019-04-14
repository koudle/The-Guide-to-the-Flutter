package com.example.flutter_doubanmovie;

import android.os.Bundle;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodCodec;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    new MethodChannel(getFlutterView(), "flutter.doubanmovie/toast").setMethodCallHandler(new MethodChannel.MethodCallHandler() {
      @Override
      public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        switch (methodCall.method){
          case "showToast":
            Toast.makeText(getBaseContext(),(String)methodCall.arguments,Toast.LENGTH_SHORT).show();
            result.success(0);
            return;
          default:
            result.notImplemented();
            return;
        }
      }
    });
  }
}
