Arcaea 全谱离线练习修订版 fix4（ARM64）

安装包：arcaea-full-offline-practice-arm64-fix4.apk
沿用 fix3 的包名、版本和签名，可直接尝试覆盖安装，无需先卸载或清除数据。
原始 APK、fix3 和此前测试包均保留。

本次修订：Inscribed / BYD 下载图标消失后，点击 Start 仍提示登录解锁。

原因：fix3 修正了选曲界面的下载状态，但实际开局检查仍把本地难度 3 的
谱面路径指向下载缓存。缓存中找不到谱面时，游戏再次进入下载流程，随后
显示“你需要登录来解锁歌曲”。Inscribed 使用同一难度编号，因而一并受影响。

修订：本地 BYD / Inscribed 改为通过现有文件路径函数读取包内的 3.aff。
Start 文件检查和进入游戏后的实际读谱共用此函数，因此两处同时生效。
谱面及音乐存在性检查保留。独立分析已确认缺文件到登录弹窗的完整调用链。

保留 fix3 的 561 首歌曲、1839 张可玩谱面，以及倍速不变调、A/B 无转场预览、
循环、半透明界面、下隐和天地键转换等功能。

验证覆盖：本地/远程、难度 0 至 4 的实际分支指令；68 个 BYD / Inscribed
谱面和对应音乐；文件缺失/存在时的开局分支；原有功能、启动指纹、签名及
APK 完整性。没有连接 Android 测试设备，仍需手机确认实际开局与练习效果。

重建：powershell -File tools/build-full-offline.ps1
路径回归：inspection/regression4/path-verify.py
开局回归：inspection/regression4/native-start-verify.py
精确提示证据：inspection/regression4/ui-login-unlock-evidence.py
前版对照：inspection/regression4/compare-fix3.py
最终 APK 校验：build/full-final-verification.json

构建结果（2026-10-02）
文件大小：3826151060 字节
SHA-256：4e62ebfa922ddf1bc8678aa5516ab8b70830c793a9f1357b1b167cbd20a4e246
最终签名、ZIP CRC、资源及启动指纹校验全部通过。
与 fix3 对照：除重新签名所需的元数据，只有引擎的一条指令改变；
其余 9757 个条目 CRC 和大小一致，练习原生库与 DEX 逐字节一致。
68 个 BYD / Inscribed 谱面及对应音乐通过实际安装包读取校验。
