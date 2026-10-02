.class final Lcom/google/android/gms/measurement/internal/zzpp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Landroid/os/Bundle;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzpq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpq;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zzc:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zzd:Lcom/google/android/gms/measurement/internal/zzpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zzd:Lcom/google/android/gms/measurement/internal/zzpq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpq;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpp;->zzc:Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 3
    const-string v5, "auto"

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzC(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzT(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    return-void
.end method
