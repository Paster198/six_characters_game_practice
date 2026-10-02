# Complete project archive

All original non-APK files are tracked in this private repository. All 16 original APKs, including intermediate builds, are preserved as binary parts in the `full-archive-2026-10-02` Release.

Download `apk-manifest.json` and every `.partNNN` attachment from that Release into one directory. Run:

```powershell
pwsh -File tools/restore-apks.ps1 -AssetDirectory 'D:\Downloads\Arcaea-assets' -Destination '.'
```

The script verifies SHA-256 checksums for each part and each restored APK, and restores the original relative paths. Existing APKs are verified and left intact. The split operation does not compress or alter file bytes. Identical parts are stored once and shared by multiple APK entries in the manifest; all original files can still be restored exactly.

The repository includes original build and inspection outputs and test signing material because this is a complete private archive.
