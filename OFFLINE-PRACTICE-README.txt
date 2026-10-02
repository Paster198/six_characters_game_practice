Arcaea 离线练习测试版（64 位 Android）

安装包：arcaea-offline-practice-arm64-fix1.apk
基于本目录 Arcaea 7.0.255c APK，仅供本机版本测试。

启动修复（fix1）
上一离线包修改了 songlist、packlist、unlocks，但引擎仍保存原配置的校验指纹。
启动线程检查到三份配置均不匹配后调用 exit(0)，表现为主菜单出现前闪退。
本版同步这三处指纹，保留原有校验逻辑。离线曲库、半透明界面和练习功能不变。
独立回归检查涵盖原 APK、上一离线包和 fix1，另检查单字节篡改仍能产生不匹配。
请安装文件名含 fix1 的新包；旧 arcaea-offline-practice-arm64-test.apk 仅保留作问题对照。

这次更新
1. “练习”按钮改成半透明紫色切角按钮，具有按下反馈和浅色边框。
2. 练习面板使用半透明蓝紫渐变，可以透出暂停时的游戏背景；文字保持清晰。
3. 启动使用游戏原有的离线分支，跳过保存账号的自动登录请求及注册、验证引导。
   保留已有存档，不删除登录凭据或本地成绩。
4. 隐藏主菜单的网络入口和顶栏充值入口，保留离线状态显示；移除 APK 的 INTERNET 权限。
5. 离线目录仅保留 APK 内音乐和谱面齐全的 31 首正式曲，共 100 份谱面。
   其中 PST、PRS、FTR 各 31 份，ETR 7 份；教程资源保留。
6. Arcahv 的三个难度已加入本地基础曲包，移除相关解锁条件，使用普通游玩路径，
   因而可以进入暂停练习。其特殊剧情挑战演出不在此离线版本中触发。
7. 保留练习的 A/B 起终点、循环、0.50–2.50 倍速不变调、两种 Note 流速模式，
   以及跳转时镜头/轨道拓宽状态恢复。

用法
启动后进入单曲游玩 → 暂停 → “练习”。
点击时间文字可精确输入，点击应用后重建谱面并返回暂停菜单。
关闭循环时到 B 暂停；开启循环时重新从 A 前的预备段开始。
“结束练习”会恢复正常倍率并从整曲开头重新开始。
练习成绩不写入正式成绩和对局日志。

资源范围
按照本次确认，先只做现有完整曲目。原 APK 中另外 521 首曲目没有完整谱面，
多数只有封面和试听音频，因此不显示在离线选曲列表中。
没有以试听片段替代完整音乐，也没有下载额外曲目。
离线曲目清单：inspection/offline/asset-report-offline.csv
原始资源与逐曲检查：inspection/offline/asset-report.json

验证及限制
这是未进行 Android 真机测试的测试版。
已进行 Android 编译、原生补丁指纹与分支校验、曲目音频/谱面完整性检查、
APK 签名与 ZIP 对齐校验、启动配置指纹回归检查，并确认最终清单不再请求 INTERNET 权限。
实际启动、旧存档兼容、半透明界面显示、音画同步和连续循环仍需实机验证。
离线包面向普通单曲练习；世界、多人、下载、账号及在线商店不作为可用功能。

安装
包名和版本号与上一测试版相同，仍使用与原 APK 相同的公开 Android 测试证书。
可尝试覆盖上一测试版；本次没有安装、卸载或清除设备数据。
arcaea.apk 和上一版 arcaea-practice-arm64-test.apk 均保留。

重建
  powershell -File tools/build-offline.ps1

构建记录：build/offline-package-manifest.json
最终校验：build/offline-final-verification.json
闪退原因：inspection/crash-startup-integrity-report.txt
启动指纹回归：inspection/crash-integrity-check.json
原生离线修改：build/offline/native-report.json
界面入口修改：build/offline/layouts-report.json
权限修改：build/offline/manifest-report.json
