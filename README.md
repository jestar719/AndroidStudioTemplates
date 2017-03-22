# AndroidStudioTemplates
AndroidStudio的自定义模板

## 使用
把plugins文件夹copy到AndroidStudio的安装目录下,覆盖原来的模板.

`plugins\android\lib\templates\gradle-projects/OriginBackup`是原始模板的备份.需要时用与恢复

## 统一依赖
`config.gradle`里统一管理了版本及依赖.
  * lib 是依赖列表
  * libV 是依赖版本
  * 其它参数如cSdk,bSdk可以直接在module的gradle中使用

## travis的支持
项目中已经存在travis的配置模板.`.travis.yml`,设置好自己的配置后最好到lint.travis.org上进行格式验证.

如果需要发布到release需要把`GITHUB KEY`换成你的github的授权Token.`UPLOAD FILE PATH`换成需要发部的APK路径.如`app\bulid\output\apk\app-release.apk`

默认的是设置Tag时才发布到github的release.一般push时不会上传Tag,
```
push origin --tags
```

## fir.im的支持
在需要发布的module的builde.gradle中添加
```java
apply plugin:'im.fir.plugin.gradle'
fir{
  apiToken FIR_TOKEN
}
```

然后执行对应的task就可以.
```
windows命令行
gradlew publishApkDebug
gradlew publishApkRelase

Linux/Mac
./gradlew publishApkDebug
./gradlew publishApkRelase
```

`FIR_TOKEN`是fir.im的私人帐号TOKEN,通常写在`local.properties`里.不加入版本控制.
如果集成了Travis等工具,可以在其项目中添加常量.然后通过`Syetem.getenv("FIR_TOEN")`来引用
```
fir{
  apiToken FIR_TOKEN==null?System.getenv("FIR_TOKEN"):FIR_TOKEN
}
```

## JitPackr支持
项目的gradle中已经添加了Jitpack的支持.可以添加存在JitPack的库的依赖
如果需要把库发布到jitpack中,可以在库的build.gradle中添加
```java
apply plugin: 'com.github.dcendents.android-maven'
group = 'com.github.github的用户名'
```
然后通过Travis或github网页发布Release版.
在jitpack网站上关联这个库就可以了
