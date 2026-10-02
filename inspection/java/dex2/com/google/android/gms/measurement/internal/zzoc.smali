.class public final synthetic Lcom/google/android/gms/measurement/internal/zzoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzog;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhe;

.field public final synthetic zzd:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzog;ILcom/google/android/gms/measurement/internal/zzhe;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zza:Lcom/google/android/gms/measurement/internal/zzog;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zzc:Lcom/google/android/gms/measurement/internal/zzhe;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zza:Lcom/google/android/gms/measurement/internal/zzog;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zzc:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzoc;->zzd:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzog;->zze(Lcom/google/android/gms/measurement/internal/zzog;ILcom/google/android/gms/measurement/internal/zzhe;Landroid/content/Intent;)V

    return-void
.end method
