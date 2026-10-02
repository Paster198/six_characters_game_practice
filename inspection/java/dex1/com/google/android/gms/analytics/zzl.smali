.class final Lcom/google/android/gms/analytics/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/analytics/zzh;

.field final synthetic zzb:Lcom/google/android/gms/analytics/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzr;Lcom/google/android/gms/analytics/zzh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzl;->zzb:Lcom/google/android/gms/analytics/zzr;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzl;->zza:Lcom/google/android/gms/analytics/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzl;->zza:Lcom/google/android/gms/analytics/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzd()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzl;->zza:Lcom/google/android/gms/analytics/zzh;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zze(Lcom/google/android/gms/analytics/zzh;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzl;->zzb:Lcom/google/android/gms/analytics/zzr;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzr;->zzf(Lcom/google/android/gms/analytics/zzr;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/zzs;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/analytics/zzs;->zza()V

    goto :goto_15

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzl;->zza:Lcom/google/android/gms/analytics/zzh;

    const-string v1, "deliver should be called from worker thread"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzm()Z

    move-result v1

    const-string v2, "Measurement must be submitted"

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzf()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_66

    :cond_40
    new-instance v2, Ljava/util/HashSet;

    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/analytics/zzt;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/analytics/zzt;->zzb()Landroid/net/Uri;

    move-result-object v4

    .line 10
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 11
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/zzt;->zze(Lcom/google/android/gms/analytics/zzh;)V

    goto :goto_49

    :cond_66
    :goto_66
    return-void
.end method
