.class abstract Lcom/google/android/gms/tagmanager/zzft;
.super Lcom/google/android/gms/tagmanager/zzbu;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzbu;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzak;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)",
            "Lcom/google/android/gms/internal/gtm/zzak;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzft;->zzc(Ljava/util/Map;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1
.end method

.method public zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract zzc(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)V"
        }
    .end annotation
.end method
