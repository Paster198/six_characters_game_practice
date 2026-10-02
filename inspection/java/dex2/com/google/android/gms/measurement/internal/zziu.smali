.class public final synthetic Lcom/google/android/gms/measurement/internal/zziu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjp;

.field public final synthetic zzb:Landroid/os/Bundle;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjp;->zzI(Lcom/google/android/gms/measurement/internal/zzjp;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method
