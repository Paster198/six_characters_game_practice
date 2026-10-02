.class final Lcom/google/android/gms/cloudmessaging/zzu;
.super Lcom/google/android/gms/cloudmessaging/zzs;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cloudmessaging/zzs;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final zza(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_a

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
