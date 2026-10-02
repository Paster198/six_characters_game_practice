.class abstract Lcom/google/android/gms/tagmanager/zzfl;
.super Lcom/google/android/gms/tagmanager/zzdy;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzdy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected final zzd(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzm()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_22

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzm()Ljava/lang/String;

    move-result-object v0

    if-ne p2, v0, :cond_1d

    goto :goto_22

    .line 3
    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzfl;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method
