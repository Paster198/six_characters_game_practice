.class public final Lcom/google/android/gms/games/GamesClientStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final ACHIEVEMENT_NOT_INCREMENTAL:I = 0x67c2

.field public static final ACHIEVEMENT_UNKNOWN:I = 0x67c1

.field public static final ACHIEVEMENT_UNLOCKED:I = 0x67c3

.field public static final ACHIEVEMENT_UNLOCK_FAILURE:I = 0x67c0

.field public static final APP_MISCONFIGURED:I = 0x678c

.field public static final CONSENT_REQUIRED:I = 0x684f

.field public static final GAME_NOT_FOUND:I = 0x678d

.field public static final LICENSE_CHECK_FAILED:I = 0x678b

.field public static final NETWORK_ERROR_NO_DATA:I = 0x6788

.field public static final NETWORK_ERROR_OPERATION_FAILED:I = 0x678a

.field public static final OPERATION_IN_FLIGHT:I = 0x67ef

.field public static final SNAPSHOT_COMMIT_FAILED:I = 0x67cd

.field public static final SNAPSHOT_CONFLICT_MISSING:I = 0x67d0

.field public static final SNAPSHOT_CONTENTS_UNAVAILABLE:I = 0x67cc

.field public static final SNAPSHOT_CREATION_FAILED:I = 0x67cb

.field public static final SNAPSHOT_FOLDER_UNAVAILABLE:I = 0x67cf

.field public static final SNAPSHOT_NOT_FOUND:I = 0x67ca

.field public static final VIDEO_ALREADY_CAPTURING:I = 0x6801

.field public static final VIDEO_NOT_ACTIVE:I = 0x67fc

.field public static final VIDEO_OUT_OF_DISK_SPACE:I = 0x6802

.field public static final VIDEO_PERMISSION_ERROR:I = 0x67fe

.field public static final VIDEO_STORAGE_ERROR:I = 0x67ff

.field public static final VIDEO_UNEXPECTED_CAPTURE_ERROR:I = 0x6800

