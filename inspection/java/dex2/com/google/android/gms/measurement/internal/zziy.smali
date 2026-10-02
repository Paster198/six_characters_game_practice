.class final Lcom/google/android/gms/measurement/internal/zziy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziy;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziy;->zze:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziy;->zza:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziy;->zze:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaj(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;)V

    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzc:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzd:J

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzmh;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziy;->zze:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziy;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaj(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;)V

    return-void
.end method
