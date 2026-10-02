.class final Lcom/google/android/gms/internal/play_billing/zzh;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzh;


# instance fields
.field final zzb:Ljava/lang/Runnable;

.field final zzc:Ljava/util/concurrent/Executor;

.field zzd:Lcom/google/android/gms/internal/play_billing/zzh;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzh;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzh;->zza:Lcom/google/android/gms/internal/play_billing/zzh;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzb:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method
