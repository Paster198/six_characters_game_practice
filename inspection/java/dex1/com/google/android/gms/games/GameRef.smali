.class public final Lcom/google/android/gms/games/GameRef;
.super Lcom/google/android/gms/games/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/Game;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/zzg;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final areSnapshotsEnabled()Z
    .registers 2

    .line 1
    const-string v0, "snapshots_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->zzj(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    return-object v0
.end method

.method public final getAchievementTotalCount()I
    .registers 2

    .line 1
    const-string v0, "achievement_total_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "external_game_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "game_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 2
    const-string v0, "game_description"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/GameRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getDeveloperName()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "developer_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeveloperName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 2
    const-string v0, "developer_name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/GameRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 2
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/GameRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getFeaturedImageUri()Landroid/net/Uri;
    .registers 2

    .line 1
    const-string v0, "featured_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "featured_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHiResImageUri()Landroid/net/Uri;
    .registers 2

    .line 1
    const-string v0, "game_hi_res_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "game_hi_res_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .registers 2

    .line 1
    const-string v0, "game_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "game_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLeaderboardCount()I
    .registers 2

    .line 1
    const-string v0, "leaderboard_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getPrimaryCategory()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "primary_category"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondaryCategory()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "secondary_category"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThemeColor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "theme_color"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasGamepadSupport()Z
    .registers 2

    .line 1
    const-string v0, "gamepad_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzi(Lcom/google/android/gms/games/Game;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzk(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/GameEntity;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .registers 2

    .line 1
    const-string v0, "play_enabled_game"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    const-string v0, "muted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const-string v0, "identity_sharing_confirmed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .registers 3

    .line 1
    const-string v0, "profileless_recall_enabled_v3"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/zzg;->hasColumn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/zzg;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_14

    .line 2
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/zzg;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 1
    const-string v0, "installed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "package_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    .line 1
    const-string v0, "real_time_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 1
    const-string v0, "turn_based_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
