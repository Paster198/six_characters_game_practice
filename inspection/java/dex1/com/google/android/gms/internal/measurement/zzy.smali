.class public final Lcom/google/android/gms/internal/measurement/zzy;
.super Lcom/google/android/gms/internal/measurement/zzai;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    const-string v0, "internal.platform"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzy;->zze:Ljava/util/Map;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzx;

    const-string v2, "getVersion"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzx;-><init>(Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 3

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzy;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object p1
.end method
