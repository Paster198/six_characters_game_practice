.class final Lcom/google/android/gms/tagmanager/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzax;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/tagmanager/zzaw;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/zzaw;->zza(Ljava/util/List;)V

    return-void
.end method

.method public final zzc(Ljava/util/List;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tagmanager/zzau;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method
