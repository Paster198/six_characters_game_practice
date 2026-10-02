.class final Lcom/google/android/gms/measurement/internal/zzmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzmh;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzmh;

.field final synthetic zzc:J

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzmo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZ)V
    .registers 7

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Lcom/google/android/gms/measurement/internal/zzmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Lcom/google/android/gms/measurement/internal/zzmo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzmo;->zzp(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZLandroid/os/Bundle;)V

    return-void
.end method