.field public static final VIDEO_UNSUPPORTED:I = 0x67fd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x67ac

    if-eq p0, v0, :cond_10c

    const/16 v0, 0x67ad

    if-eq p0, v0, :cond_109

    sparse-switch p0, :sswitch_data_110

    packed-switch p0, :pswitch_data_186

    packed-switch p0, :pswitch_data_198

    packed-switch p0, :pswitch_data_1a2

    packed-switch p0, :pswitch_data_1ae

    packed-switch p0, :pswitch_data_1c0

    packed-switch p0, :pswitch_data_1ce

    packed-switch p0, :pswitch_data_1e2

    packed-switch p0, :pswitch_data_1f6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_28
    const-string p0, "QUEST_NOT_STARTED"

    return-object p0

    :pswitch_2b
    const-string p0, "QUEST_NO_LONGER_AVAILABLE"

    return-object p0

    :pswitch_2e
    const-string p0, "MILESTONE_CLAIM_FAILED"

    return-object p0

    :pswitch_31
    const-string p0, "MILESTONE_CLAIMED_PREVIOUSLY"

    return-object p0

    :pswitch_34
    const-string p0, "OPERATION_IN_FLIGHT"

    return-object p0

    :pswitch_37
    const-string p0, "REAL_TIME_SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_3a
    const-string p0, "REAL_TIME_INACTIVE_ROOM"

    return-object p0

    :pswitch_3d
    const-string p0, "REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :pswitch_40
    const-string p0, "PARTICIPANT_NOT_CONNECTED"

    return-object p0

    :pswitch_43
    const-string p0, "INVALID_REAL_TIME_ROOM_ID"

    return-object p0

    :pswitch_46
    const-string p0, "REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :pswitch_49
    const-string p0, "REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :pswitch_4c
    const-string p0, "MATCH_ERROR_LOCALLY_MODIFIED"

    return-object p0

    :pswitch_4f
    const-string p0, "MATCH_NOT_FOUND"

    return-object p0

    :pswitch_52
    const-string p0, "MATCH_ERROR_ALREADY_REMATCHED"

    return-object p0

    :pswitch_55
    const-string p0, "MATCH_ERROR_INVALID_MATCH_RESULTS"

    return-object p0

    :pswitch_58
    const-string p0, "MATCH_ERROR_OUT_OF_DATE_VERSION"

    return-object p0

    :pswitch_5b
    const-string p0, "MATCH_ERROR_INVALID_MATCH_STATE"

    return-object p0

    :pswitch_5e
    const-string p0, "MATCH_ERROR_INACTIVE_MATCH"

    return-object p0

    :pswitch_61
    const-string p0, "MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    return-object p0

    :pswitch_64
    const-string p0, "MULTIPLAYER_ERROR_INVALID_OPERATION"

    return-object p0

    :pswitch_67
    const-string p0, "MULTIPLAYER_DISABLED"

    return-object p0

    :pswitch_6a
    const-string p0, "MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    return-object p0

    :pswitch_6d
    const-string p0, "MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    return-object p0

    :pswitch_70
    const-string p0, "MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    return-object p0

    :pswitch_73
    const-string p0, "SNAPSHOT_CONFLICT_MISSING"

    return-object p0

    :pswitch_76
    const-string p0, "SNAPSHOT_FOLDER_UNAVAILABLE"

    return-object p0

    :pswitch_79
    const-string p0, "SNAPSHOT_CONFLICT"

    return-object p0

    :pswitch_7c
    const-string p0, "SNAPSHOT_COMMIT_FAILED"

    return-object p0

    :pswitch_7f
    const-string p0, "SNAPSHOT_CONTENTS_UNAVAILABLE"

    return-object p0

    :pswitch_82
    const-string p0, "SNAPSHOT_CREATION_FAILED"

    return-object p0

    :pswitch_85
    const-string p0, "SNAPSHOT_NOT_FOUND"

    return-object p0

    :pswitch_88
    const-string p0, "ACHIEVEMENT_UNLOCKED"

    return-object p0

    :pswitch_8b
    const-string p0, "ACHIEVEMENT_NOT_INCREMENTAL"

    return-object p0

    :pswitch_8e
    const-string p0, "ACHIEVEMENT_UNKNOWN"

    return-object p0

    :pswitch_91
    const-string p0, "ACHIEVEMENT_UNLOCK_FAILURE"

    return-object p0

    :pswitch_94
    const-string p0, "REQUEST_TOO_MANY_RECIPIENTS"

    return-object p0

    :pswitch_97
    const-string p0, "REQUEST_UPDATE_TOTAL_FAILURE"

    return-object p0

    :pswitch_9a
    const-string p0, "REQUEST_UPDATE_PARTIAL_SUCCESS"

    return-object p0

    :pswitch_9d
    const-string p0, "AUTH_ERROR_SERVICE_CACHE_MISTAKE"

    return-object p0

    :pswitch_a0
    const-string p0, "AUTH_ERROR_ACCOUNT_UNICORN"

    return-object p0

    :pswitch_a3
    const-string p0, "AUTH_ERROR_ACCOUNT_NOT_USABLE"

    return-object p0

    :pswitch_a6
    const-string p0, "AUTH_ERROR_API_ACCESS_DENIED"

    return-object p0

    :pswitch_a9
    const-string p0, "AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    return-object p0

    :pswitch_ac
    const-string p0, "AUTH_ERROR_USER_RECOVERABLE"

    return-object p0

    :pswitch_af
    const-string p0, "AUTH_ERROR_HARD"

    return-object p0

    :sswitch_b2
    const-string p0, "PLAYER_NOT_FOUND"

    return-object p0

    :sswitch_b5
    const-string p0, "CONSENT_REQUIRED"

    return-object p0

    :sswitch_b8
    const-string p0, "CLIENT_HIDDEN"

    return-object p0

    :sswitch_bb
    const-string p0, "CLIENT_EMPTY"

    return-object p0

    :sswitch_be
    const-string p0, "CLIENT_LOADING"

    return-object p0

    :sswitch_c1
    const-string p0, "VIDEO_CAPTURE_OVERLAY_VISIBLE"

    return-object p0

    :sswitch_c4
    const-string p0, "VIDEO_MISSING_OVERLAY_PERMISSION"

    return-object p0

    :sswitch_c7
    const-string p0, "CAPTURE_ALREADY_PAUSED"

    return-object p0

    :sswitch_ca
    const-string p0, "VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED"

    return-object p0

    :sswitch_cd
    const-string p0, "VIDEO_RELEASE_TIMEOUT"

    return-object p0

    :sswitch_d0
    const-string p0, "VIDEO_SCREEN_OFF"

    return-object p0

    :sswitch_d3
    const-string p0, "VIDEO_NO_CAMERA"

    return-object p0

    :sswitch_d6
    const-string p0, "VIDEO_NO_MIC"

    return-object p0

    :sswitch_d9
    const-string p0, "VIDEO_OUT_OF_DISK_SPACE"

    return-object p0

    :sswitch_dc
    const-string p0, "VIDEO_ALREADY_CAPTURING"

    return-object p0

    :sswitch_df
    const-string p0, "VIDEO_UNEXPECTED_CAPTURE_ERROR"

    return-object p0

    :sswitch_e2
    const-string p0, "VIDEO_STORAGE_ERROR"

    return-object p0

    :sswitch_e5
    const-string p0, "VIDEO_PERMISSION_ERROR"

    return-object p0

    :sswitch_e8
    const-string p0, "VIDEO_UNSUPPORTED"

    return-object p0

    :sswitch_eb
    const-string p0, "VIDEO_NOT_ACTIVE"

    return-object p0

    :sswitch_ee
    const-string p0, "RESOLVE_STALE_OR_NO_DATA"

    return-object p0

    :sswitch_f1
    const-string p0, "GAME_NOT_FOUND"

    return-object p0

    :sswitch_f4
    const-string p0, "APP_MISCONFIGURED"

    return-object p0

    :sswitch_f7
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :sswitch_fa
    const-string p0, "NETWORK_ERROR_OPERATION_FAILED"

    return-object p0

    :sswitch_fd
    const-string p0, "NETWORK_ERROR_OPERATION_DEFERRED"

    return-object p0

    :sswitch_100
    const-string p0, "NETWORK_ERROR_NO_DATA"

    return-object p0

    :sswitch_103
    const-string p0, "NETWORK_ERROR_STALE_DATA"

    return-object p0

    :sswitch_106
    const-string p0, "CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_109
    const-string p0, "PLAYER_LEVEL_UP"

    return-object p0

    :cond_10c
    const-string p0, "PLAYER_OOB_REQUIRED"

    return-object p0

    nop

    :sswitch_data_110
    .sparse-switch
        0x6786 -> :sswitch_106
        0x6787 -> :sswitch_103
        0x6788 -> :sswitch_100
        0x6789 -> :sswitch_fd
        0x678a -> :sswitch_fa
        0x678b -> :sswitch_f7
        0x678c -> :sswitch_f4
        0x678d -> :sswitch_f1
        0x6798 -> :sswitch_ee
        0x67fc -> :sswitch_eb
        0x67fd -> :sswitch_e8
        0x67fe -> :sswitch_e5
        0x67ff -> :sswitch_e2
        0x6800 -> :sswitch_df
        0x6801 -> :sswitch_dc
        0x6802 -> :sswitch_d9
        0x6803 -> :sswitch_d6
        0x6804 -> :sswitch_d3
        0x6805 -> :sswitch_d0
        0x6806 -> :sswitch_cd
        0x6807 -> :sswitch_ca
        0x6808 -> :sswitch_c7
        0x681a -> :sswitch_c4
        0x681c -> :sswitch_c1
        0x684c -> :sswitch_be
        0x684d -> :sswitch_bb
        0x684e -> :sswitch_b8
        0x684f -> :sswitch_b5
        0x6850 -> :sswitch_b2
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x67a2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x67b6
        :pswitch_9a
        :pswitch_97
        :pswitch_94
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0x67c0
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x67ca
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x67d4
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x67de
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch

    :pswitch_data_1e2
    .packed-switch 0x67e8
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_1f6
    .packed-switch 0x67f2
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method public static zza(I)Lcom/google/android/gms/common/api/Status;
    .registers 3

    .line 1
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method
