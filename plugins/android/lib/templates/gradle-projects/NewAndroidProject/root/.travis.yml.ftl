language: android

sudo: false

android:
  components:
  - tools
  - build-tools-25.0.2
  - android-25
  - extra-android-m2repository
  - extra-android-support
jdk: oraclejdk8
cache:
   directories:
   - "$HOME/.gradle"

before_install:
   - chmod +x gradlew

script:
  //fir插件的任务.发布release是publishApkRelase
  //- "./gradlew publishApkDebug"
  - "./gradlew assembleRelease"

deploy:
    provider: releases
    api_key: GITHUB KEY
    file: UPLOAD FILE PATH
    skip_cleanup: true
    on:
      tags: true
