.class final Lcom/google/android/gms/tagmanager/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzfb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzff;

.field private final zzb:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzff;Lcom/google/android/gms/tagmanager/zzfd;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfe;->zza:Lcom/google/android/gms/tagmanager/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzga;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzff;->zzd(Lcom/google/android/gms/tagmanager/zzff;)Landroid/content/Context;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzfc;-><init>(Lcom/google/android/gms/tagmanager/zzfe;)V

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzga;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    return-void
.end method

.method private final zzd()Landroid/os/Message;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzh()Ljava/lang/Object;

    move-result-object v2

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzh()Ljava/lang/Object;

    move-result-object v2

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzh()Ljava/lang/Object;

    move-result-object v2

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfe;->zzd()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zzc(J)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzh()Ljava/lang/Object;

    move-result-object v0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzb:Landroid/os/Handler;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfe;->zzd()Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
