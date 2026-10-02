.class public final Lcom/google/android/gms/internal/measurement/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 28

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "indexOf"

    const-string v6, "reverse"

    const-string v7, "slice"

    const-string v8, "shift"

    const-string v9, "every"

    const-string v10, "sort"

    const-string v11, "some"

    const-string v12, "join"

    const-string v13, "pop"

    const-string v14, "map"

    const-string v15, "lastIndexOf"

    move/from16 v16, v4

    const-string v4, "forEach"

    const-string v3, "filter"

    const-string v1, "toString"

    const/16 v17, -0x1

    const/16 v19, 0x1

    .line 19
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v20, v2

    sparse-switch v16, :sswitch_data_77a

    goto/16 :goto_f6

    .line 1
    :sswitch_33
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x4

    goto/16 :goto_f8

    :sswitch_3c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0xc

    goto/16 :goto_f8

    :sswitch_46
    const-string v2, "reduceRight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0xb

    goto/16 :goto_f8

    :sswitch_52
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0xe

    goto/16 :goto_f8

    :sswitch_5c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0xd

    goto/16 :goto_f8

    :sswitch_66
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    move/from16 v0, v19

    goto/16 :goto_f8

    :sswitch_70
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0x10

    goto/16 :goto_f8

    :sswitch_7a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0xf

    goto/16 :goto_f8

    :sswitch_84
    const-string v2, "push"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0x9

    goto/16 :goto_f8

    :sswitch_90
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x5

    goto/16 :goto_f8

    :sswitch_99
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0x8

    goto :goto_f8

    :sswitch_a2
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x7

    goto :goto_f8

    :sswitch_aa
    const-string v2, "unshift"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0x13

    goto :goto_f8

    :sswitch_b5
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x6

    goto :goto_f8

    :sswitch_bd
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x3

    goto :goto_f8

    :sswitch_c5
    const-string v2, "splice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0x11

    goto :goto_f8

    :sswitch_d0
    const-string v2, "reduce"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0xa

    goto :goto_f8

    :sswitch_db
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x2

    goto :goto_f8

    :sswitch_e3
    const-string v2, "concat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x0

    goto :goto_f8

    :sswitch_ed
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/16 v0, 0x12

    goto :goto_f8

    :cond_f6
    :goto_f6
    move/from16 v0, v17

    :goto_f8
    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    const-string v2, "Callback should be a method"

    move/from16 p0, v0

    move-object/from16 v23, v1

    const-wide/16 v0, 0x0

    packed-switch p0, :pswitch_data_7cc

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_10d
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18e

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 166
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 167
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    move-object/from16 v6, p2

    .line 168
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v3, :cond_13a

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_11c

    .line 1
    :cond_13a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v2

    :goto_14a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_169

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v9, p1

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_14a

    :cond_169
    move-object/from16 v9, p1

    .line 175
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzn()V

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v1

    :goto_172
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_190

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 178
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_172

    :cond_18e
    move-object/from16 v9, p1

    .line 179
    :cond_190
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_19f
    move-object/from16 v9, p1

    move-object/from16 v3, p3

    move-object/from16 v0, v23

    const/4 v1, 0x0

    .line 162
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 163
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    .line 164
    const-string v1, ","

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1b5
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    const/4 v1, 0x0

    .line 140
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c8

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 141
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    return-object v0

    .line 142
    :cond_1c8
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v4

    double-to-int v0, v4

    if-gez v0, :cond_1eb

    .line 143
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1f5

    .line 144
    :cond_1eb
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    if-le v0, v1, :cond_1f5

    .line 145
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    .line 146
    :cond_1f5
    :goto_1f5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 147
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v5, v19

    if-le v4, v5, :cond_26c

    .line 152
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v4, :cond_23e

    move v5, v0

    :goto_225
    add-int v7, v0, v4

    .line 153
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v5, v7, :cond_23e

    .line 154
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v7

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    .line 156
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzp(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_225

    .line 157
    :cond_23e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_280

    const/4 v1, 0x2

    .line 158
    :goto_246
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_280

    .line 159
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v5, :cond_264

    add-int v5, v0, v1

    add-int/lit8 v5, v5, -0x2

    .line 160
    invoke-virtual {v9, v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_246

    .line 159
    :cond_264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26c
    :goto_26c
    if-ge v0, v1, :cond_280

    .line 149
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    const/4 v3, 0x0

    .line 151
    invoke-virtual {v9, v0, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26c

    :cond_280
    return-object v2

    :pswitch_281
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move/from16 v5, v19

    .line 129
    invoke-static {v10, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    .line 130
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_42a

    .line 131
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzm()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b7

    const/4 v1, 0x0

    .line 133
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v2, :cond_2af

    .line 135
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzai;

    goto :goto_2b8

    .line 133
    :cond_2af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b7
    const/4 v1, 0x0

    .line 135
    :goto_2b8
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzba;

    invoke-direct {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzba;-><init>(Lcom/google/android/gms/internal/measurement/zzai;Lcom/google/android/gms/internal/measurement/zzg;)V

    .line 136
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzn()V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    add-int/lit8 v3, v2, 0x1

    .line 139
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    move v2, v3

    goto :goto_2c8

    :pswitch_2db
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move/from16 v5, v19

    .line 118
    invoke-static {v11, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 119
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v1, :cond_34f

    .line 121
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    if-nez v1, :cond_2fe

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzl:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 122
    :cond_2fe
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzai;

    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v1

    :cond_304
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34c

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 125
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(I)Z

    move-result v3

    if-eqz v3, :cond_304

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzap;

    .line 126
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v3, v16

    int-to-double v4, v2

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/16 v19, 0x1

    aput-object v2, v3, v19

    const/16 v18, 0x2

    aput-object v9, v3, v18

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzap;->zzg()Ljava/lang/Boolean;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_304

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzk:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    :cond_34c
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzl:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 119
    :cond_34f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_355
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    .line 104
    invoke-static {v7, v4, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    .line 105
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36a

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzd()Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    return-object v0

    .line 107
    :cond_36a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v2

    int-to-double v4, v2

    const/4 v2, 0x0

    .line 108
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v7

    cmpg-double v2, v7, v0

    if-gez v2, :cond_390

    add-double/2addr v7, v4

    .line 109
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_394

    .line 110
    :cond_390
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 111
    :goto_394
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x2

    if-ne v2, v10, :cond_3c0

    const/4 v2, 0x1

    .line 112
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v2

    cmpg-double v6, v2, v0

    if-gez v6, :cond_3bc

    add-double/2addr v4, v2

    .line 113
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_3c0

    .line 114
    :cond_3bc
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 113
    :cond_3c0
    :goto_3c0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 115
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    double-to-int v1, v7

    :goto_3c6
    int-to-double v2, v1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3d9

    .line 116
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c6

    :cond_3d9
    return-object v0

    :pswitch_3da
    move-object/from16 v9, p1

    move-object/from16 v3, p3

    const/4 v1, 0x0

    .line 100
    invoke-static {v8, v1, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    if-nez v0, :cond_3eb

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 102
    :cond_3eb
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 103
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzp(I)V

    return-object v0

    :pswitch_3f3
    move-object/from16 v9, p1

    move-object/from16 v3, p3

    const/4 v1, 0x0

    .line 92
    invoke-static {v6, v1, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 93
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    if-eqz v0, :cond_42a

    const/4 v2, 0x0

    :goto_402
    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_42a

    .line 94
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(I)Z

    move-result v1

    if-eqz v1, :cond_427

    .line 95
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 97
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(I)Z

    move-result v4

    if-eqz v4, :cond_424

    .line 98
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    .line 99
    :cond_424
    invoke-virtual {v9, v3, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    :cond_427
    add-int/lit8 v2, v2, 0x1

    goto :goto_402

    :cond_42a
    return-object v9

    :pswitch_42b
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    const/4 v1, 0x0

    .line 180
    invoke-static {v9, v6, v3, v1}, Lcom/google/android/gms/internal/measurement/zzbb;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    return-object v0

    :pswitch_437
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move/from16 v5, v19

    .line 181
    invoke-static {v9, v6, v3, v5}, Lcom/google/android/gms/internal/measurement/zzbb;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    return-object v0

    :pswitch_444
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    .line 87
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46c

    .line 88
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_454
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    .line 89
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v2

    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_454

    .line 91
    :cond_46c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_47b
    move-object/from16 v9, p1

    move-object/from16 v3, p3

    const/4 v1, 0x0

    .line 83
    invoke-static {v13, v1, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 84
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    if-nez v0, :cond_48c

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    :cond_48c
    add-int/lit8 v0, v0, -0x1

    .line 85
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 86
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzp(I)V

    return-object v1

    :pswitch_496
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move/from16 v5, v19

    const/4 v1, 0x0

    .line 76
    invoke-static {v14, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 77
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v1, :cond_4c4

    .line 79
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    if-nez v1, :cond_4bc

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 80
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    return-object v0

    .line 81
    :cond_4bc
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    const/4 v3, 0x0

    .line 82
    invoke-static {v9, v6, v0, v3, v3}, Lcom/google/android/gms/internal/measurement/zzbb;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    return-object v0

    .line 77
    :cond_4c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4ca
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    .line 60
    invoke-static {v15, v4, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    .line 61
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4e7

    const/4 v5, 0x0

    .line 62
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 63
    :cond_4e7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_52b

    .line 65
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_514

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    goto :goto_520

    .line 68
    :cond_514
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v3

    :goto_520
    cmpg-double v5, v3, v0

    if-gez v5, :cond_52c

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    goto :goto_52c

    :cond_52b
    int-to-double v3, v4

    :cond_52c
    :goto_52c
    cmpg-double v0, v3, v0

    if-gez v0, :cond_53a

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 71
    :cond_53a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_544
    if-ltz v0, :cond_564

    .line 72
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(I)Z

    move-result v1

    if-eqz v1, :cond_561

    .line 73
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzl(Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Z

    move-result v1

    if-eqz v1, :cond_561

    int-to-double v0, v0

    .line 74
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_561
    add-int/lit8 v0, v0, -0x1

    goto :goto_544

    .line 75
    :cond_564
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_56e
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move/from16 v5, v19

    .line 54
    invoke-static {v12, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    .line 55
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    if-nez v0, :cond_582

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzm:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 56
    :cond_582
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a4

    const/4 v1, 0x0

    .line 57
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzan;

    if-nez v1, :cond_5a1

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzau;

    if-eqz v1, :cond_59c

    goto :goto_5a1

    .line 58
    :cond_59c
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a6

    .line 57
    :cond_5a1
    :goto_5a1
    const-string v0, ""

    goto :goto_5a6

    .line 58
    :cond_5a4
    const-string v0, ","

    .line 59
    :goto_5a6
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_5b0
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    .line 40
    invoke-static {v5, v4, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    .line 41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5cd

    const/4 v5, 0x0

    .line 42
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 43
    :cond_5cd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_609

    .line 44
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 45
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v3

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_5fd

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_5fd
    cmpg-double v0, v3, v0

    if-gez v0, :cond_608

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v3

    goto :goto_609

    :cond_608
    move-wide v0, v3

    .line 49
    :cond_609
    :goto_609
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v3

    :cond_60d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_636

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v5, v4

    cmpg-double v7, v5, v0

    if-ltz v7, :cond_60d

    .line 51
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzl(Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Z

    move-result v4

    if-eqz v4, :cond_60d

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 53
    :cond_636
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_640
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move/from16 v5, v19

    .line 34
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 35
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v1, :cond_66c

    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzb()I

    move-result v1

    if-nez v1, :cond_663

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 38
    :cond_663
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    const/4 v3, 0x0

    .line 39
    invoke-static {v9, v6, v0, v3, v3}, Lcom/google/android/gms/internal/measurement/zzbb;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 35
    :cond_66c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_672
    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v0, p3

    move/from16 v5, v19

    .line 21
    invoke-static {v3, v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v1, :cond_6cd

    .line 24
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzb()I

    move-result v1

    if-nez v1, :cond_698

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 25
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    return-object v0

    .line 26
    :cond_698
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzd()Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    move-object/from16 v4, v20

    const/4 v3, 0x0

    .line 28
    invoke-static {v9, v6, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbb;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 29
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6cc

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_6b0

    :cond_6cc
    return-object v2

    .line 22
    :cond_6cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6d3
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v0, p3

    move/from16 v5, v19

    move-object/from16 v4, v20

    .line 14
    invoke-static {v9, v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    const/4 v5, 0x0

    .line 15
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v3, :cond_712

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v2

    if-nez v2, :cond_6f8

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzk:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 18
    :cond_6f8
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 19
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v6, v0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzbb;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v1

    if-eq v0, v1, :cond_70f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzl:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    :cond_70f
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzk:Lcom/google/android/gms/internal/measurement/zzap;

    return-object v0

    .line 15
    :cond_712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_718
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v0, p3

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzd()Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_779

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72e
    :goto_72e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_779

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    .line 5
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v3, :cond_771

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v3

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v4, :cond_76d

    .line 7
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v4

    .line 9
    :goto_750
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72e

    .line 10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_750

    .line 12
    :cond_76d
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_72e

    .line 5
    :cond_771
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_779
    return-object v1

    :sswitch_data_77a
    .sparse-switch
        -0x69e9ad94 -> :sswitch_ed
        -0x50c088ec -> :sswitch_e3
        -0x4bf73488 -> :sswitch_db
        -0x37b90a9a -> :sswitch_d0
        -0x3565b984 -> :sswitch_c5
        -0x28732996 -> :sswitch_bd
        -0x1bdda92d -> :sswitch_b5
        -0x108c6a77 -> :sswitch_aa
        0x1a55c -> :sswitch_a2
        0x1b251 -> :sswitch_99
        0x31dd2a -> :sswitch_90
        0x34af1a -> :sswitch_84
        0x35f4f4 -> :sswitch_7a
        0x35f59e -> :sswitch_70
        0x5c6731b -> :sswitch_66
        0x6856c82 -> :sswitch_5c
        0x6873d92 -> :sswitch_52
        0x398d4c56 -> :sswitch_46
        0x418e52e2 -> :sswitch_3c
        0x73d44649 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_7cc
    .packed-switch 0x0
        :pswitch_718
        :pswitch_6d3
        :pswitch_672
        :pswitch_640
        :pswitch_5b0
        :pswitch_56e
        :pswitch_4ca
        :pswitch_496
        :pswitch_47b
        :pswitch_444
        :pswitch_437
        :pswitch_42b
        :pswitch_3f3
        :pswitch_3da
        :pswitch_355
        :pswitch_2db
        :pswitch_281
        :pswitch_1b5
        :pswitch_19f
        :pswitch_10d
    .end packed-switch
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;
    .registers 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzk()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzap;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    aput-object v5, v3, v4

    int-to-double v4, v2

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzg()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_5c

    :cond_4c
    if-eqz p4, :cond_58

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzg()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8
    :cond_58
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_9

    :cond_5c
    :goto_5c
    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 13

    .line 1
    const-string v0, "reduce"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    .line 2
    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v4, :cond_9d

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_36

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    instance-of v4, p2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_2e

    goto :goto_3d

    .line 16
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to parse initial value"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result p2

    if-eqz p2, :cond_95

    const/4 p2, 0x0

    .line 9
    :goto_3d
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzai;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v4

    if-eqz p3, :cond_47

    move v5, v0

    goto :goto_49

    :cond_47
    add-int/lit8 v5, v4, -0x1

    :goto_49
    const/4 v6, -0x1

    if-eqz p3, :cond_4e

    add-int/2addr v4, v6

    goto :goto_4f

    :cond_4e
    move v4, v0

    :goto_4f
    if-eq v1, p3, :cond_52

    goto :goto_53

    :cond_52
    move v6, v1

    :goto_53
    if-nez p2, :cond_5a

    .line 11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    :cond_59
    :goto_59
    add-int/2addr v5, v6

    :cond_5a
    sub-int p3, v4, v5

    mul-int/2addr p3, v6

    if-ltz p3, :cond_94

    .line 12
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(I)Z

    move-result p3

    if-eqz p3, :cond_59

    const/4 p3, 0x4

    new-array p3, p3, [Lcom/google/android/gms/internal/measurement/zzap;

    aput-object p2, p3, v0

    .line 13
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    aput-object p2, p3, v1

    int-to-double v7, v5

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p2, v7}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    aput-object p2, p3, v2

    const/4 p2, 0x3

    aput-object p0, p3, p2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez p3, :cond_8c

    goto :goto_59

    .line 7
    :cond_8c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reduce operation failed"

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_94
    return-object p2

    .line 8
    :cond_95
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty array with no initial value error"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback should be a method"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
