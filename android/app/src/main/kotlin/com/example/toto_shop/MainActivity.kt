package com.example.toto_shop

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun provideSplashScreen(): SplashScreen? = SplashView()
}
