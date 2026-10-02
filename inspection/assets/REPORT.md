# APK asset inspection

- Source APK contains 7,459 asset files. No Lua, JS, or other gameplay source scripts were found.
- UI uses Cocos Studio `.csb` files (199 CSB assets total, file version string 2.1.0.0).
- Pause layout: `assets/layouts/ingame/PauseOverlay.csb` (7,536 bytes).
- Pause node names: `quitButton-chinaonlylocalize`, `retryButton-chinaonlylocalize`, `resumeButton-chinaonlylocalize`; labels `quit_text-chinaonlylocalize`, `retry_text-chinaonlylocalize`, `resume_text-chinaonlylocalize`; background `darken`; title `pauseText`.
- Existing button artwork: `assets/layouts/1080/pause/button.png`, `button_pressed.png`, `resume_button.png`, `resume_button_pressed.png`, `resume_button_disabled.png`.
- Other pause nodes cover multiplayer disconnection status. Practice should be disabled or absent in multiplayer.
- Native pause layout assets provide a design reference but do not bind gameplay behavior themselves. New practice action and controls require native/Java code changes.
- Song metadata: `assets/songs/songlist`, `packlist`, `unlocks` are plaintext JSON. Only 102 `.aff` files are bundled as ordinary asset paths. Testify, Pentiment, Arcana Eden and Infinite Strife charts are not bundled under normal `assets/songs/<id>/...` paths; their metadata uses remote downloads.
- No editable Path IV or challenge seek logic was found in assets. Story `paths` is unrelated story selection data.
- Locale strings are GNU gettext `.mo` files in `assets/tl/`; no practice translation exists in them.
- Do not attempt seek by merely deleting prior notes: camera/scene timing events, active holds/arcs, judgment state and song clock need coordinated reinitialization. The mentioned enwidencamera bug may therefore belong to native scene event restoration.

Small data and pause CSB copies are under `inspection/assets/assets/`. `asset-index.json` records full asset paths and sizes without extracting large music/images.
