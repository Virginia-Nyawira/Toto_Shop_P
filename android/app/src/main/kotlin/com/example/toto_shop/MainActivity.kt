package com.example.toto_shop

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.SplashScreen
import com.example.toto_shop.SplashView

class MainActivity: FlutterActivity() {
    override fun provideSplashScreen(): SplashScreen? = SplashView()
}
