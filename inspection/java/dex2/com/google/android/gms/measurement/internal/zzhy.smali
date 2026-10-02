.class public final synthetic Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzif;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzif;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzie;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;-><init>(Lcom/google/android/gms/measurement/internal/zzif;Ljava/lang/String;)V

    const-string v2, "internal.remoteConfig"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzo;)V

    return-object v0
.end method
