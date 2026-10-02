.class final Lcom/google/android/gms/internal/auth/zzgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth/zzfx;

.field private final zzb:Lcom/google/android/gms/internal/auth/zzgz;

.field private final zzc:Lcom/google/android/gms/internal/auth/zzem;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzb:Lcom/google/android/gms/internal/auth/zzgz;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzc:Lcom/google/android/gms/internal/auth/zzem;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzgb;->zza:Lcom/google/android/gms/internal/auth/zzfx;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzgb;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgb;-><init>(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfx;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzb:Lcom/google/android/gms/internal/auth/zzgz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final zzd()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zza:Lcom/google/android/gms/internal/auth/zzfx;

    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzev;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzc()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v0

    return-object v0

    :cond_d
    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzev;->zzn(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/auth/zzet;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzfw;->zzd()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzb:Lcom/google/android/gms/internal/auth/zzgz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzc:Lcom/google/android/gms/internal/auth/zzem;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzem;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzb:Lcom/google/android/gms/internal/auth/zzgz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgk;->zzd(Lcom/google/android/gms/internal/auth/zzgz;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdt;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p3, p2, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p4

    if-eq p3, p4, :cond_c

    goto :goto_12

    .line 4
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zzd()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 3
    :goto_12
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzb:Lcom/google/android/gms/internal/auth/zzgz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzb:Lcom/google/android/gms/internal/auth/zzgz;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method public final zzi(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->zzc:Lcom/google/android/gms/internal/auth/zzem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzem;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzeq;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
