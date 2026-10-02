.class final Lcom/google/android/gms/internal/play_billing/zzcu$zza;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

.field static final zzb:Lcom/google/android/gms/internal/play_billing/zzcu$zza;


# instance fields
.field final zzc:Z

.field final zzd:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    return-void

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzd:Ljava/lang/Throwable;

    return-void
.end method
