.class final Lcom/google/android/gms/internal/auth/zzhb;
.super Lcom/google/android/gms/internal/auth/zzgz;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgz;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zzd()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    .line 2
    iput-object v0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_10
    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    return-object p1
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    check-cast p1, Lcom/google/android/gms/internal/auth/zzha;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/auth/zzha;->zzc(Lcom/google/android/gms/internal/auth/zzha;Lcom/google/android/gms/internal/auth/zzha;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p1

    return-object p1

    :cond_1d
    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzha;->zzb(Lcom/google/android/gms/internal/auth/zzha;)Lcom/google/android/gms/internal/auth/zzha;

    :cond_25
    return-object p1
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;IJ)V
    .registers 5

    shl-int/lit8 p2, p2, 0x3

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/auth/zzha;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzha;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final zze(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzha;->zzf()V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    iput-object p2, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    return-void
.end method
