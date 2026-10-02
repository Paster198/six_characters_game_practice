.class final Lcom/google/android/gms/tagmanager/zzz;
.super Lcom/google/android/gms/internal/gtm/zzga;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzaa;

.field private final zzb:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzaa;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzz;->zza:Lcom/google/android/gms/tagmanager/zzaa;

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gtm/zzga;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzz;->zzb:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const-string p1, "Don\'t know how to handle this message."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzb:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzz;->zza:Lcom/google/android/gms/tagmanager/zzaa;

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;->onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V

    return-void
.end method
