.class final Lcom/google/android/gms/internal/play_billing/zzcv$zze;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;


# instance fields
.field volatile next:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcv$zze;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzn(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
