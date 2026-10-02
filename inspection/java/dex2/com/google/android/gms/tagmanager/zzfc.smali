.class final Lcom/google/android/gms/tagmanager/zzfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zza:Lcom/google/android/gms/tagmanager/zzfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzh()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zza:Lcom/google/android/gms/tagmanager/zzfe;

    iget-object p1, p1, Lcom/google/android/gms/tagmanager/zzfe;->zza:Lcom/google/android/gms/tagmanager/zzff;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzff;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zza:Lcom/google/android/gms/tagmanager/zzfe;

    iget-object p1, p1, Lcom/google/android/gms/tagmanager/zzfe;->zza:Lcom/google/android/gms/tagmanager/zzff;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzff;->zzk(Lcom/google/android/gms/tagmanager/zzff;)Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zza:Lcom/google/android/gms/tagmanager/zzfe;

    const-wide/32 v2, 0x1b7740

    .line 3
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/tagmanager/zzfe;->zzc(J)V

    :cond_2a
    return v1
.end method
