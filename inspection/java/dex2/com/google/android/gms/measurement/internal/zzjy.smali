.class public final Lcom/google/android/gms/measurement/internal/zzjy;
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

    const/16 v0, 0x21

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ad_activeview"

    aput-object v3, v1, v2

    const-string v3, "ad_click"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "ad_exposure"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "ad_query"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "ad_reward"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const-string v3, "adunit_exposure"

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const-string v3, "app_clear_data"

    const/4 v9, 0x6

    aput-object v3, v1, v9

    const-string v3, "app_exception"

    const/4 v10, 0x7

    aput-object v3, v1, v10

    const-string v3, "app_remove"

    const/16 v11, 0x8

    aput-object v3, v1, v11

    const-string v3, "app_store_refund"

    const/16 v12, 0x9

    aput-object v3, v1, v12

    const-string v3, "app_store_subscription_cancel"

    const/16 v13, 0xa

    aput-object v3, v1, v13

    const-string v3, "app_store_subscription_convert"

    const/16 v14, 0xb

    aput-object v3, v1, v14

    const-string v3, "app_store_subscription_renew"

    const/16 v15, 0xc

    aput-object v3, v1, v15

    const-string v3, "app_upgrade"

    const/16 v16, 0xd

    aput-object v3, v1, v16

    const-string v3, "app_update"

    const/16 v17, 0xe

    aput-object v3, v1, v17

    const-string v3, "ga_campaign"

    const/16 v18, 0xf

    aput-object v3, v1, v18

    const-string v3, "error"

    const/16 v19, 0x10

    aput-object v3, v1, v19

    const-string v3, "first_open"

    const/16 v20, 0x11

    aput-object v3, v1, v20

    const-string v3, "first_visit"

    const/16 v21, 0x12

    aput-object v3, v1, v21

    const-string v3, "in_app_purchase"

    const/16 v22, 0x13

    aput-object v3, v1, v22

    const-string v3, "notification_dismiss"

    move/from16 v23, v2

    const/16 v2, 0x14

    aput-object v3, v1, v2

    const/16 v3, 0x15

    const-string v24, "notification_foreground"

    aput-object v24, v1, v3

    const/16 v3, 0x16

    const-string v24, "notification_open"

    aput-object v24, v1, v3

    const/16 v3, 0x17

    const-string v24, "notification_receive"

    aput-object v24, v1, v3

    const/16 v3, 0x18

    const-string v24, "os_update"

    aput-object v24, v1, v3

    const/16 v3, 0x19

    const-string v24, "session_start"

    aput-object v24, v1, v3

    const/16 v3, 0x1a

    const-string v24, "session_start_with_rollout"

    aput-object v24, v1, v3

    const/16 v3, 0x1b

    const-string v24, "user_engagement"

    aput-object v24, v1, v3

    const/16 v3, 0x1c

    const-string v24, "ad_impression"

    aput-object v24, v1, v3

    const/16 v3, 0x1d

    const-string v24, "screen_view"

    aput-object v24, v1, v3

    const/16 v3, 0x1e

    const-string v24, "ga_extra_parameter"

    aput-object v24, v1, v3

    const/16 v3, 0x1f

    const-string v24, "app_background"

    aput-object v24, v1, v3

    const/16 v3, 0x20

    const-string v24, "firebase_campaign"

    aput-object v24, v1, v3

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "ad_impression"

    aput-object v3, v1, v23

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_aa"

    aput-object v1, v0, v23

    const-string v1, "_ac"

    aput-object v1, v0, v4

    const-string v1, "_xa"

    aput-object v1, v0, v5

    const-string v1, "_aq"

    aput-object v1, v0, v6

    const-string v1, "_ar"

    aput-object v1, v0, v7

    const-string v1, "_xu"

    aput-object v1, v0, v8

    const-string v1, "_cd"

    aput-object v1, v0, v9

    const-string v1, "_ae"

    aput-object v1, v0, v10

    const-string v1, "_ui"

    aput-object v1, v0, v11

    const-string v1, "app_store_refund"

    aput-object v1, v0, v12

    const-string v1, "app_store_subscription_cancel"

    aput-object v1, v0, v13

    const-string v1, "app_store_subscription_convert"

    aput-object v1, v0, v14

    const-string v1, "app_store_subscription_renew"

    aput-object v1, v0, v15

    const-string v1, "_ug"

    aput-object v1, v0, v16

    const-string v1, "_au"

    aput-object v1, v0, v17

    const-string v1, "_cmp"

    aput-object v1, v0, v18

    const-string v1, "_err"

    aput-object v1, v0, v19

    const-string v1, "_f"

    aput-object v1, v0, v20

    const-string v1, "_v"

    aput-object v1, v0, v21

    const-string v1, "_iap"

    aput-object v1, v0, v22

    const-string v1, "_nd"

    aput-object v1, v0, v2

    const/16 v1, 0x15

    const-string v3, "_nf"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v3, "_no"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v3, "_nr"

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string v3, "_ou"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v3, "_s"

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v3, "_ssr"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string v3, "_e"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string v3, "_ai"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v3, "_vs"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string v3, "_ep"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v3, "_ab"

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string v3, "_cmp"

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjy;->zzc:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "purchase"

    aput-object v1, v0, v23

    const-string v1, "refund"

    aput-object v1, v0, v4

    const-string v1, "add_payment_info"

    aput-object v1, v0, v5

    const-string v1, "add_shipping_info"

    aput-object v1, v0, v6

    const-string v1, "add_to_cart"

    aput-object v1, v0, v7

    const-string v1, "add_to_wishlist"

    aput-object v1, v0, v8

    const-string v1, "begin_checkout"

    aput-object v1, v0, v9

    const-string v1, "remove_from_cart"

    aput-object v1, v0, v10

    const-string v1, "select_item"

    aput-object v1, v0, v11

    const-string v1, "select_promotion"

    aput-object v1, v0, v12

    const-string v1, "view_cart"

    aput-object v1, v0, v13

    const-string v1, "view_item"

    aput-object v1, v0, v14

    const-string v1, "view_item_list"

    aput-object v1, v0, v15

    const-string v1, "view_promotion"

    aput-object v1, v0, v16

    const-string v1, "ecommerce_purchase"

    aput-object v1, v0, v17

    const-string v1, "purchase_refund"

    aput-object v1, v0, v18

    const-string v1, "set_checkout_option"

    aput-object v1, v0, v19

    const-string v1, "checkout_progress"

    aput-object v1, v0, v20

    const-string v1, "select_content"

    aput-object v1, v0, v21

    const-string v1, "view_search_results"

    aput-object v1, v0, v22

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjy;->zzd:[Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjy;->zzc:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzmg;->zzb(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjy;->zzc:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzmg;->zzb(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
