.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Long;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private zze:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzb:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzd:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zze:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzc:Ljava/lang/Long;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v0
.end method

.method public fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zza:Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzb:Ljava/lang/Long;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzc:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzb:Ljava/lang/Long;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_29

    iput-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzb:Ljava/lang/Long;

    .line 5
    :cond_29
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zze:Landroid/net/Uri;

    if-eqz p1, :cond_33

    iput-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzd:Lcom/google/android/gms/common/data/BitmapTeleporter;

    :cond_33
    return-object p0
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzd:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zze:Landroid/net/Uri;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzb:Ljava/lang/Long;

    return-object p0
.end method

.method public setProgressValue(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzc:Ljava/lang/Long;

    return-object p0
.end method
