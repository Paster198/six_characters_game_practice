.class final Lcom/google/android/gms/internal/measurement/zzjl;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjm;Landroid/os/Handler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjl;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjl;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf()V

    return-void
.end method
