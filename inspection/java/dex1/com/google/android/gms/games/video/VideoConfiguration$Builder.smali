.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zza:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzb:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzd:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/video/VideoConfiguration;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/games/video/VideoConfiguration;

    iget v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zza:I

    iget v2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzb:I

    iget-boolean v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzc:Z

    iget-boolean v5, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzd:Z

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IIZZZ)V

    return-object v0
.end method

.method public setCameraEnabled(Z)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzc:Z

    return-object p0
.end method

.method public setCaptureMode(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzb:I

    return-object p0
.end method

.method public setMicEnabled(Z)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzd:Z

    return-object p0
.end method

.method public setQualityLevel(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zza:I

    return-object p0
.end method
