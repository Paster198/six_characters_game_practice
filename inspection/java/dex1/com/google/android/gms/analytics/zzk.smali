.class public Lcom/google/android/gms/analytics/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/zzk;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/analytics/zzh;

.field private final zzb:Lcom/google/android/gms/analytics/zzr;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/zzr;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzb:Lcom/google/android/gms/analytics/zzr;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzc:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/analytics/zzh;

    .line 3
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/analytics/zzh;-><init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/common/util/Clock;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzh;->zzh()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    return-void
.end method


# virtual methods
.method protected zze(Lcom/google/android/gms/analytics/zzh;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method protected final zzm()Lcom/google/android/gms/analytics/zzr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zzb:Lcom/google/android/gms/analytics/zzr;

    return-object v0
.end method

.method protected final zzn(Lcom/google/android/gms/analytics/zzh;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzc:Ljava/util/List;

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzi;->zza()V

    goto :goto_6

    :cond_16
    return-void
.end method
