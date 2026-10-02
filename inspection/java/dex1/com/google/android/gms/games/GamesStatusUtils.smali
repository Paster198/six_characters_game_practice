.class public final Lcom/google/android/gms/games/GamesStatusUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V
    .registers 3

    if-eqz p0, :cond_f

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_f
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/games/zzj;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    sget v0, Lcom/google/android/gms/games/GamesClientStatusCodes;->NETWORK_ERROR_NO_DATA:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_160

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_157

    const/4 v1, 0x5

    if-eq v0, v1, :cond_154

    const/4 v1, 0x6

    if-eq v0, v1, :cond_151

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14e

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_14b

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_148

    sparse-switch v0, :sswitch_data_19e

    packed-switch v0, :pswitch_data_200

    packed-switch v0, :pswitch_data_212

    packed-switch v0, :pswitch_data_21c

    packed-switch v0, :pswitch_data_228

    packed-switch v0, :pswitch_data_23a

    packed-switch v0, :pswitch_data_248

    packed-switch v0, :pswitch_data_25c

    packed-switch v0, :pswitch_data_270

    move v1, v0

    goto/16 :goto_162

    :pswitch_45
    const/16 v1, 0x67f5

    goto/16 :goto_162

    :pswitch_49
    const/16 v1, 0x67f4

    goto/16 :goto_162

    :pswitch_4d
    const/16 v1, 0x67f3

    goto/16 :goto_162

    :pswitch_51
    const/16 v1, 0x67f2

    goto/16 :goto_162

    :pswitch_55
    const/16 v1, 0x67ef

    goto/16 :goto_162

    :pswitch_59
    const/16 v1, 0x67ee

    goto/16 :goto_162

    :pswitch_5d
    const/16 v1, 0x67ed

    goto/16 :goto_162

    :pswitch_61
    const/16 v1, 0x67ec

    goto/16 :goto_162

    :pswitch_65
    const/16 v1, 0x67eb

    goto/16 :goto_162

    :pswitch_69
    const/16 v1, 0x67ea

    goto/16 :goto_162

    :pswitch_6d
    const/16 v1, 0x67e9

    goto/16 :goto_162

    :pswitch_71
    const/16 v1, 0x67e8

    goto/16 :goto_162

    :pswitch_75
    const/16 v1, 0x67e5

    goto/16 :goto_162

    :pswitch_79
    const/16 v1, 0x67e4

    goto/16 :goto_162

    :pswitch_7d
    const/16 v1, 0x67e3

    goto/16 :goto_162

    :pswitch_81
    const/16 v1, 0x67e2

    goto/16 :goto_162

    :pswitch_85
    const/16 v1, 0x67e1

    goto/16 :goto_162

    :pswitch_89
    const/16 v1, 0x67e0

    goto/16 :goto_162

    :pswitch_8d
    const/16 v1, 0x67df

    goto/16 :goto_162

    :pswitch_91
    const/16 v1, 0x67de

    goto/16 :goto_162

    :pswitch_95
    const/16 v1, 0x67d8

    goto/16 :goto_162

    :pswitch_99
    const/16 v1, 0x67d7

    goto/16 :goto_162

    :pswitch_9d
    const/16 v1, 0x67d6

    goto/16 :goto_162

    :pswitch_a1
    const/16 v1, 0x67d5

    goto/16 :goto_162

    :pswitch_a5
    const/16 v1, 0x67d4

    goto/16 :goto_162

    :pswitch_a9
    const/16 v1, 0x67d0

    goto/16 :goto_162

    :pswitch_ad
    const/16 v1, 0x67cf

    goto/16 :goto_162

    :pswitch_b1
    const/16 v1, 0x67ce

    goto/16 :goto_162

    :pswitch_b5
    const/16 v1, 0x67cd

    goto/16 :goto_162

    :pswitch_b9
    const/16 v1, 0x67cc

    goto/16 :goto_162

    :pswitch_bd
    const/16 v1, 0x67cb

    goto/16 :goto_162

    :pswitch_c1
    const/16 v1, 0x67ca

    goto/16 :goto_162

    :pswitch_c5
    const/16 v1, 0x67c3

    goto/16 :goto_162

    :pswitch_c9
    const/16 v1, 0x67c2

    goto/16 :goto_162

    :pswitch_cd
    const/16 v1, 0x67c1

    goto/16 :goto_162

    :pswitch_d1
    const/16 v1, 0x67c0

    goto/16 :goto_162

    :pswitch_d5
    const/16 v1, 0x67b8

    goto/16 :goto_162

    :pswitch_d9
    const/16 v1, 0x67b7

    goto/16 :goto_162

    :pswitch_dd
    const/16 v1, 0x67b6

    goto/16 :goto_162

    :pswitch_e1
    const/16 v1, 0x67a8

    goto/16 :goto_162

    :pswitch_e5
    const/16 v1, 0x67a7

    goto/16 :goto_162

    :pswitch_e9
    const/16 v1, 0x67a6

    goto/16 :goto_162

    :pswitch_ed
    const/16 v1, 0x67a5

    goto/16 :goto_162

    :pswitch_f1
    const/16 v1, 0x67a4

    goto/16 :goto_162

    :pswitch_f5
    const/16 v1, 0x67a3

    goto/16 :goto_162

    :pswitch_f9
    const/16 v1, 0x67a2

    goto/16 :goto_162

    :sswitch_fd
    const/16 v1, 0x6850

    goto/16 :goto_162

    :sswitch_101
    const/16 v1, 0x684f

    goto/16 :goto_162

    :sswitch_105
    const/16 v1, 0x684e

    goto/16 :goto_162

    :sswitch_109
    const/16 v1, 0x684d

    goto/16 :goto_162

    :sswitch_10d
    const/16 v1, 0x684c

    goto/16 :goto_162

    :sswitch_111
    const/16 v1, 0x681c

    goto/16 :goto_162

    :sswitch_115
    const/16 v1, 0x681a

    goto :goto_162

    :sswitch_118
    const/16 v1, 0x6808

    goto :goto_162

    :sswitch_11b
    const/16 v1, 0x6807

    goto :goto_162

    :sswitch_11e
    const/16 v1, 0x6806

    goto :goto_162

    :sswitch_121
    const/16 v1, 0x6805

    goto :goto_162

    :sswitch_124
    const/16 v1, 0x6804

    goto :goto_162

    :sswitch_127
    const/16 v1, 0x6803

    goto :goto_162

    :sswitch_12a
    const/16 v1, 0x6802

    goto :goto_162

    :sswitch_12d
    const/16 v1, 0x6801

    goto :goto_162

    :sswitch_130
    const/16 v1, 0x6800

    goto :goto_162

    :sswitch_133
    const/16 v1, 0x67ff

    goto :goto_162

    :sswitch_136
    const/16 v1, 0x67fe

    goto :goto_162

    :sswitch_139
    const/16 v1, 0x67fd

    goto :goto_162

    :sswitch_13c
    const/16 v1, 0x67fc

    goto :goto_162

    :sswitch_13f
    const/16 v1, 0x6798

    goto :goto_162

    :sswitch_142
    const/16 v1, 0x678d

    goto :goto_162

    :sswitch_145
    const/16 v1, 0x678c

    goto :goto_162

    :cond_148
    const/16 v1, 0x67ad

    goto :goto_162

    :cond_14b
    const/16 v1, 0x67ac

    goto :goto_162

    :cond_14e
    :sswitch_14e
    const/16 v1, 0x678b

    goto :goto_162

    :cond_151
    const/16 v1, 0x678a

    goto :goto_162

    :cond_154
    const/16 v1, 0x6789

    goto :goto_162

    :cond_157
    const/16 v1, 0x6788

    goto :goto_162

    :cond_15a
    const/16 v1, 0x6787

    goto :goto_162

    :cond_15d
    const/16 v1, 0x6786

    goto :goto_162

    :cond_160
    const/16 v1, 0x8

    .line 3
    :goto_162
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_169

    goto :goto_195

    .line 4
    :cond_169
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/zzj;->zzb(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    goto :goto_195

    :cond_184
    packed-switch v0, :pswitch_data_27c

    :pswitch_187
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object p1, v0

    .line 9
    :goto_195
    :pswitch_195
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    nop

    :sswitch_data_19e
    .sparse-switch
        0x7 -> :sswitch_14e
        0x8 -> :sswitch_145
        0x9 -> :sswitch_142
        0x1f4 -> :sswitch_13f
        0x2328 -> :sswitch_13c
        0x2329 -> :sswitch_139
        0x232a -> :sswitch_136
        0x232b -> :sswitch_133
        0x232c -> :sswitch_130
        0x232e -> :sswitch_12d
        0x2331 -> :sswitch_12a
        0x2332 -> :sswitch_127
        0x2333 -> :sswitch_124
        0x2334 -> :sswitch_121
        0x2338 -> :sswitch_11e
        0x2339 -> :sswitch_11b
        0x233a -> :sswitch_118
        0x23f0 -> :sswitch_115
        0x23f2 -> :sswitch_111
        0x2710 -> :sswitch_10d
        0x2711 -> :sswitch_109
        0x2712 -> :sswitch_105
        0x2713 -> :sswitch_101
        0x2714 -> :sswitch_fd
    .end sparse-switch

    :pswitch_data_200
    .packed-switch 0x3e8
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x7d0
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0xbb8
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0xfa0
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
    .end packed-switch

    :pswitch_data_23a
    .packed-switch 0x1770
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x1964
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
    .end packed-switch

    :pswitch_data_25c
    .packed-switch 0x1b58
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x1f40
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x2
        :pswitch_195
        :pswitch_195
        :pswitch_195
        :pswitch_195
        :pswitch_195
        :pswitch_195
        :pswitch_195
        :pswitch_187
        :pswitch_195
    .end packed-switch
.end method
