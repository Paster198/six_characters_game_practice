.class final Lcom/google/android/gms/internal/play_billing/zzcu$zzb;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/play_billing/zzcu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_billing/zzcu<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/play_billing/zzdk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_billing/zzdk<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcu;Lcom/google/android/gms/internal/play_billing/zzdk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcu;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcu;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-eq v0, p0, :cond_7

    goto :goto_1b

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zza(Lcom/google/android/gms/internal/play_billing/zzdk;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcu;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V

    :cond_1b
    :goto_1b
    return-void
.end method
