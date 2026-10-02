.class final Lcom/google/android/gms/internal/play_billing/zzfd;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/play_billing/zzgc;

.field public zze:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/play_billing/zzgc;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgc;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:Lcom/google/android/gms/internal/play_billing/zzgc;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzgc;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:Lcom/google/android/gms/internal/play_billing/zzgc;

    return-void
.end method
