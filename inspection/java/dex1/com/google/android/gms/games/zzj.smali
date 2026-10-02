.class public final Lcom/google/android/gms/games/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static zza(I)Lcom/google/android/gms/common/api/Status;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/zzj;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static zzb(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_12b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_128

    const/4 v0, 0x2

    if-eq p0, v0, :cond_125

    const/4 v0, 0x3

    if-eq p0, v0, :cond_122

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_119

    const/4 v0, 0x7

    if-eq p0, v0, :cond_116

    const/16 v0, 0xe

    if-eq p0, v0, :cond_113

    const/16 v0, 0xf

    if-eq p0, v0, :cond_110

    const/16 v0, 0x1964

    if-eq p0, v0, :cond_10d

    const/16 v0, 0x1965

    if-eq p0, v0, :cond_10a

    sparse-switch p0, :sswitch_data_12e

    packed-switch p0, :pswitch_data_19c

    packed-switch p0, :pswitch_data_1ae

    packed-switch p0, :pswitch_data_1b8

    packed-switch p0, :pswitch_data_1c4

    packed-switch p0, :pswitch_data_1d2

    packed-switch p0, :pswitch_data_1de

    packed-switch p0, :pswitch_data_1ec

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Status code (%d) not found!"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_50
    const-string p0, "STATUS_OPERATION_IN_FLIGHT"

    return-object p0

    :pswitch_53
    const-string p0, "STATUS_REAL_TIME_SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_56
    const-string p0, "STATUS_REAL_TIME_INACTIVE_ROOM"

    return-object p0

    :pswitch_59
    const-string p0, "STATUS_REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :pswitch_5c
    const-string p0, "STATUS_PARTICIPANT_NOT_CONNECTED"

    return-object p0

    :pswitch_5f
    const-string p0, "STATUS_INVALID_REAL_TIME_ROOM_ID"

    return-object p0

    :pswitch_62
    const-string p0, "STATUS_REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :pswitch_65
    const-string p0, "STATUS_REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :pswitch_68
    const-string p0, "STATUS_MATCH_ERROR_LOCALLY_MODIFIED"

    return-object p0

    :pswitch_6b
    const-string p0, "STATUS_MATCH_NOT_FOUND"

    return-object p0

    :pswitch_6e
    const-string p0, "STATUS_MATCH_ERROR_ALREADY_REMATCHED"

    return-object p0

    :pswitch_71
    const-string p0, "STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS"

    return-object p0

    :pswitch_74
    const-string p0, "STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION"

    return-object p0

    :pswitch_77
    const-string p0, "STATUS_MULTIPLAYER_DISABLED"

    return-object p0

    :pswitch_7a
    const-string p0, "STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    return-object p0

    :pswitch_7d
    const-string p0, "STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    return-object p0

    :pswitch_80
    const-string p0, "STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    return-object p0

    :pswitch_83
    const-string p0, "STATUS_SNAPSHOT_CONFLICT"

    return-object p0

    :pswitch_86
    const-string p0, "STATUS_SNAPSHOT_COMMIT_FAILED"

    return-object p0

    :pswitch_89
    const-string p0, "STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE"

    return-object p0

    :pswitch_8c
    const-string p0, "STATUS_SNAPSHOT_CREATION_FAILED"

    return-object p0

    :pswitch_8f
    const-string p0, "STATUS_SNAPSHOT_NOT_FOUND"

    return-object p0

    :pswitch_92
    const-string p0, "STATUS_ACHIEVEMENT_UNLOCKED"

    return-object p0

    :pswitch_95
    const-string p0, "STATUS_ACHIEVEMENT_NOT_INCREMENTAL"

    return-object p0

    :pswitch_98
    const-string p0, "STATUS_ACHIEVEMENT_UNKNOWN"

    return-object p0

    :pswitch_9b
    const-string p0, "STATUS_ACHIEVEMENT_UNLOCK_FAILURE"

    return-object p0

    :pswitch_9e
    const-string p0, "STATUS_REQUEST_TOO_MANY_RECIPIENTS"

    return-object p0

    :pswitch_a1
    const-string p0, "STATUS_REQUEST_UPDATE_TOTAL_FAILURE"

    return-object p0

    :pswitch_a4
    const-string p0, "STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS"

    return-object p0

    :pswitch_a7
    const-string p0, "STATUS_AUTH_ERROR_SERVICE_CACHE_MISTAKE"

    return-object p0

    :pswitch_aa
    const-string p0, "STATUS_AUTH_ERROR_ACCOUNT_UNICORN"

    return-object p0

    :pswitch_ad
    const-string p0, "STATUS_AUTH_ERROR_ACCOUNT_NOT_USABLE"

    return-object p0

    :pswitch_b0
    const-string p0, "STATUS_AUTH_ERROR_API_ACCESS_DENIED"

    return-object p0

    :pswitch_b3
    const-string p0, "STATUS_AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    return-object p0

    :pswitch_b6
    const-string p0, "STATUS_AUTH_ERROR_USER_RECOVERABLE"

    return-object p0

    :pswitch_b9
    const-string p0, "STATUS_AUTH_ERROR_HARD"

    return-object p0

    :sswitch_bc
    const-string p0, "STATUS_CONSENT_REQUIRED"

    return-object p0

    :sswitch_bf
    const-string p0, "STATUS_CLIENT_HIDDEN"

    return-object p0

    :sswitch_c2
    const-string p0, "STATUS_CLIENT_EMPTY"

    return-object p0

    :sswitch_c5
    const-string p0, "STATUS_CLIENT_LOADING"

    return-object p0

    :sswitch_c8
    const-string p0, "STATUS_VIDEO_MISSING_OVERLAY_PERMISSION"

    return-object p0

    :sswitch_cb
    const-string p0, "STATUS_VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED"

    return-object p0

    :sswitch_ce
    const-string p0, "STATUS_VIDEO_RELEASE_TIMEOUT"

    return-object p0

    :sswitch_d1
    const-string p0, "STATUS_VIDEO_SCREEN_OFF"

    return-object p0

    :sswitch_d4
    const-string p0, "STATUS_VIDEO_NO_CAMERA"

    return-object p0

    :sswitch_d7
    const-string p0, "STATUS_VIDEO_NO_MIC"

    return-object p0

    :sswitch_da
    const-string p0, "STATUS_VIDEO_OUT_OF_DISK_SPACE"

    return-object p0

    :sswitch_dd
    const-string p0, "STATUS_VIDEO_ALREADY_CAPTURING"

    return-object p0

    :sswitch_e0
    const-string p0, "STATUS_VIDEO_UNEXPECTED_CAPTURE_ERROR"

    return-object p0

    :sswitch_e3
    const-string p0, "STATUS_VIDEO_STORAGE_ERROR"

    return-object p0

    :sswitch_e6
    const-string p0, "STATUS_VIDEO_PERMISSION_ERROR"

    return-object p0

    :sswitch_e9
    const-string p0, "STATUS_VIDEO_UNSUPPORTED"

    return-object p0

    :sswitch_ec
    const-string p0, "STATUS_VIDEO_NOT_ACTIVE"

    return-object p0

    :sswitch_ef
    const-string p0, "STATUS_QUEST_NOT_STARTED"

    return-object p0

    :sswitch_f2
    const-string p0, "STATUS_QUEST_NO_LONGER_AVAILABLE"

    return-object p0

    :sswitch_f5
    const-string p0, "STATUS_MILESTONE_CLAIM_FAILED"

    return-object p0

    :sswitch_f8
    const-string p0, "STATUS_MILESTONE_CLAIMED_PREVIOUSLY"

    return-object p0

    :sswitch_fb
    const-string p0, "STATUS_SNAPSHOT_CONFLICT_MISSING"

    return-object p0

    :sswitch_fe
    const-string p0, "STATUS_PLAYER_OOB_REQUIRED"

    return-object p0

    :sswitch_101
    const-string p0, "STATUS_RESOLVE_STALE_OR_NO_DATA"

    return-object p0

    :sswitch_104
    const-string p0, "STATUS_GAME_NOT_FOUND"

    return-object p0

    :sswitch_107
    const-string p0, "STATUS_APP_MISCONFIGURED"

    return-object p0

    :cond_10a
    const-string p0, "STATUS_MATCH_ERROR_INACTIVE_MATCH"

    return-object p0

    :cond_10d
    const-string p0, "STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    return-object p0

    :cond_110
    const-string p0, "STATUS_TIMEOUT"

    return-object p0

    :cond_113
    const-string p0, "STATUS_INTERRUPTED"

    return-object p0

    :cond_116
    :sswitch_116
    const-string p0, "STATUS_LICENSE_CHECK_FAILED"

    return-object p0

    :cond_119
    const-string p0, "STATUS_NETWORK_ERROR_OPERATION_FAILED"

    return-object p0

    :cond_11c
    const-string p0, "STATUS_NETWORK_ERROR_OPERATION_DEFERRED"

    return-object p0

    :cond_11f
    const-string p0, "STATUS_NETWORK_ERROR_NO_DATA"

    return-object p0

    :cond_122
    const-string p0, "STATUS_NETWORK_ERROR_STALE_DATA"

    return-object p0

    :cond_125
    const-string p0, "STATUS_CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_128
    const-string p0, "STATUS_INTERNAL_ERROR"

    return-object p0

    :cond_12b
    const-string p0, "STATUS_OK"

    return-object p0

    :sswitch_data_12e
    .sparse-switch
        0x7 -> :sswitch_116
        0x8 -> :sswitch_107
        0x9 -> :sswitch_104
        0x1f4 -> :sswitch_101
        0x5dc -> :sswitch_fe
        0xfa6 -> :sswitch_fb
        0x1f40 -> :sswitch_f8
        0x1f41 -> :sswitch_f5
        0x1f42 -> :sswitch_f2
        0x1f43 -> :sswitch_ef
        0x2328 -> :sswitch_ec
        0x2329 -> :sswitch_e9
        0x232a -> :sswitch_e6
        0x232b -> :sswitch_e3
        0x232c -> :sswitch_e0
        0x232e -> :sswitch_dd
        0x2331 -> :sswitch_da
        0x2332 -> :sswitch_d7
        0x2333 -> :sswitch_d4
        0x2334 -> :sswitch_d1
        0x2338 -> :sswitch_ce
        0x2339 -> :sswitch_cb
        0x23f0 -> :sswitch_c8
        0x2710 -> :sswitch_c5
        0x2711 -> :sswitch_c2
        0x2712 -> :sswitch_bf
        0x2713 -> :sswitch_bc
    .end sparse-switch

    :pswitch_data_19c
    .packed-switch 0x3e8
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x7d0
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0xbb8
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0xfa0
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x1770
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
    .end packed-switch

    :pswitch_data_1de
    .packed-switch 0x1967
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
    .end packed-switch

    :pswitch_data_1ec
    .packed-switch 0x1b58
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
    .end packed-switch
.end method
