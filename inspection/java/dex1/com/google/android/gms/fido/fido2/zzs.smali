.class final Lcom/google/android/gms/fido/fido2/zzs;
.super Lcom/google/android/gms/internal/fido/zzl;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fido/fido2/Fido2PrivilegedApiClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/zzs;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/fido/zzi;-><init>(Landroid/app/PendingIntent;)V

    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/zzs;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
