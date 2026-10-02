.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/cloudmessaging/CloudMessage;

.field public final synthetic zzc:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cloudmessaging/CloudMessage;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzb:Lcom/google/android/gms/cloudmessaging/CloudMessage;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzc:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzb:Lcom/google/android/gms/cloudmessaging/CloudMessage;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_40

    .line 11
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    .line 3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google.message_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->zza()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v2, "google.product_id"

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zza:Landroid/content/Context;

    const-string v2, "supports_message_handled"

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/zzv;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzv;

    move-result-object v0

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/zzv;->zzc(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2
    :goto_40
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzc:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Lcom/google/android/gms/cloudmessaging/zze;->zza:Lcom/google/android/gms/cloudmessaging/zze;

    .line 10
    new-instance v3, Lcom/google/android/gms/cloudmessaging/zzf;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cloudmessaging/zzf;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 11
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
