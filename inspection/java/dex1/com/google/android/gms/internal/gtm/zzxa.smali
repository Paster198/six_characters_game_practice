.class final Lcom/google/android/gms/internal/gtm/zzxa;
.super Lcom/google/android/gms/internal/gtm/zzxk;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzxk;-><init>(ILcom/google/android/gms/internal/gtm/zzxj;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzj()Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    .line 1
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzun;

    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzun;

    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    goto :goto_25

    .line 6
    :cond_3b
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzxk;->zza()V

    return-void
.end method
