.class public final synthetic Lcom/google/android/gms/measurement/internal/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjp;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic zzc:Landroid/os/Bundle;

.field public final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzgo;

.field public final synthetic zze:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzgo;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzd:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zziq;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzd:Lcom/google/android/gms/measurement/internal/zzgo;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zziq;->zze:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzjp;->zzH(Lcom/google/android/gms/measurement/internal/zzjp;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzgo;Ljava/lang/String;)V

    return-void
.end method
