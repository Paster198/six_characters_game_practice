.class final Lcom/google/android/gms/internal/fido/zzdx;
.super Lcom/google/android/gms/internal/fido/zzea;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/gms/internal/fido/zzdz;

.field private final zzd:Lcom/google/android/gms/internal/fido/zzdy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/fido/zzdv;Lcom/google/android/gms/internal/fido/zzdw;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzea;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzdx;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdx;->zzb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzdv;->zzf(Lcom/google/android/gms/internal/fido/zzdv;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzdv;->zze(Lcom/google/android/gms/internal/fido/zzdv;)Ljava/util/Map;

    move-result-object p2

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzdv;->zzc(Lcom/google/android/gms/internal/fido/zzdv;)Lcom/google/android/gms/internal/fido/zzdz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzdx;->zzc:Lcom/google/android/gms/internal/fido/zzdz;

    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzdv;->zzb(Lcom/google/android/gms/internal/fido/zzdv;)Lcom/google/android/gms/internal/fido/zzdy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdx;->zzd:Lcom/google/android/gms/internal/fido/zzdy;

    return-void
.end method
