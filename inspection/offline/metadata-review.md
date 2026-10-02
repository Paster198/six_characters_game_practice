# Offline metadata startup review

Reviewed generated `build/offline/assets/songs/{songlist,packlist,unlocks}` against the original APK and ARM64 code. This is static validation; it does not replace device startup/play validation.

## No asset-path regression found

- 31 retained songs have 100 matching AFF/music pairs. Each retains its original `id`, `idx`, `ratingClass`, BPM, artist, visual backgrounds and chart metadata.
- All 100 retained difficulty objects lack `audioOverride` in both source and output. The parser defaults missing `audioOverride` to false at `0x193d0ac`. The audio path helper at `0x15c7e54` uses the difficulty's flag at `+0xe9`; false selects `/base.ogg` at `0x15c7f64`. `remote_dl=false` selects the original ID rather than the `dl_` prefix. Evidence: `audio-path-proof.txt`.
- Every ETR was already `[0,1,2,4]` in the original song metadata. The conversion does not introduce a missing array index or rename ETR to BYD. The native difficulty conversion at `0x863e1c` returns values below five unchanged. All seven `4.aff` files and their `base.ogg` exist; no `4.ogg` is needed.

| Song ID | Original and output difficulty classes | ETR chart bytes | Full base audio bytes |
|---|---|---:|---:|
| sayonarahatsukoi | 0, 1, 2, 4 | 22,364 | 2,804,871 |
| clotho | 0, 1, 2, 4 | 24,761 | 3,381,057 |
| jingle | 0, 1, 2, 4 | 42,578 | 4,067,760 |
| epicurus | 0, 1, 2, 4 | 35,412 | 3,497,862 |
| satisfaction | 0, 1, 2, 4 | 35,354 | 3,627,314 |
| dematerialized | 0, 1, 2, 4 | 21,133 | 3,035,205 |
| caramelpop | 0, 1, 2, 4 | 43,352 | 3,530,308 |

All 24 unique referenced `bg`/`bg_inverse` backgrounds remain present under `assets/img/bg/1080`. Each retained song keeps its original local jacket files. Media entries are not removed by the metadata conversion.

## Indices and local unlock scope

Original `idx` is already sparse: 553 records use values 0..553, with 492 absent and `particlearts` at 127 marked deleted. Output preserves original indices, including 519, rather than renumbering saved song identities. Sparse indices are not a new format assumption introduced here, although the much smaller catalog still requires runtime validation with an existing save.

Clearing `unlocks` intentionally removes local progression conditions, not only account requirements: 47 original rules concern retained songs, containing 47 fragment conditions (type 0) and six score conditions (type 1). This implements the approved scope that all complete local songs/difficulties should be playable offline. Arcahv has no original `unlocks` rule; its barriers are song metadata and native challenge selection. No literal `require_online` key exists in the source three metadata assets.

## Concrete remaining integration risks

1. **Arcahv ordinary play must use the native adapter.** Setting `set=base`, `purchase=""`, `world_unlock=false` and removing hidden flags does not stop its hardcoded `SpecialSceneArcahvChallenge` selection. The separate checked native patch must be packaged along with this metadata.
2. **Existing last-song / last-difficulty selections can refer to removed content.** In particular, ten formerly listed BYD difficulties are removed while their songs remain. A saved selection of one of those BYD difficulties must be clamped by the song-select code before dereferencing the difficulty. This is the most specific remaining save-compatibility check; the metadata should not fabricate missing charts to preserve those selections.
3. **Pack references are reduced to base.** Native agent confirmed `getPack` returns null for absent packs and `selectPack(0x16f607c)` has an `all` fallback, and a hardcoded story-song selection helper at `0x10b0270` returns early on null song. Start init `0x121de7c` and MainMenu init `0x913f10` have no direct SongManager::getSong call. These checks support normal startup; they do not establish that every remote story/course entry becomes usable. Those resources remain unchanged and are outside the curated 31-song catalog.

Native startup findings in item 3 were independently supplied by the native inspection agent. No new unconditional native patch is warranted merely because original `idx` values are sparse or ETR uses class 4.
