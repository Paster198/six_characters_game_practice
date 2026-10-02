.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput p3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zza:I

    .line 2
    new-instance p3, Lcom/google/android/gms/games/GameRef;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zzb:Lcom/google/android/gms/games/Game;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->zzc(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 2
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .registers 2

    .line 1
    const-string v0, "board_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "board_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLeaderboardId()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "external_leaderboard_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreOrder()I
    .registers 2

    .line 1
    const-string v0, "score_order"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getVariants()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zza:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    .line 2
    new-instance v3, Lcom/google/android/gms/games/leaderboard/zzb;

    iget-object v4, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v5, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->mDataRow:I

    add-int/2addr v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/games/leaderboard/zzb;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->zzb(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->zzd(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zzb:Lcom/google/android/gms/games/Game;

    return-object v0
.end method
