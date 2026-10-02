.class public final synthetic Lcom/google/android/gms/measurement/internal/zzms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzny;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzms;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzms;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzms;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzms;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzms;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzms;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzr(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)V

    return-void
.end method
