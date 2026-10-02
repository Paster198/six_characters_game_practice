.class public final Lcom/google/android/gms/internal/play_billing/zzla;
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

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzlc;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzld;->zzb()Lcom/google/android/gms/internal/play_billing/zzld;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/play_billing/zzla;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzla;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzld;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzld;->zzc(Lcom/google/android/gms/internal/play_billing/zzld;I)V

    return-object p0
.end method
