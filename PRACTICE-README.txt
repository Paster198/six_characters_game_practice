Arcaea 7.0.255c 练习测试版（arm64）

安装文件：arcaea-practice-arm64-test.apk
原文件：arcaea.apk，未修改。
本次仅有 APK，无游戏源码；通过额外 DEX 界面和 arm64 原生适配模块实现。

使用方法
1. 进入普通单曲游玩，暂停，点击右下角“练习”。
2. 设置 A 起点、B 终点；点时间文字可输入“分:秒”或秒数，精度到毫秒。
3. 设置 0.50–2.50 倍率，按钮每次增减 0.01。
4. 可开启 A/B 循环，选择 Note 流速不变或 Note 同步变速。
5. 点击应用，游戏重建谱面并返回暂停菜单，继续后从起点前的预备段开始。
6. 到达终点后暂停；开启循环时自动重建并再次播放。取消不修改设置。
7. 在练习界面点击“结束练习”，重新开始正常整曲；退出选曲也会清除练习状态。

范围和行为
- 仅 arm64-v8a；没有提供 32 位实现。
- 当前只在普通单曲、无特殊场景修饰器、未进入挑战的暂停菜单开放入口。
  多人、挑战及特殊剧情流程不开放练习。
- A 包含起点音符，B 为停止边界。片段至少 1 秒。
- A 大于 3 秒时从 A 前 3 秒重建；靠近曲首时使用原来的开局预备流程。
- 跳过 A 之前的音符，保留横跨 A 的原生长条处理逻辑；不手工复用旧判定状态。
- 练习使用原生 no-fail 分支，并拦截结算与对局日志提交。
- 变速通过 FMOD ChannelGroup pitch 配合反向 pitch-shift DSP 补偿音调。
  高于 2 倍时使用两级补偿，避免超出单级 DSP 参数范围。
- Note 流速不变通过谱面初始化时的精确浮点速度补偿实现，不修改用户保存的流速。
- 跳转后从完整谱面恢复 enwidencamera / enwidenlanes 的历史状态。

验证情况
- Android arm64 原生模块和 Java/D8 编译通过。
- APK v2/v3 签名验证、ZIP 对齐及完整性校验通过。
- 8 处原生 hook 的整库 SHA256、build-id、函数指纹、调用 ABI、跳板指令验证通过。
- 已通过音频失败回滚、音调补偿参数、音频对象换代和生命周期 mock 测试。
- 已通过场景控制树遍历、跳转前后镜头/轨道状态恢复测试。
- 已通过时钟倍率漂移、暂停恢复、长帧、重置以及起点边界测试。
- 没有连接 Android 设备，因此尚未验证实际启动、界面显示、连续循环、长条手感、
  实际音质和音画同步。FMOD pitch-shift 会引入处理延迟，需要实机确认。
  上述静态和 mock 测试不等同于游戏实机通过。

签名
原 APK 已使用公开的 AOSP testkey；本测试版使用同一公开证书，包名和版本号保持原值。
证书 SHA256：a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc
测试密钥来源（Google 官方 AOSP 仓库）：
https://android.googlesource.com/platform/build/+/refs/heads/main/target/product/security/
如果手机上安装的 APK 也使用此证书，可尝试直接覆盖安装；未自动安装或卸载任何应用。

实现文件和重建
java/low/moe/practice/Practice.java       暂停入口、设置面板
native/practice_bridge.cpp              原生接入、重建、循环、结算隔离
native/practice_audio.cpp               FMOD 倍速与音调补偿
native/practice_scene.cpp               跳转时恢复镜头和轨道拓宽
native/practice_clock.h                 保留小数的时钟倍率控制
tools/build.ps1                        编译和原生适配验证
tools/sign-apk.ps1                     打包、对齐和签名
tools/verify_package.py                最终 APK 完整性与原资源保留核对
build/final-verification.json          最终文件 SHA256 和校验结果
inspection/native/verified-abi.txt      逆向定位依据

重建顺序：
  powershell -File tools/build.ps1
  powershell -File tools/sign-apk.ps1
  python tools/verify_package.py

适配仅针对本目录原 APK 的确切二进制。不要将地址表直接用于其他版本。
