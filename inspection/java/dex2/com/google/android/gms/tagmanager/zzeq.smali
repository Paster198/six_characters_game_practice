.class final Lcom/google/android/gms/tagmanager/zzeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzeu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzrw;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzrw;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzro;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzro;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzdo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrw;->zzc()Ljava/util/List;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrw;->zzh()Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrw;->zzc()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrw;->zzb()Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrw;->zzh()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrw;->zzg()Ljava/util/List;

    return-void
.end method
