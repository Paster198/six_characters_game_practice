.class final Lcom/google/android/gms/internal/gtm/zzxq;
.super Lcom/google/android/gms/internal/gtm/zzxo;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzxo<",
        "Lcom/google/android/gms/internal/gtm/zzxp;",
        "Lcom/google/android/gms/internal/gtm/zzxp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzxo;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzxp;->zza()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzb(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzb()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zzc()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zze()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    .line 2
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    :cond_10
    return-object v0
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    return-object p1
.end method

.method final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zzc()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzxp;->zzd(Lcom/google/android/gms/internal/gtm/zzxp;Lcom/google/android/gms/internal/gtm/zzxp;)Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic zzf()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zze()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzg(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzf()V

    return-object p1
.end method

.method final bridge synthetic zzh(Ljava/lang/Object;II)V
    .registers 4

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxp;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzi(Ljava/lang/Object;IJ)V
    .registers 5

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxp;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzj(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxp;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/gtm/zztd;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxp;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzl(Ljava/lang/Object;IJ)V
    .registers 5

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxp;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final zzm(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzf()V

    return-void
.end method

.method final bridge synthetic zzn(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzxp;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    return-void
.end method

.method final bridge synthetic zzo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzxp;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    return-void
.end method

.method final zzq(Lcom/google/android/gms/internal/gtm/zzww;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method final bridge synthetic zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzxp;->zzi(Lcom/google/android/gms/internal/gtm/zztp;)V

    return-void
.end method

.method final bridge synthetic zzs(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzxp;->zzj(Lcom/google/android/gms/internal/gtm/zztp;)V

    return-void
.end method
