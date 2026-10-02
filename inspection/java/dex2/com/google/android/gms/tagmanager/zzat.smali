.class final Lcom/google/android/gms/tagmanager/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzaw;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzat;->zza:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tagmanager/zzau;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzau;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzat;->zza:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/tagmanager/zzau;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzau;->zzb:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzc(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V

    goto :goto_4

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzat;->zza:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/DataLayer;->zzb(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
