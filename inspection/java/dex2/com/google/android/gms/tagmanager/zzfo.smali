.class final Lcom/google/android/gms/tagmanager/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfo;->zza:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 3

    const/16 v0, 0x14

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfo;->zza:Lcom/google/android/gms/tagmanager/TagManager;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/TagManager;->dispatch()V

    :cond_9
    return-void
.end method
