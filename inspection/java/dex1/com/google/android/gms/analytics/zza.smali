.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzk;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzk<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/gtm/zzbv;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzd()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzk;-><init>(Lcom/google/android/gms/analytics/zzr;Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/analytics/zzh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    new-instance v1, Lcom/google/android/gms/analytics/zzh;

    .line 1
    invoke-direct {v1, v0}, Lcom/google/android/gms/analytics/zzh;-><init>(Lcom/google/android/gms/analytics/zzh;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzh()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcf;->zza()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/zzh;->zzg(Lcom/google/android/gms/analytics/zzj;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzk()Lcom/google/android/gms/internal/gtm/zzcx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcx;->zza()Lcom/google/android/gms/internal/gtm/zzba;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/zzh;->zzg(Lcom/google/android/gms/analytics/zzj;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/zzk;->zzn(Lcom/google/android/gms/analytics/zzh;)V

    return-object v1
.end method

.method final zzb()Lcom/google/android/gms/internal/gtm/zzbv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzh;->zzf()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 5
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzt;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/zzt;->zzb()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_11

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzf()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 9
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzc:Z

    return-void
.end method

.method protected final zze(Lcom/google/android/gms/analytics/zzh;)V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbe;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzi()Lcom/google/android/gms/internal/gtm/zzcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcn;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbe;->zzj(Ljava/lang/String;)V

    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zza;->zzc:Z

    if-eqz v0, :cond_41

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zze()Lcom/google/android/gms/internal/gtm/zzbi;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzi(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zzb()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbe;->zzh(Z)V

    :cond_41
    return-void
.end method
