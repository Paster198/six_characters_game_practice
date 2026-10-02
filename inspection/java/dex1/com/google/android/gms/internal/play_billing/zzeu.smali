.class public final Lcom/google/android/gms/internal/play_billing/zzeu;
.super Lcom/google/android/gms/internal/play_billing/zzgl;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzew;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzev;->zzb()Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzeu;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzeu;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzev;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzev;->zzc(Lcom/google/android/gms/internal/play_billing/zzev;Ljava/lang/String;)V

    return-object p0
.end method
