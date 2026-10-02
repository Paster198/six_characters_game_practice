.class public final synthetic Lcom/google/android/gms/measurement/internal/zzod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzog;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhe;

.field public final synthetic zzc:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzog;Lcom/google/android/gms/measurement/internal/zzhe;Landroid/app/job/JobParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzod;->zza:Lcom/google/android/gms/measurement/internal/zzog;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzod;->zzb:Lcom/google/android/gms/measurement/internal/zzhe;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzod;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzod;->zza:Lcom/google/android/gms/measurement/internal/zzog;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzod;->zzb:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzod;->zzc:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzog;->zzd(Lcom/google/android/gms/measurement/internal/zzog;Lcom/google/android/gms/measurement/internal/zzhe;Landroid/app/job/JobParameters;)V

    return-void
.end method
