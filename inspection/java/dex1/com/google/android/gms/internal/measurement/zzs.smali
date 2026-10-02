.class final Lcom/google/android/gms/internal/measurement/zzs;
.super Lcom/google/android/gms/internal/measurement/zzai;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final zza:Z

.field final zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzt;ZZ)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzc:Lcom/google/android/gms/internal/measurement/zzt;

    const-string p1, "log"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzs;->zza:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 14

    .line 1
    const-string v0, "log"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(Ljava/lang/String;ILjava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzc:Lcom/google/android/gms/internal/measurement/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(Lcom/google/android/gms/internal/measurement/zzt;)Lcom/google/android/gms/internal/measurement/zzr;

    move-result-object v3

    .line 3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/zzs;->zza:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Z

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x3

    .line 5
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzr;->zza(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzs;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object p1

    .line 6
    :cond_30
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzb(D)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_59

    const/4 v4, 0x3

    if-eq v0, v4, :cond_57

    if-eq v0, v2, :cond_55

    const/4 v5, 0x6

    if-eq v0, v5, :cond_53

    goto :goto_5a

    :cond_53
    move v6, v3

    goto :goto_5b

    :cond_55
    move v6, v2

    goto :goto_5b

    :cond_57
    move v6, v1

    goto :goto_5b

    :cond_59
    const/4 v4, 0x4

    :goto_5a
    move v6, v4

    .line 7
    :goto_5b
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_83

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzc:Lcom/google/android/gms/internal/measurement/zzt;

    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/zzs;->zza:Z

    iget-boolean v10, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(Lcom/google/android/gms/internal/measurement/zzt;)Lcom/google/android/gms/internal/measurement/zzr;

    move-result-object v5

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/zzr;->zza(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzs;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object p1

    :cond_83
    new-instance v8, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_88
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_a6

    .line 12
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_a6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzc:Lcom/google/android/gms/internal/measurement/zzt;

    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/zzs;->zza:Z

    iget-boolean v10, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(Lcom/google/android/gms/internal/measurement/zzt;)Lcom/google/android/gms/internal/measurement/zzr;

    move-result-object v5

    .line 13
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/zzr;->zza(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzs;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object p1
.end method
