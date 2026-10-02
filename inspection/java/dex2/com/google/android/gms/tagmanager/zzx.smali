.class final Lcom/google/android/gms/tagmanager/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzaq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/Container;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzx;->zza:Lcom/google/android/gms/tagmanager/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzx;->zza:Lcom/google/android/gms/tagmanager/Container;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->zzb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;->execute(Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    :cond_b
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
