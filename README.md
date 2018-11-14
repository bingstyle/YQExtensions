# YQExtensions

![](https://img.shields.io/badge/language-swift-orange.svg)
![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)
![license](https://img.shields.io/github/license/mashape/apistatus.svg)

## 安装
### Carthage

在你的 Cartfile 中添加下面的代码：

```
github "weixinbing/YQExtensions"
```

编译 framework：

终端运行 `carthage update`。

编译 DEBUG 版本，开启运行时路由检查：

终端运行 `carthage update --configuration Debug`

记得不要把 debug 版本的库用在 release 版本的 app 中。一定要在 release 版本的 app 中使用 release 版本的库。

如果这是你首次在项目中使用 Carthage，你将需要进行一些额外的步骤，它们在 [Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) 中有解释。
