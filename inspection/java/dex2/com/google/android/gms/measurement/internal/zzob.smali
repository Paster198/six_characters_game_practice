.class public final synthetic Lcom/google/android/gms/measurement/internal/zzob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzog;

.field public final synthetic zzb:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzog;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzob;->zza:Lcom/google/android/gms/measurement/internal/zzog;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzob;->zzb:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzob;->zza:Lcom/google/android/gms/measurement/internal/zzog;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzob;->zzb:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzog;->zzc(Lcom/google/android/gms/measurement/internal/zzog;Landroid/app/job/JobParameters;)V

    return-void
.end method
