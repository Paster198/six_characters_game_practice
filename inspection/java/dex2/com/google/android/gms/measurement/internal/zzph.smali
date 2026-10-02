.class public final Lcom/google/android/gms/measurement/internal/zzph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzmf;

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzim;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzph;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzph;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzph;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzph;->zzd:Lcom/google/android/gms/internal/measurement/zzim;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzmf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzph;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzim;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzph;->zzd:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzph;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzph;->zzb:Ljava/util/Map;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_8
    return-object v0
.end method
