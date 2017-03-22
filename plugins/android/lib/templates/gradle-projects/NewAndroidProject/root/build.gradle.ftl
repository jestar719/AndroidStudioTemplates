// Top-level build file where you can add configuration options common to all sub-projects/modules.
apply from :'config.gradle'
buildscript {
    repositories {
        jcenter()
<#if mavenUrl != "mavenCentral">
        maven {
            url '${mavenUrl}'
        }
</#if>
<#if isInstantApp!false>
        flatDir(name: 'support', dirs: '${whSupportLibDir}')
</#if>
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
        //Fir上传插件
        classpath 'im.fir:gradle-fir-publisher:1.0.7'
        //JitPack
        classpath 'com.github.dcendents:android-maven-gradle-plugin:1.5'
    }
}

allprojects {
    repositories {
        jcenter()
<#if mavenUrl != "mavenCentral">
        maven {
            url '${mavenUrl}'
            url "http://maven.bughd.com/public"
            url "https://jitpack.io"
        }
</#if>
<#if isInstantApp!false>
        flatDir(name: 'support', dirs: '${whSupportLibDir}')
</#if>
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}
