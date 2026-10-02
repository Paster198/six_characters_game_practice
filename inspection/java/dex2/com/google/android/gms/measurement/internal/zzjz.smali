.class public final Lcom/google/android/gms/measurement/internal/zzjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field public static final zza:[Ljava/lang/String;

.field public static final zzb:[Ljava/lang/String;

.field public static final zzc:[Ljava/lang/String;

.field public static final zzd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ga_conversion"

    aput-object v2, v0, v1

    const-string v2, "engagement_time_msec"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "exposure_time"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "ad_event_id"

    const/4 v5, 0x3

    aput-object v2, v0, v5

    const-string v2, "ad_unit_id"

    const/4 v6, 0x4

    aput-object v2, v0, v6

    const-string v2, "ga_error"

    const/4 v7, 0x5

    aput-object v2, v0, v7

    const-string v2, "ga_error_value"

    const/4 v8, 0x6

    aput-object v2, v0, v8

    const-string v2, "ga_error_length"

    const/4 v9, 0x7

    aput-object v2, v0, v9

    const-string v2, "ga_event_origin"

    const/16 v10, 0x8

    aput-object v2, v0, v10

    const-string v2, "ga_screen"

    const/16 v11, 0x9

    aput-object v2, v0, v11

    const-string v2, "ga_screen_class"

    const/16 v12, 0xa

    aput-object v2, v0, v12

    const-string v2, "ga_screen_id"

    const/16 v13, 0xb

    aput-object v2, v0, v13

    const-string v2, "ga_previous_screen"

    const/16 v14, 0xc

    aput-object v2, v0, v14

    const-string v2, "ga_previous_class"

    const/16 v15, 0xd

    aput-object v2, v0, v15

    const-string v2, "ga_previous_id"

    const/16 v16, 0xe

    aput-object v2, v0, v16

    const-string v2, "manual_tracking"

    const/16 v17, 0xf

    aput-object v2, v0, v17

    const-string v2, "message_device_time"

    const/16 v18, 0x10

    aput-object v2, v0, v18

    const-string v2, "message_id"

    const/16 v19, 0x11

    aput-object v2, v0, v19

    const-string v2, "message_name"

    const/16 v20, 0x12

    aput-object v2, v0, v20

    const-string v2, "message_time"

    const/16 v21, 0x13

    aput-object v2, v0, v21

    const-string v2, "message_tracking_id"

    const/16 v22, 0x14

    aput-object v2, v0, v22

    const-string v2, "message_type"

    const/16 v23, 0x15

    aput-object v2, v0, v23

    const/16 v2, 0x16

    const-string v24, "previous_app_version"

    aput-object v24, v0, v2

    const/16 v2, 0x17

    const-string v24, "previous_os_version"

    aput-object v24, v0, v2

    const/16 v2, 0x18

    const-string v24, "topic"

    aput-object v24, v0, v2

    const/16 v2, 0x19

    const-string v24, "update_with_analytics"

    aput-object v24, v0, v2

    const/16 v2, 0x1a

    const-string v24, "previous_first_open_count"

    aput-object v24, v0, v2

    const/16 v2, 0x1b

    const-string v24, "system_app"

    aput-object v24, v0, v2

    const/16 v2, 0x1c

    const-string v24, "system_app_update"

    aput-object v24, v0, v2

    const/16 v2, 0x1d

    const-string v24, "previous_install_count"

    aput-object v24, v0, v2

    const/16 v2, 0x1e

    const-string v24, "ga_event_id"

    aput-object v24, v0, v2

    const/16 v2, 0x1f

    const-string v24, "ga_extra_params_ct"

    aput-object v24, v0, v2

    const/16 v2, 0x20

    const-string v24, "ga_group_name"

    aput-object v24, v0, v2

    const/16 v2, 0x21

    const-string v24, "ga_list_length"

    aput-object v24, v0, v2

    const/16 v2, 0x22

    const-string v24, "ga_index"

    aput-object v24, v0, v2

    const/16 v2, 0x23

    const-string v24, "ga_event_name"

    aput-object v24, v0, v2

    const/16 v2, 0x24

    const-string v24, "campaign_info_source"

    aput-object v24, v0, v2

    const/16 v2, 0x25

    const-string v24, "cached_campaign"

    aput-object v24, v0, v2

    const/16 v2, 0x26

    const-string v24, "deferred_analytics_collection"

    aput-object v24, v0, v2

    const/16 v2, 0x27

    const-string v24, "ga_session_number"

    aput-object v24, v0, v2

    const/16 v2, 0x28

    const-string v24, "ga_session_id"

    aput-object v24, v0, v2

    const/16 v2, 0x29

    const-string v24, "campaign_extra_referrer"

    aput-object v24, v0, v2

    const/16 v2, 0x2a

    const-string v24, "app_in_background"

    aput-object v24, v0, v2

    const/16 v2, 0x2b

    const-string v24, "firebase_feature_rollouts"

    aput-object v24, v0, v2

    const/16 v2, 0x2c

    const-string v24, "customer_buyer_stage"

    aput-object v24, v0, v2

    const/16 v2, 0x2d

    const-string v24, "firebase_conversion"

    aput-object v24, v0, v2

    const/16 v2, 0x2e

    const-string v24, "firebase_error"

    aput-object v24, v0, v2

    const/16 v2, 0x2f

    const-string v24, "firebase_error_value"

    aput-object v24, v0, v2

    const/16 v2, 0x30

    const-string v24, "firebase_error_length"

    aput-object v24, v0, v2

    const/16 v2, 0x31

    const-string v24, "firebase_event_origin"

    aput-object v24, v0, v2

    const/16 v2, 0x32

    const-string v24, "firebase_screen"

    aput-object v24, v0, v2

    const/16 v2, 0x33

    const-string v24, "firebase_screen_class"

    aput-object v24, v0, v2

    const/16 v2, 0x34

    const-string v24, "firebase_screen_id"

    aput-object v24, v0, v2

    const/16 v2, 0x35

    const-string v24, "firebase_previous_screen"

    aput-object v24, v0, v2

    const/16 v2, 0x36

    const-string v24, "firebase_previous_class"

    aput-object v24, v0, v2

    const/16 v2, 0x37

    const-string v24, "firebase_previous_id"

    aput-object v24, v0, v2

    const/16 v2, 0x38

    const-string v24, "session_number"

    aput-object v24, v0, v2

    const/16 v2, 0x39

    const-string v24, "session_id"

    aput-object v24, v0, v2

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjz;->zza:[Ljava/lang/String;

    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_c"

    aput-object v2, v0, v1

    const-string v2, "_et"

    aput-object v2, v0, v3

    const-string v2, "_xt"

    aput-object v2, v0, v4

    const-string v2, "_aeid"

    aput-object v2, v0, v5

    const-string v2, "_ai"

    aput-object v2, v0, v6

    const-string v2, "_err"

    aput-object v2, v0, v7

    const-string v2, "_ev"

    aput-object v2, v0, v8

    const-string v2, "_el"

    aput-object v2, v0, v9

    const-string v2, "_o"

    aput-object v2, v0, v10

    const-string v2, "_sn"

    aput-object v2, v0, v11

    const-string v2, "_sc"

    aput-object v2, v0, v12

    const-string v2, "_si"

    aput-object v2, v0, v13

    const-string v2, "_pn"

    aput-object v2, v0, v14

    const-string v2, "_pc"

    aput-object v2, v0, v15

    const-string v2, "_pi"

    aput-object v2, v0, v16

    const-string v2, "_mst"

    aput-object v2, v0, v17

    const-string v2, "_ndt"

    aput-object v2, v0, v18

    const-string v2, "_nmid"

    aput-object v2, v0, v19

    const-string v2, "_nmn"

    aput-object v2, v0, v20

    const-string v2, "_nmt"

    aput-object v2, v0, v21

    const-string v2, "_nmtid"

    aput-object v2, v0, v22

    const-string v2, "_nmc"

    aput-object v2, v0, v23

    const/16 v2, 0x16

    const-string v24, "_pv"

    aput-object v24, v0, v2

    const/16 v2, 0x17

    const-string v24, "_po"

    aput-object v24, v0, v2

    const/16 v2, 0x18

    const-string v24, "_nt"

    aput-object v24, v0, v2

    const/16 v2, 0x19

    const-string v24, "_uwa"

    aput-object v24, v0, v2

    const/16 v2, 0x1a

    const-string v24, "_pfo"

    aput-object v24, v0, v2

    const/16 v2, 0x1b

    const-string v24, "_sys"

    aput-object v24, v0, v2

    const/16 v2, 0x1c

    const-string v24, "_sysu"

    aput-object v24, v0, v2

    const/16 v2, 0x1d

    const-string v24, "_pin"

    aput-object v24, v0, v2

    const/16 v2, 0x1e

    const-string v24, "_eid"

    aput-object v24, v0, v2

    const/16 v2, 0x1f

    const-string v24, "_epc"

    aput-object v24, v0, v2

    const/16 v2, 0x20

    const-string v24, "_gn"

    aput-object v24, v0, v2

    const/16 v2, 0x21

    const-string v24, "_ll"

    aput-object v24, v0, v2

    const/16 v2, 0x22

    const-string v24, "_i"

    aput-object v24, v0, v2

    const/16 v2, 0x23

    const-string v24, "_en"

    aput-object v24, v0, v2

    const/16 v2, 0x24

    const-string v24, "_cis"

    aput-object v24, v0, v2

    const/16 v2, 0x25

    const-string v24, "_cc"

    aput-object v24, v0, v2

    const/16 v2, 0x26

    const-string v24, "_dac"

    aput-object v24, v0, v2

    const/16 v2, 0x27

    const-string v24, "_sno"

    aput-object v24, v0, v2

    const/16 v2, 0x28

    const-string v24, "_sid"

    aput-object v24, v0, v2

    const/16 v2, 0x29

    const-string v24, "_cer"

    aput-object v24, v0, v2

    const/16 v2, 0x2a

    const-string v24, "_aib"

    aput-object v24, v0, v2

    const/16 v2, 0x2b

    const-string v24, "_ffr"

    aput-object v24, v0, v2

    const/16 v2, 0x2c

    const-string v24, "_cbs"

    aput-object v24, v0, v2

    const/16 v2, 0x2d

    const-string v24, "_c"

    aput-object v24, v0, v2

    const/16 v2, 0x2e

    const-string v24, "_err"

    aput-object v24, v0, v2

    const/16 v2, 0x2f

    const-string v24, "_ev"

    aput-object v24, v0, v2

    const/16 v2, 0x30

    const-string v24, "_el"

    aput-object v24, v0, v2

    const/16 v2, 0x31

    const-string v24, "_o"

    aput-object v24, v0, v2

    const/16 v2, 0x32

    const-string v24, "_sn"

    aput-object v24, v0, v2

    const/16 v2, 0x33

    const-string v24, "_sc"

    aput-object v24, v0, v2

    const/16 v2, 0x34

    const-string v24, "_si"

    aput-object v24, v0, v2

    const/16 v2, 0x35

    const-string v24, "_pn"

    aput-object v24, v0, v2

    const/16 v2, 0x36

    const-string v24, "_pc"

    aput-object v24, v0, v2

    const/16 v2, 0x37

    const-string v24, "_pi"

    aput-object v24, v0, v2

    const/16 v2, 0x38

    const-string v24, "_sno"

    aput-object v24, v0, v2

    const/16 v2, 0x39

    const-string v24, "_sid"

    aput-object v24, v0, v2

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "items"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjz;->zzc:[Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "affiliation"

    aput-object v2, v0, v1

    const-string v1, "coupon"

    aput-object v1, v0, v3

    const-string v1, "creative_name"

    aput-object v1, v0, v4

    const-string v1, "creative_slot"

    aput-object v1, v0, v5

    const-string v1, "currency"

    aput-object v1, v0, v6

    const-string v1, "_cbs"

    aput-object v1, v0, v7

    const-string v1, "discount"

    aput-object v1, v0, v8

    const-string v1, "index"

    aput-object v1, v0, v9

    const-string v1, "item_id"

    aput-object v1, v0, v10

    const-string v1, "item_brand"

    aput-object v1, v0, v11

    const-string v1, "item_category"

    aput-object v1, v0, v12

    const-string v1, "item_category2"

    aput-object v1, v0, v13

    const-string v1, "item_category3"

    aput-object v1, v0, v14

    const-string v1, "item_category4"

    aput-object v1, v0, v15

    const-string v1, "item_category5"

    aput-object v1, v0, v16

    const-string v1, "item_list_name"

    aput-object v1, v0, v17

    const-string v1, "item_list_id"

    aput-object v1, v0, v18

    const-string v1, "item_name"

    aput-object v1, v0, v19

    const-string v1, "item_variant"

    aput-object v1, v0, v20

    const-string v1, "location_id"

    aput-object v1, v0, v21

    const-string v1, "payment_type"

    aput-object v1, v0, v22

    const-string v1, "price"

    aput-object v1, v0, v23

    const/16 v1, 0x16

    const-string v2, "promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "promotion_name"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "quantity"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "shipping"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "shipping_tier"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "tax"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "value"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "item_list"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "checkout_step"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "checkout_option"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "item_location_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjz;->zzd:[Ljava/lang/String;

    return-void
.end method
