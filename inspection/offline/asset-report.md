# Offline asset inventory and metadata conversion

Source: `E:\Desktop1\Package\Project\Arcaea\2\arcaea.apk` (2,217,927,372 bytes). Original APK was read only.

The APK lists 552 active songs (plus one deleted record), with 1,833 declared difficulties. Only 31 songs / 100 difficulty charts have both a complete AFF and their required full music in the APK. The native tutorial separately has two AFFs and full music; it was not in songlist and remains unchanged.

Every one of the 2,104 entries under assets/songs was inspected by file signature. There are 102 actual text AFFs, 1,224 JPEGs, 199 PNGs (two named .jpg), 571 Ogg files, five RIFF/WAV files and three JSON metadata files. No extensionless encrypted chart or unknown binary entry was found. The only extensionless song entries are songlist, packlist and unlocks.

Audio inventory: 32 base.ogg files (31 catalog songs + tutorial), eight complete 3.ogg files under dl_* directories, 523 preview.ogg files and eight 3_preview.ogg files. The eight extra full BYD audio files have no corresponding charts. A preview or a jacket image cannot substitute for a missing chart or full song.

Generated output: build/offline/assets/songs/songlist, packlist, unlocks. The song list retains source IDs, indices, titles, artist, rating, chart author, BPM, visual backgrounds and actual complete difficulty entries. All selected songs use the existing base pack, purchase is empty, remote_dl and world_unlock are false, and hidden flags are removed. Only the original base pack entry is retained. Local unlock rules are cleared for this offline practice catalog (47 original rules, with fragment and score conditions).

Kept difficulties: 31 PST + 31 PRS + 31 FTR + seven ETR = 100. Ten declared BYD entries on otherwise local songs lack AFFs and are removed from the output. 521 other active songs have no complete bundled charts and are omitted from the offline catalog. No asset was fetched or synthesized.

Arcahv is fully bundled (0/1/2.aff and base.ogg). Its original metadata has set=vs, purchase=vs, world_unlock=true, remote_dl=false, hidden_until=difficulty and hidden_until_unlocked=true. It has no entry in source unlocks. It is moved into base and these gates are cleared, but GameScene still selects SpecialSceneArcahvChallenge by song ID in native code; the separate native offline adapter must bypass that selector for ordinary play. Metadata alone cannot guarantee this behavior.

There is no literal require_online key anywhere in source songlist, packlist or unlocks. Login, World Mode tokens and special challenge behavior also live in native code; this report does not infer their complete behavior from metadata. Existing saves referring to omitted remote songs/packs and non-song-select story flows still need runtime checking. The output is intentionally a limited offline catalog.

Per-song and per-difficulty evidence is in asset-report.json and asset-report.csv. asset-report-offline.csv lists only the 100 available difficulty entries.

## Available songs

- Sayonara Hatsukoi (`sayonarahatsukoi`): PST/PRS/FTR/ETR
- Lost Civilization (`lostcivilization`): PST/PRS/FTR
- Rise (`rise`): PST/PRS/FTR
- Fairytale (`fairytale`): PST/PRS/FTR
- Snow White (`snowwhite`): PST/PRS/FTR
- Shades of Light in a Transcendent Realm (`shadesoflight`): PST/PRS/FTR
- Vexaria (`vexaria`): PST/PRS/FTR
- Dement ~after legend~ (`dement`): PST/PRS/FTR
- Dandelion (`dandelion`): PST/PRS/FTR
- Infinity Heaven (`infinityheaven`): PST/PRS/FTR
- Brand new world (`brandnewworld`): PST/PRS/FTR
- Chronostasis (`chronostasis`): PST/PRS/FTR
- Clotho and the stargazer (`clotho`): PST/PRS/FTR/ETR
- One Last Drive (`onelastdrive`): PST/PRS/FTR
- Reinvent (`reinvent`): PST/PRS/FTR
- inkar-usi (`inkarusi`): PST/PRS/FTR
- Purgatorium (`purgatorium`): PST/PRS/FTR
- Grimheart (`grimheart`): PST/PRS/FTR
- Senkyou (`senkyou`): PST/PRS/FTR
- world.execute(me); (`worldexecuteme`): PST/PRS/FTR
- Oblivia (`oblivia`): PST/PRS/FTR
- Arcahv (`arcahv`): PST/PRS/FTR
- Sakura Fubuki (`sakurafubuki`): PST/PRS/FTR
- Dialnote (`dialnote`): PST/PRS/FTR
- Remind the Souls (Short Version) (`remindthesouls`): PST/PRS/FTR
- The Formula (`theformula`): PST/PRS/FTR
- Jingle (`jingle`): PST/PRS/FTR/ETR
- Hidden Rainbows of Epicurus (`epicurus`): PST/PRS/FTR/ETR
- SATISFACTION (`satisfaction`): PST/PRS/FTR/ETR
- Dematerialized (`dematerialized`): PST/PRS/FTR/ETR
- Gimme Caramel Popcorn! (`caramelpop`): PST/PRS/FTR/ETR
