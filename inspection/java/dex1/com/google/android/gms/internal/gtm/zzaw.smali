.class public final Lcom/google/android/gms/internal/gtm/zzaw;
.super Lcom/google/android/gms/analytics/zzj;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzj<",
        "Lcom/google/android/gms/internal/gtm/zzaw;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "medium"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adNetworkId"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzi:Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzj:Ljava/lang/String;

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/analytics/zzj;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzaw;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/lang/String;

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Ljava/lang/String;

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzi:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzi:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzi:Ljava/lang/String;

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzj:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzj:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzaw;->zzj:Ljava/lang/String;

    :cond_7a
    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final zzo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final zzp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    return-void
.end method

.method public final zzq(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final zzs(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    return-void
.end method

.method public final zzv(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Ljava/lang/String;

    return-void
.end method

.method public final zzw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:Ljava/lang/String;

    return-void
.end method
