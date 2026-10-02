.class public abstract Lcom/google/android/gms/internal/play_billing/zzgm;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/play_billing/zzgh;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgh;->zze()Lcom/google/android/gms/internal/play_billing/zzgh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    return-void
.end method
