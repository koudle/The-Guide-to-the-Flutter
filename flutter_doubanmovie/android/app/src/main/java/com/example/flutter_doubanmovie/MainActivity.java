package com.example.flutter_doubanmovie;

import android.app.AlertDialog;
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

    new MethodChannel(getFlutterView(), "flutter.doubanmovie/buy").setMethodCallHandler(new MethodChannel.MethodCallHandler() {
      @Override
      public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        switch (methodCall.method){
          case "buyTicket":
            //显示dialog
            new AlertDialog.Builder(MainActivity.this)
                    .setTitle("买票")
                    .setMessage((String)methodCall.arguments)
                    .create().show();
            //返回消息
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
