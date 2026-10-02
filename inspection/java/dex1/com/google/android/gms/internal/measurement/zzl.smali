.class public final Lcom/google/android/gms/internal/measurement/zzl;
.super Lcom/google/android/gms/internal/measurement/zzam;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzab;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzam;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    return-void
.end method


# virtual methods
.method public final zzcz(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "setEventName"

    const-string v9, "setParamValue"

    const-string v10, "getParams"

    const-string v11, "getParamValue"

    const-string v12, "getTimestamp"

    const-string v13, "getEventName"

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_148

    goto :goto_51

    :sswitch_21
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v6

    goto :goto_52

    :sswitch_29
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    const/4 v4, 0x5

    goto :goto_52

    :sswitch_31
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v14

    goto :goto_52

    :sswitch_39
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v15

    goto :goto_52

    :sswitch_41
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v7

    goto :goto_52

    :sswitch_49
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v5

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v4, -0x1

    :goto_52
    if-eqz v4, :cond_134

    if-eq v4, v15, :cond_114

    if-eq v4, v14, :cond_e1

    if-eq v4, v7, :cond_c9

    if-eq v4, v6, :cond_8d

    const/4 v6, 0x5

    if-eq v4, v6, :cond_64

    .line 25
    invoke-super/range {p0 .. p3}, Lcom/google/android/gms/internal/measurement/zzam;->zzcz(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    return-object v1

    .line 21
    :cond_64
    invoke-static {v9, v14, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 22
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v3

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzf(Lcom/google/android/gms/internal/measurement/zzap;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzaa;->zzh(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 15
    :cond_8d
    invoke-static {v8, v15, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 16
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 18
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v2

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzaa;->zzg(Ljava/lang/String;)V

    .line 20
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 17
    :cond_c1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal event name"

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_c9
    invoke-static {v12, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zza()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v2

    .line 8
    :cond_e1
    invoke-static {v10, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzf()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzam;

    .line 10
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzam;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzi;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_fb

    :cond_113
    return-object v2

    .line 4
    :cond_114
    invoke-static {v11, v15, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzi;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    return-object v1

    .line 2
    :cond_134
    invoke-static {v13, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzb()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_148
    .sparse-switch
        0x149f58f -> :sswitch_49
        0x2b69a60 -> :sswitch_41
        0x8bc90da -> :sswitch_39
        0x29c21c7c -> :sswitch_31
        0x36e0dee6 -> :sswitch_29
        0x5d9db603 -> :sswitch_21
    .end sparse-switch
.end method
