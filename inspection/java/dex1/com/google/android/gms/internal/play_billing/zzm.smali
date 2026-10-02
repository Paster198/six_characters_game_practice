.class final Lcom/google/android/gms/internal/play_billing/zzm;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzm;


# instance fields
.field volatile zzb:Ljava/lang/Thread;

.field volatile zzc:Lcom/google/android/gms/internal/play_billing/zzm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzm;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzm;->zza:Lcom/google/android/gms/internal/play_billing/zzm;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzd;->zzb(Lcom/google/android/gms/internal/play_billing/zzm;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
