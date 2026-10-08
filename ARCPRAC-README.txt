ArcPrac 安卓共存版

安装包：ArcPrac-arm64.apk（ARM64，Android 7.0 及以上）
显示名称：ArcPrac
独立包名：moe.low.arcprac
基础：arcaea-full-offline-practice-arm64-fix4.apk，版本号保持 7.0.255c。

可直接作为另一个应用安装，无需卸载原来的 Arcaea/Arc Dark 或 fix4。
独立包名使用独立存档和设置，不会自动继承旧版本进度。

保留 fix4 的 561 首歌曲、1839 张谱面、离线游玩、BYD/Inscribed 修复、
半透明练习面板、A/B 无动画预览与循环、变速不变调、下隐及天地键转换。
此次仅修改应用身份：包名、三处显示名称、四个内容提供器标识、自定义
权限及资源包名；同步修正截图分享的提供器标识和 BuildConfig 常量。
原应用类名、JNI 入口、引擎、练习库及歌曲资源保持原样。

已签名，无需自行签名。检查包括签名、ZIP 对齐、整包 CRC、Android
解析出的包名/桌面名称，以及除三项身份文件外的全部载荷与 fix4 一致。
本次未进行真机安装验证。原 fix4 安装包没有被覆盖。

重建：tools/build-arcprac.ps1
校验记录：build/arcprac/final-verification.json
