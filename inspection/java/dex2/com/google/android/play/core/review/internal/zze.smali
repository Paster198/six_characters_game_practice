.class public abstract Lcom/google/android/play/core/review/internal/zze;
.super Lcom/google/android/play/core/review/internal/zzb;
.source "com.google.android.play:review@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/review/internal/zzf;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/review/internal/zzf;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/play/core/review/internal/zzf;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/play/core/review/internal/zzf;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/play/core/review/internal/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/review/internal/zzd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
