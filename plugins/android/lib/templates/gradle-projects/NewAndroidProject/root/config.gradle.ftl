ext {
    dev = false;
    cSdk = 25
    bSdk = '25.0.2'
    mSdk = 17
    tSdk = 25
    vCode = 100
    vName = '1.0.0'
    libV = [
            support                      : '25.3.0',
            constraint                   : '1.0.1',
            gson                         : '2.8.0',
            glide                        : '3.7.0',
            picasso                      : '2.5.2',
            okhttp                       : '3.6.0',
            okio                         : '1.11.0',
            retrofit                     : '2.2.0',
            butterknife                  : '8.5.1',
            butterknife_complier         : '8.4.0',
            ormlite                      : '4.48',
            rxjava                       : '1.2.7',
            rxandroid                    : '1.2.1',
            rxjava2                      : '2.0.7',
            rxandroid2                   : '2.0.1',
            guava                        : '19.0',
            junit                        : '4.12',
            logger                       : '1.15',
            ahbottomnavigation           : '1.2.3',
            mocktio                      : '1.9.5',
            stetho                       : '1.3.1',
            baseRecyclerviewAdapterHelper: '2.8.3',
            robolectric                  : '3.1',
            permissoindispatcher         : '2.1.3',
            leakcanary                   : '1.5',
            multidex                     : '1.0.1',
            arouter                      : '1.0.7',
            arouter_compiler             : '1.0.3',
            arouter_annotation           : '1.0.1'
    ]
    lib = [
            appcompat                     : "com.android.support:appcompat-v7:${libV.support}",
            design                        : "com.android.support:design:${libV.support}",
            cardview                      : "com.android.support:cardview-v7:${libV.support}",
            recyclerview                  : "com.android.support:recyclerview-v7:${libV.support}",
            constraint                    : "com.android.support.constraint:constraint-layout:${libV.constraint}",
            gson                          : "com.google.code.gson:gson:${libV.gson}",
            okhttp          : "com.squareup.okhttp3:okhttp:${libV.okhttp}",
            okhttplog           : "com.squareup.okhttp3:logging-interceptor:${libV.okhttp}",
            okio                : "com.squareup.okio:okio:${libV.okio}",
            retrofit            : "com.squareup.retrofit2:retrofit:${libV.retrofit}",
            retrofit_convert    : "com.squareup.retrofit2:converter-gson:${libV.retrofit}",
            retrofit_adapters   : "com.squareup.retrofit2:adapter-rxjava:${libV.retrofit}",
            butterknife                   : "com.jakewharton:butterknife:${libV.butterknife}",
            butterknife_complier          : "com.jakewharton:butterknife-compiler:${libV.butterknife_complier}",
            ormlite_core                  : "com.j256.ormlite:ormlite-core:${libV.ormlite}",
            ormlite_android               : "com.j256.ormlite:ormlite-android:${libV.ormlite}",
            picasso                       : "com.squareup.picasso:picasso:${libV.picasso}",
            glide                         : "com.github.bumptech.glide:glide:${libV.glide}",
            rxjava                        : "io.reactivex:rxjava:${libV.rxjava}",
            rxandroid                     : "io.reactivex:rxandroid:${libV.rxandroid}",
            rxjava2                       : "io.reactivex.rxjava2:rxjava:${libV.rxjava2}",
            rxandroid2                    : "io.reactivex.rxjava2:rxandroid:${libV.rxandroid2}",
            junit                         : "junit:junit:${libV.junit}",
            logger                        : "com.orhanobut:logger:${libV.logger}",
            ahbottomnavigation            : "com.aurelhubert:ahbottomnavigation:${libV.ahbottomnavigation}",
            mocktio                       : "org.mockito:mockito-core:${libV.mocktio}",
            stetho                        : "com.facebook.stetho:stetho:${libV.stetho}",
            stetho_okhttp3                : "com.facebook.stetho:stetho-okhttp3:${libV.stetho}",
            baseRecyclerviewAdapterHelper : "com.github.CymChad:BaseRecyclerViewAdapterHelper:${libV.baseRecyclerviewAdapterHelper}",
            robolectric                   : "org.robolectric:robolectric:${libV.robolectric}",
            permissoindispatcher          : "com.github.hotchemi:permissionsdispatcher:${libV.permissoindispatcher}",
            permissoindispatcher_processor: "com.github.hotchemi:permissionsdispatcher-processor:${libV.permissoindispatcher}",
            leakcanaryDebug               : "com.squareup.leakcanary:leakcanary-android:${libV.leakcanary}",
            leakcanaryRelease             : "com.squareup.leakcanary:leakcanary-android-no-op:${libV.leakcanary}",
            multidex                      : "com.android.support:multidex:${libV.multidex}",
            arouter                       : "com.alibaba:arouter-api:${libV.arouter}",
            arouter_compiler              : "com.alibaba:arouter-compiler:${libV.arouter_compiler}",
            arouter_annotation            : "com.alibaba:arouter-annotation:${libV.arouter_annotation}"
    ]

}
