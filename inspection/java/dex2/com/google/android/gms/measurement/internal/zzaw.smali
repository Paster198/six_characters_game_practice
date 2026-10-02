.class final Lcom/google/android/gms/measurement/internal/zzaw;
.super Lcom/google/android/gms/measurement/internal/zzpg;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# static fields
.field static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;

.field private static final zzd:[Ljava/lang/String;

.field private static final zze:[Ljava/lang/String;

.field private static final zzf:[Ljava/lang/String;

.field private static final zzh:[Ljava/lang/String;

.field private static final zzi:[Ljava/lang/String;

.field private static final zzj:[Ljava/lang/String;

.field private static final zzk:[Ljava/lang/String;

.field private static final zzl:[Ljava/lang/String;


# instance fields
.field private final zzm:Lcom/google/android/gms/measurement/internal/zzav;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzou;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "last_bundled_timestamp"

    aput-object v3, v1, v2

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "last_bundled_day"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "last_sampled_complex_event_id"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const-string v3, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const-string v3, "last_sampling_rate"

    const/4 v9, 0x6

    aput-object v3, v1, v9

    const-string v3, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const/4 v10, 0x7

    aput-object v3, v1, v10

    const-string v3, "last_exempt_from_sampling"

    const/16 v11, 0x8

    aput-object v3, v1, v11

    const-string v3, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const/16 v12, 0x9

    aput-object v3, v1, v12

    const-string v3, "current_session_count"

    const/16 v13, 0xa

    aput-object v3, v1, v13

    const-string v3, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    const/16 v14, 0xb

    aput-object v3, v1, v14

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "associated_row_id"

    aput-object v3, v1, v2

    const-string v3, "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;"

    aput-object v3, v1, v4

    const-string v3, "last_upload_timestamp"

    aput-object v3, v1, v5

    const-string v3, "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"

    aput-object v3, v1, v6

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaw;->zza:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "origin"

    aput-object v3, v1, v2

    const-string v3, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    aput-object v3, v1, v4

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:[Ljava/lang/String;

    const/16 v1, 0x5c

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "app_version"

    aput-object v3, v1, v2

    const-string v3, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    aput-object v3, v1, v4

    const-string v3, "app_store"

    aput-object v3, v1, v5

    const-string v3, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    aput-object v3, v1, v6

    const-string v3, "gmp_version"

    aput-object v3, v1, v7

    const-string v3, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    aput-object v3, v1, v8

    const-string v3, "dev_cert_hash"

    aput-object v3, v1, v9

    const-string v3, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    aput-object v3, v1, v10

    const-string v3, "measurement_enabled"

    aput-object v3, v1, v11

    const-string v3, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    aput-object v3, v1, v12

    const-string v3, "last_bundle_start_timestamp"

    aput-object v3, v1, v13

    const-string v3, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    aput-object v3, v1, v14

    const-string v3, "day"

    aput-object v3, v1, v0

    const/16 v0, 0xd

    const-string v3, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0xe

    const-string v3, "daily_public_events_count"

    aput-object v3, v1, v0

    const/16 v0, 0xf

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x10

    const-string v3, "daily_events_count"

    aput-object v3, v1, v0

    const/16 v0, 0x11

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x12

    const-string v3, "daily_conversions_count"

    aput-object v3, v1, v0

    const/16 v0, 0x13

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x14

    const-string v3, "remote_config"

    aput-object v3, v1, v0

    const/16 v0, 0x15

    const-string v3, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    aput-object v3, v1, v0

    const/16 v0, 0x16

    const-string v3, "config_fetched_time"

    aput-object v3, v1, v0

    const/16 v0, 0x17

    const-string v3, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x18

    const-string v3, "failed_config_fetch_time"

    aput-object v3, v1, v0

    const/16 v0, 0x19

    const-string v3, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x1a

    const-string v3, "app_version_int"

    aput-object v3, v1, v0

    const/16 v0, 0x1b

    const-string v3, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x1c

    const-string v3, "firebase_instance_id"

    aput-object v3, v1, v0

    const/16 v0, 0x1d

    const-string v3, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x1e

    const-string v3, "daily_error_events_count"

    aput-object v3, v1, v0

    const/16 v0, 0x1f

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x20

    const-string v3, "daily_realtime_events_count"

    aput-object v3, v1, v0

    const/16 v0, 0x21

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x22

    const-string v3, "health_monitor_sample"

    aput-object v3, v1, v0

    const/16 v0, 0x23

    const-string v3, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x24

    const-string v3, "android_id"

    aput-object v3, v1, v0

    const/16 v0, 0x25

    const-string v3, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x26

    const-string v3, "adid_reporting_enabled"

    aput-object v3, v1, v0

    const/16 v0, 0x27

    const-string v3, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x28

    const-string v3, "ssaid_reporting_enabled"

    aput-object v3, v1, v0

    const/16 v0, 0x29

    const-string v3, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x2a

    const-string v3, "admob_app_id"

    aput-object v3, v1, v0

    const/16 v0, 0x2b

    const-string v3, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x2c

    const-string v3, "linked_admob_app_id"

    aput-object v3, v1, v0

    const/16 v0, 0x2d

    const-string v3, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x2e

    const-string v3, "dynamite_version"

    aput-object v3, v1, v0

    const/16 v0, 0x2f

    const-string v3, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x30

    const-string v3, "safelisted_events"

    aput-object v3, v1, v0

    const/16 v0, 0x31

    const-string v3, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x32

    const-string v3, "ga_app_id"

    aput-object v3, v1, v0

    const/16 v0, 0x33

    const-string v3, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x34

    const-string v3, "config_last_modified_time"

    aput-object v3, v1, v0

    const/16 v0, 0x35

    const-string v3, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x36

    const-string v3, "e_tag"

    aput-object v3, v1, v0

    const/16 v0, 0x37

    const-string v3, "ALTER TABLE apps ADD COLUMN e_tag TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x38

    const-string v3, "session_stitching_token"

    aput-object v3, v1, v0

    const/16 v0, 0x39

    const-string v3, "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x3a

    const-string v3, "sgtm_upload_enabled"

    aput-object v3, v1, v0

    const/16 v0, 0x3b

    const-string v3, "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x3c

    const-string v3, "target_os_version"

    aput-object v3, v1, v0

    const/16 v0, 0x3d

    const-string v3, "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x3e

    const-string v3, "session_stitching_token_hash"

    aput-object v3, v1, v0

    const/16 v0, 0x3f

    const-string v3, "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x40

    const-string v3, "ad_services_version"

    aput-object v3, v1, v0

    const/16 v0, 0x41

    const-string v3, "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x42

    const-string v3, "unmatched_first_open_without_ad_id"

    aput-object v3, v1, v0

    const/16 v0, 0x43

    const-string v3, "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x44

    const-string v3, "npa_metadata_value"

    aput-object v3, v1, v0

    const/16 v0, 0x45

    const-string v3, "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x46

    const-string v3, "attribution_eligibility_status"

    aput-object v3, v1, v0

    const/16 v0, 0x47

    const-string v3, "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x48

    const-string v3, "sgtm_preview_key"

    aput-object v3, v1, v0

    const/16 v0, 0x49

    const-string v3, "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x4a

    const-string v3, "dma_consent_state"

    aput-object v3, v1, v0

    const/16 v0, 0x4b

    const-string v3, "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x4c

    const-string v3, "daily_realtime_dcu_count"

    aput-object v3, v1, v0

    const/16 v0, 0x4d

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x4e

    const-string v3, "bundle_delivery_index"

    aput-object v3, v1, v0

    const/16 v0, 0x4f

    const-string v3, "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x50

    const-string v3, "serialized_npa_metadata"

    aput-object v3, v1, v0

    const/16 v0, 0x51

    const-string v3, "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;"

    aput-object v3, v1, v0

    const/16 v0, 0x52

    const-string v3, "unmatched_pfo"

    aput-object v3, v1, v0

    const/16 v0, 0x53

    const-string v3, "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x54

    const-string v3, "unmatched_uwa"

    aput-object v3, v1, v0

    const/16 v0, 0x55

    const-string v3, "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x56

    const-string v3, "ad_campaign_info"

    aput-object v3, v1, v0

    const/16 v0, 0x57

    const-string v3, "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;"

    aput-object v3, v1, v0

    const/16 v0, 0x58

    const-string v3, "daily_registered_triggers_count"

    aput-object v3, v1, v0

    const/16 v0, 0x59

    const-string v3, "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"

    aput-object v3, v1, v0

    const/16 v0, 0x5a

    const-string v3, "client_upload_eligibility"

    aput-object v3, v1, v0

    const/16 v0, 0x5b

    const-string v3, "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;"

    aput-object v3, v1, v0

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "realtime"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zze:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "has_realtime"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "retry_count"

    aput-object v1, v0, v5

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzf:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "session_scoped"

    aput-object v1, v0, v2

    const-string v3, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    aput-object v3, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzh:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzi:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "previous_install_count"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzj:[Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "consent_source"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "dma_consent_settings"

    aput-object v1, v0, v5

    const-string v1, "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"

    aput-object v1, v0, v6

    const-string v1, "storage_consent_at_bundling"

    aput-object v1, v0, v7

    const-string v1, "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzk:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "idempotent"

    aput-object v1, v0, v2

    const-string v1, "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzl:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzou;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzou;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzn:Lcom/google/android/gms/measurement/internal/zzou;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    .line 6
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzm:Lcom/google/android/gms/measurement/internal/zzav;

    return-void
.end method

.method private final zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 37

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lifetime_count"

    aput-object v4, v2, v3

    const-string v4, "current_bundle_count"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "last_fire_timestamp"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const-string v4, "last_bundled_timestamp"

    const/4 v7, 0x3

    aput-object v4, v2, v7

    const-string v4, "last_bundled_day"

    const/4 v8, 0x4

    aput-object v4, v2, v8

    const-string v4, "last_sampled_complex_event_id"

    const/4 v9, 0x5

    aput-object v4, v2, v9

    const-string v4, "last_sampling_rate"

    const/4 v10, 0x6

    aput-object v4, v2, v10

    const-string v4, "last_exempt_from_sampling"

    const/4 v11, 0x7

    aput-object v4, v2, v11

    const-string v4, "current_session_count"

    const/16 v12, 0x8

    aput-object v4, v2, v12

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v19, 0x0

    .line 6
    :try_start_4b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-array v2, v3, [Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    const-string v23, "app_id=? and name=?"

    new-array v0, v6, [Ljava/lang/String;

    aput-object p2, v0, v3

    aput-object p3, v0, v5

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, p1

    move-object/from16 v24, v0

    .line 8
    invoke-virtual/range {v20 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_6f} :catch_148
    .catchall {:try_start_4b .. :try_end_6f} :catchall_146

    .line 9
    :try_start_6f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_168

    .line 10
    :cond_77
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 11
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 12
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 13
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v20, 0x0

    if-eqz v0, :cond_8e

    move-wide/from16 v6, v20

    goto :goto_92

    :cond_8e
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 14
    :goto_92
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    move-object/from16 v0, v19

    goto :goto_a3

    :cond_9b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 15
    :goto_a3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_ac

    move-object/from16 v4, v19

    goto :goto_b4

    :cond_ac
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 16
    :goto_b4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_bd

    move-object/from16 v8, v19

    goto :goto_c5

    :cond_bd
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 17
    :goto_c5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_db

    .line 18
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v22, 0x1

    cmp-long v9, v9, v22

    if-nez v9, :cond_d6

    move v3, v5

    :cond_d6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_dd

    :cond_db
    move-object/from16 v3, v19

    .line 19
    :goto_dd
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_e7

    :goto_e3
    move-object v5, v2

    move-wide/from16 v9, v20

    goto :goto_ec

    :cond_e7
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20
    :try_end_eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_eb} :catch_13e
    .catchall {:try_start_6f .. :try_end_eb} :catchall_138

    goto :goto_e3

    :goto_ec
    :try_start_ec
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbd;
    :try_end_ee
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ec .. :try_end_ee} :catch_132
    .catchall {:try_start_ec .. :try_end_ee} :catchall_12e

    move-object/from16 v20, v5

    move-wide/from16 v11, v17

    move-object/from16 v18, v3

    move-object/from16 v17, v8

    move-object/from16 v3, p2

    move-object/from16 v28, v4

    move-object/from16 v4, p3

    move-wide/from16 v29, v15

    move-object v15, v0

    move-object/from16 v16, v28

    move-wide/from16 v31, v13

    move-wide v13, v6

    move-wide/from16 v5, v31

    move-wide/from16 v7, v29

    .line 20
    :try_start_108
    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 21
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Got multiple records for event aggregates, expected one. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_124
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_108 .. :try_end_124} :catch_12c
    .catchall {:try_start_108 .. :try_end_124} :catchall_12a

    :cond_124
    if-eqz v20, :cond_129

    .line 30
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_129
    return-object v2

    :catchall_12a
    move-exception v0

    goto :goto_13b

    :catch_12c
    move-exception v0

    goto :goto_143

    :catchall_12e
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_13b

    :catch_132
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    goto :goto_143

    :catchall_138
    move-exception v0

    move-object/from16 v20, v2

    :goto_13b
    move-object/from16 v19, v20

    goto :goto_171

    :catch_13e
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v20, v2

    :goto_143
    move-object/from16 v2, v20

    goto :goto_14d

    :catchall_146
    move-exception v0

    goto :goto_171

    :catch_148
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v2, v19

    .line 13
    :goto_14d
    :try_start_14d
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Error querying events. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v5, v6, v7, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_168
    .catchall {:try_start_14d .. :try_end_168} :catchall_16e

    :goto_168
    if-eqz v2, :cond_16d

    .line 30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_16d
    return-object v19

    :catchall_16e
    move-exception v0

    move-object/from16 v19, v2

    :goto_171
    if-eqz v19, :cond_176

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_176
    throw v0
.end method

.method private final zzaB(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/zzpz;
    .registers 28

    move-object/from16 v0, p6

    move/from16 v1, p8

    .line 1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Upload uri is null or empty. Destination is unknown. Dropping batch. "

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-object v3

    .line 5
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v2

    move-object/from16 v4, p4

    invoke-static {v2, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzht;

    .line 6
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/measurement/internal/zzmf;->zzb(I)Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    if-eq v4, v5, :cond_67

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    if-eq v4, v5, :cond_67

    if-lez v1, :cond_67

    new-instance v5, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzj()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 10
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzat(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 12
    :cond_61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzd()Lcom/google/android/gms/internal/measurement/zzht;

    .line 13
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzht;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzht;

    :cond_67
    new-instance v5, Ljava/util/HashMap;

    .line 14
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_a7

    const-string v6, "\r\n"

    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_77
    if-ge v8, v6, :cond_a7

    aget-object v9, v0, v8

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_82

    goto :goto_a7

    .line 32
    :cond_82
    const-string v10, "="

    const/4 v11, 0x2

    .line 17
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 18
    array-length v12, v10

    if-eq v12, v11, :cond_9c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v6, "Invalid upload header: "

    invoke-virtual {v0, v6, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a7

    .line 19
    :cond_9c
    aget-object v9, v10, v7

    const/4 v11, 0x1

    .line 20
    aget-object v10, v10, v11

    .line 21
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 16
    :cond_a7
    :goto_a7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzpx;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzpx;-><init>()V

    move-wide v6, p2

    .line 24
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzpx;->zzf(J)Lcom/google/android/gms/measurement/internal/zzpx;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzpx;->zzd(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/measurement/internal/zzpx;

    move-object/from16 v2, p5

    .line 26
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzpx;->zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpx;

    .line 27
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzpx;->zzg(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzpx;

    .line 28
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzpx;->zzh(Lcom/google/android/gms/measurement/internal/zzmf;)Lcom/google/android/gms/measurement/internal/zzpx;

    move-wide/from16 v4, p9

    .line 29
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpx;->zzb(J)Lcom/google/android/gms/measurement/internal/zzpx;

    move-wide/from16 v4, p11

    .line 30
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpx;->zza(J)Lcom/google/android/gms/measurement/internal/zzpx;

    move-wide/from16 v4, p13

    .line 31
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpx;->zzc(J)Lcom/google/android/gms/measurement/internal/zzpx;

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpx;->zze(I)Lcom/google/android/gms/measurement/internal/zzpx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpx;->zzj()Lcom/google/android/gms/measurement/internal/zzpz;

    move-result-object p1
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_da} :catch_db

    return-object p1

    :catch_db
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to queued MeasurementBatch from upload_queue. appId"

    .line 35
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final zzaC()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 6
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzR:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "(upload_type = %d AND ABS(creation_timestamp - %d) > %d)"

    .line 9
    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 12
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzI()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(upload_type != %d AND ABS(creation_timestamp - %d) > %d)"

    .line 13
    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzaD(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v0, 0x0

    .line 2
    :try_start_5
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x0

    .line 5
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_24
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    if-eqz v0, :cond_19

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_19
    return-object p1

    :cond_1a
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1f
    const-string p1, ""

    return-object p1

    :catchall_22
    move-exception p1

    goto :goto_35

    :catch_24
    move-exception p2

    :try_start_25
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p3

    const-string v1, "Database error"

    invoke-virtual {p3, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    throw p2
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_22

    :goto_35
    if-eqz v0, :cond_3a

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_3a
    throw p1
.end method

.method private final zzaE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 4
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Error deleting snapshot. appId"

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V
    .registers 9

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Landroid/content/ContentValues;

    .line 4
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 6
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lifetime_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "current_bundle_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzf:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_fire_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundled_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "last_bundled_day"

    .line 11
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzh:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "last_sampled_complex_event_id"

    .line 12
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzi:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "last_sampling_rate"

    .line 13
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zze:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "current_session_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_7a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7a

    const-wide/16 v4, 0x1

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_7b

    :cond_7a
    move-object v2, v3

    :goto_7b
    const-string v4, "last_exempt_from_sampling"

    .line 17
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    :try_start_80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x5

    .line 19
    invoke-virtual {v2, p1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_a2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Failed to insert/update event aggregates (got -1). appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_a2} :catch_a3

    :cond_a2
    return-void

    :catch_a3
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Error storing event aggregates. appId"

    .line 25
    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzaG(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 9

    .line 1
    const-string p1, "app_id"

    const-string p2, "consent_settings"

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p3

    const-string v0, "Value of the primary key is not set."

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_22
    const-string v2, "app_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 7
    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_58

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 8
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_58

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p3

    const-string v0, "Failed to insert/update table (got -1). key"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_58} :catch_59

    :cond_58
    return-void

    :catch_59
    move-exception p3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing into table. key"

    .line 14
    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static final zzaH(Ljava/util/List;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const-string v0, ", "

    .line 2
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, " AND (upload_type IN (%s))"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzaj()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzj:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzak()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzal()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzk:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzam()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzan()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzh:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzao()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzi:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzap()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzf:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzaq()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zze:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzar()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzl:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzas()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:[Ljava/lang/String;

    return-object v0
.end method

.method static final zzau(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    const-string p1, "value"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_12
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 7
    :cond_1c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_26

    .line 8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 7
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzay(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x0

    .line 4
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_24
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    if-eqz v1, :cond_19

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide p1

    .line 6
    :cond_1a
    :try_start_1a
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_22} :catch_24
    .catchall {:try_start_1a .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    goto :goto_35

    :catch_24
    move-exception p2

    .line 5
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    throw p2
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_22

    :goto_35
    if-eqz v1, :cond_3a

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_3a
    throw p1
.end method

.method private final zzaz(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p2, 0x0

    .line 4
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_1c
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    :cond_14
    if-eqz v1, :cond_19

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide p3

    :catchall_1a
    move-exception p1

    goto :goto_2d

    :catch_1c
    move-exception p2

    :try_start_1d
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    throw p2
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_1a

    :goto_2d
    if-eqz v1, :cond_32

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_32
    throw p1
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 5

    const-string p1, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 p3, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/measurement/internal/zzaw;)Lcom/google/android/gms/measurement/internal/zzou;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzn:Lcom/google/android/gms/measurement/internal/zzou;

    return-object p0
.end method


# virtual methods
.method public final zzA()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_b} :catch_20
    .catchall {:try_start_5 .. :try_end_b} :catchall_1e

    .line 3
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_16} :catch_1c
    .catchall {:try_start_b .. :try_end_16} :catchall_38

    if-eqz v0, :cond_1b

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-object v1

    :catch_1c
    move-exception v2

    goto :goto_23

    :catchall_1e
    move-exception v0

    goto :goto_3c

    :catch_20
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_23
    :try_start_23
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_38

    :cond_32
    if-eqz v0, :cond_37

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    return-object v1

    :catchall_38
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3c
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_41
    throw v0
.end method

.method public final zzB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    .line 6
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzC(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzC(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 36

    move-object/from16 v1, p0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "1001"

    .line 4
    :try_start_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "app_id"

    const/4 v12, 0x0

    aput-object v5, v4, v12

    const-string v5, "origin"

    const/4 v13, 0x1

    aput-object v5, v4, v13

    const-string v5, "name"

    const/4 v14, 0x2

    aput-object v5, v4, v14

    const-string v5, "value"

    const/4 v15, 0x3

    aput-object v5, v4, v15

    const-string v5, "active"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const-string v5, "trigger_event_name"

    const/4 v7, 0x5

    aput-object v5, v4, v7

    const-string v5, "trigger_timeout"

    const/4 v8, 0x6

    aput-object v5, v4, v8

    const-string v5, "timed_out_event"

    const/4 v9, 0x7

    aput-object v5, v4, v9

    const-string v5, "creation_timestamp"

    const/16 v11, 0x8

    aput-object v5, v4, v11

    const-string v5, "triggered_event"

    const/16 v11, 0x9

    aput-object v5, v4, v11

    const-string v5, "triggered_timestamp"

    const/16 v11, 0xa

    aput-object v5, v4, v11

    const-string v5, "time_to_live"

    const/16 v11, 0xb

    aput-object v5, v4, v11

    const-string v5, "expired_event"

    const/16 v11, 0xc

    aput-object v5, v4, v11

    move v5, v9

    const-string v9, "rowid"

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move/from16 v22, v7

    const/4 v7, 0x0

    move/from16 v23, v8

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 6
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_75} :catch_14b
    .catchall {:try_start_f .. :try_end_75} :catchall_148

    .line 7
    :try_start_75
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_161

    .line 8
    :goto_7b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 9
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_9c

    .line 30
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v5, "Read more than the max allowed conditional properties, ignoring extra"

    .line 32
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 34
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_161

    :cond_9c
    const/16 v3, 0x8

    .line 10
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 11
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v1, v2, v15}, Lcom/google/android/gms/measurement/internal/zzaw;->zzz(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x4

    .line 14
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b8

    move/from16 v22, v13

    goto :goto_ba

    :cond_b8
    move/from16 v22, v12

    :goto_ba
    const/4 v4, 0x5

    .line 15
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v6, 0x6

    .line 16
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v3

    const/4 v10, 0x7

    .line 18
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbh;

    const/16 v4, 0x8

    const/16 v6, 0xc

    const/16 v27, 0xb

    .line 19
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v4

    const/16 v10, 0x9

    .line 21
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzbh;

    move-object/from16 v19, v7

    const/16 v4, 0xa

    .line 22
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move/from16 v12, v27

    .line 23
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 24
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v4

    const/16 v12, 0xc

    .line 25
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v13, v12}, Lcom/google/android/gms/measurement/internal/zzqa;->zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v30, v4

    check-cast v30, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 26
    new-instance v19, Lcom/google/android/gms/measurement/internal/zzqb;

    move-object/from16 v4, v19

    const/16 v12, 0xa

    const/16 v13, 0x8

    const/16 v31, 0x6

    const/16 v32, 0x5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v4

    move-object/from16 v18, v9

    .line 27
    new-instance v16, Lcom/google/android/gms/measurement/internal/zzai;

    move-object/from16 v24, v3

    move-object/from16 v27, v10

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzqb;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbh;JLcom/google/android/gms/measurement/internal/zzbh;JLcom/google/android/gms/measurement/internal/zzbh;)V

    move-object/from16 v3, v16

    .line 28
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_13b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_13b} :catch_145
    .catchall {:try_start_75 .. :try_end_13b} :catchall_142

    if-nez v3, :cond_13e

    goto :goto_161

    :cond_13e
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_7b

    :catchall_142
    move-exception v0

    move-object v11, v2

    goto :goto_168

    :catch_145
    move-exception v0

    move-object v11, v2

    goto :goto_14d

    :catchall_148
    move-exception v0

    const/4 v11, 0x0

    goto :goto_168

    :catch_14b
    move-exception v0

    const/4 v11, 0x0

    :goto_14d
    :try_start_14d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_160
    .catchall {:try_start_14d .. :try_end_160} :catchall_167

    move-object v2, v11

    :cond_161
    :goto_161
    if-eqz v2, :cond_166

    .line 38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_166
    return-object v0

    :catchall_167
    move-exception v0

    :goto_168
    if-eqz v11, :cond_16d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_16d
    throw v0
.end method

.method public final zzD(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpc;I)Ljava/util/List;
    .registers 28

    move-object/from16 v1, p0

    const-string v0, "app_id=?"

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 8
    :try_start_21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "upload_queue"

    const/16 v2, 0xa

    new-array v7, v2, [Ljava/lang/String;

    const-string v2, "rowId"

    const/4 v3, 0x0

    aput-object v2, v7, v3

    const-string v2, "app_id"

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const-string v2, "measurement_batch"

    const/4 v14, 0x2

    aput-object v2, v7, v14

    const-string v2, "upload_uri"

    const/4 v15, 0x3

    aput-object v2, v7, v15

    const-string v2, "upload_headers"

    const/4 v9, 0x4

    aput-object v2, v7, v9

    const-string v2, "upload_type"

    const/4 v10, 0x5

    aput-object v2, v7, v10

    const-string v2, "retry_count"

    const/4 v11, 0x6

    aput-object v2, v7, v11

    const-string v2, "creation_timestamp"

    const/4 v12, 0x7

    aput-object v2, v7, v12

    const-string v2, "associated_row_id"

    const/16 v13, 0x8

    aput-object v2, v7, v13

    const-string v2, "last_upload_timestamp"

    const/16 v15, 0x9

    aput-object v2, v7, v15

    move-object/from16 v2, p2

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Ljava/util/List;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaH(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaC()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND NOT "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v8, [Ljava/lang/String;

    aput-object p1, v9, v3

    move v2, v12

    const-string v12, "creation_timestamp ASC"

    if-lez p3, :cond_8d

    .line 12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8e

    :cond_8d
    const/4 v4, 0x0

    :goto_8e
    move v8, v10

    const/4 v10, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    move-object v13, v4

    move v15, v8

    move/from16 v4, v19

    move-object v8, v0

    const/4 v0, 0x4

    .line 13
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_9d} :catch_127
    .catchall {:try_start_21 .. :try_end_9d} :catchall_124

    :try_start_9d
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_a2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_112

    .line 16
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 17
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    move-object v11, v6

    const/4 v10, 0x3

    .line 18
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-wide v12, v7

    .line 19
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move-object/from16 v16, v9

    .line 21
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v20, v10

    move-object/from16 v17, v11

    .line 22
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move/from16 v21, v3

    move/from16 v19, v4

    move-wide v3, v12

    const/16 v0, 0x8

    .line 23
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move/from16 v22, v14

    move/from16 v18, v15

    const/16 v0, 0x9

    .line 24
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_e2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_e2} :catch_11c
    .catchall {:try_start_9d .. :try_end_e2} :catchall_116

    move-object/from16 v23, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v23

    move/from16 v23, v21

    move/from16 v21, v20

    move/from16 v20, v18

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 25
    :try_start_f6
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaB(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/zzpz;

    move-result-object v3

    if-eqz v3, :cond_ff

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ff
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f6 .. :try_end_ff} :catch_110
    .catchall {:try_start_f6 .. :try_end_ff} :catchall_10e

    :cond_ff
    move-object v6, v0

    move-object/from16 v5, v16

    move/from16 v2, v17

    move/from16 v4, v19

    move/from16 v15, v20

    move/from16 v14, v22

    move/from16 v3, v23

    const/4 v0, 0x4

    goto :goto_a2

    :catchall_10e
    move-exception v0

    goto :goto_119

    :catch_110
    move-exception v0

    goto :goto_121

    :cond_112
    move-object/from16 v16, v5

    move-object v0, v6

    goto :goto_13f

    :catchall_116
    move-exception v0

    move-object/from16 v16, v5

    :goto_119
    move-object/from16 v4, v16

    goto :goto_146

    :catch_11c
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v16, v5

    :goto_121
    move-object/from16 v4, v16

    goto :goto_12b

    :catchall_124
    move-exception v0

    const/4 v4, 0x0

    goto :goto_146

    :catch_127
    move-exception v0

    move-object/from16 v2, p1

    const/4 v4, 0x0

    .line 31
    :goto_12b
    :try_start_12b
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v5, "Error to querying MeasurementBatch from upload_queue. appId"

    .line 29
    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6
    :try_end_13e
    .catchall {:try_start_12b .. :try_end_13e} :catchall_145

    move-object v5, v4

    :goto_13f
    if-eqz v5, :cond_144

    .line 31
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_144
    return-object v6

    :catchall_145
    move-exception v0

    :goto_146
    if-eqz v4, :cond_14b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_14b
    throw v0
.end method

.method public final zzE(Ljava/lang/String;)Ljava/util/List;
    .registers 19

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "1000"

    const/4 v11, 0x0

    .line 5
    :try_start_13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "name"

    const/4 v12, 0x0

    aput-object v5, v4, v12

    const-string v5, "origin"

    const/4 v13, 0x1

    aput-object v5, v4, v13

    const-string v5, "set_timestamp"

    const/4 v14, 0x2

    aput-object v5, v4, v14

    const-string v5, "value"

    const/4 v15, 0x3

    aput-object v5, v4, v15

    const-string v5, "app_id=?"

    new-array v6, v13, [Ljava/lang/String;

    aput-object p1, v6, v12

    const-string v9, "rowid"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-object v8, v7

    const/4 v7, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    .line 7
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 8
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 9
    :cond_4c
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_58

    const-string v2, ""

    :cond_58
    move-object v5, v2

    .line 11
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 12
    invoke-virtual {v1, v11, v15}, Lcom/google/android/gms/measurement/internal/zzaw;->zzz(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_75

    .line 15
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Read invalid user property value, ignoring it. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7f

    .line 23
    :cond_75
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzqd;

    move-object/from16 v4, p1

    .line 13
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_7f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_83} :catch_88
    .catchall {:try_start_13 .. :try_end_83} :catchall_86

    if-nez v2, :cond_4c

    goto :goto_a0

    :catchall_86
    move-exception v0

    goto :goto_a6

    :catch_88
    move-exception v0

    .line 14
    :try_start_89
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error querying user properties. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 21
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_a0
    .catchall {:try_start_89 .. :try_end_a0} :catchall_86

    :cond_a0
    :goto_a0
    if-eqz v11, :cond_a5

    .line 23
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a5
    return-object v0

    :goto_a6
    if-eqz v11, :cond_ab

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_ab
    throw v0
.end method

.method public final zzF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "1001"

    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    const/4 v13, 0x3

    .line 5
    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, p1

    .line 6
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_id=?"

    .line 7
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_2a} :catch_118
    .catchall {:try_start_14 .. :try_end_2a} :catchall_115

    if-nez v5, :cond_37

    move-object/from16 v15, p2

    .line 9
    :try_start_2e
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, " and origin=?"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_37
    move-object/from16 v15, p2

    .line 11
    :goto_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, " and name glob ?"

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v5, v4

    const-string v4, "user_attributes"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "name"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const-string v8, "set_timestamp"

    const/4 v10, 0x1

    aput-object v8, v6, v10

    const-string v8, "value"

    const/4 v12, 0x2

    aput-object v8, v6, v12

    const-string v8, "origin"

    aput-object v8, v6, v13

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v8, v10

    const-string v10, "rowid"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move/from16 v17, v8

    const/4 v8, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    move/from16 v12, v18

    .line 17
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_9d} :catch_113
    .catchall {:try_start_2e .. :try_end_9d} :catchall_115

    .line 18
    :try_start_9d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_a5

    goto/16 :goto_134

    .line 19
    :cond_a5
    :goto_a5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_c6

    .line 31
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 33
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 35
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_134

    .line 21
    :cond_c6
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    .line 22
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v4, 0x2

    .line 23
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzz(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    const/4 v5, 0x3

    .line 24
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_d9} :catch_110
    .catchall {:try_start_9d .. :try_end_d9} :catchall_10d

    if-nez v10, :cond_f1

    .line 27
    :try_start_db
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v8, "(2)Read invalid user property value, ignoring it"

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 29
    invoke-virtual {v7, v8, v9, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v19, v4

    move/from16 v16, v5

    goto :goto_fe

    :cond_f1
    move/from16 v19, v4

    .line 30
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzqd;

    move/from16 v16, v5

    move-object v5, v14

    .line 25
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 26
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_fe
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_db .. :try_end_102} :catch_109
    .catchall {:try_start_db .. :try_end_102} :catchall_10d

    if-nez v4, :cond_105

    goto :goto_134

    :cond_105
    move-object/from16 v14, p1

    move-object v15, v6

    goto :goto_a5

    :catch_109
    move-exception v0

    move-object v12, v3

    move-object v15, v6

    goto :goto_11c

    :catchall_10d
    move-exception v0

    move-object v12, v3

    goto :goto_13b

    :catch_110
    move-exception v0

    move-object v12, v3

    goto :goto_11c

    :catch_113
    move-exception v0

    goto :goto_11b

    :catchall_115
    move-exception v0

    const/4 v12, 0x0

    goto :goto_13b

    :catch_118
    move-exception v0

    move-object/from16 v15, p2

    :goto_11b
    const/4 v12, 0x0

    .line 26
    :goto_11c
    :try_start_11c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "(2)Error querying user properties"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 38
    invoke-virtual {v2, v3, v4, v15, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_133
    .catchall {:try_start_11c .. :try_end_133} :catchall_13a

    move-object v3, v12

    :goto_134
    if-eqz v3, :cond_139

    .line 40
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_139
    return-object v2

    :catchall_13a
    move-exception v0

    :goto_13b
    if-eqz v12, :cond_140

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_140
    throw v0
.end method

.method public final zzG(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 1
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzbe:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v13, 0x0

    .line 6
    invoke-virtual {v0, v13, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzau;

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;J)V

    goto :goto_2d

    .line 86
    :cond_28
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzau;

    .line 7
    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V

    :goto_2d
    move-object v14, v0

    .line 9
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzau;->zza()Ljava/util/List;

    move-result-object v0

    .line 10
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2cc

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzat;

    .line 12
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_135

    .line 13
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzb:J

    .line 14
    :try_start_53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    const-string v17, "raw_events_metadata"

    new-array v0, v3, [Ljava/lang/String;

    const-string v8, "metadata"

    aput-object v8, v0, v4

    const-string v19, "app_id = ? and metadata_fingerprint = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v4

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v23, "rowid"

    const-string v24, "2"

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v8

    .line 16
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_7c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_7c} :catch_f0
    .catchall {:try_start_53 .. :try_end_7c} :catchall_ee

    .line 17
    :try_start_7c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 18
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v7, "Raw event metadata record is missing. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 20
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_93} :catch_eb
    .catchall {:try_start_7c .. :try_end_93} :catchall_12d

    if-eqz v6, :cond_98

    .line 21
    :goto_95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_98
    move-object v7, v13

    goto/16 :goto_109

    .line 22
    :cond_9b
    :try_start_9b
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9b .. :try_end_9f} :catch_eb
    .catchall {:try_start_9b .. :try_end_9f} :catchall_12d

    .line 23
    :try_start_9f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhx;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhx;
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b0} :catch_d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_b0} :catch_eb
    .catchall {:try_start_9f .. :try_end_b0} :catchall_12d

    .line 27
    :try_start_b0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v8, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 30
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_c9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b0 .. :try_end_cc} :catch_d2
    .catchall {:try_start_b0 .. :try_end_cc} :catchall_12d

    if-eqz v6, :cond_109

    .line 21
    :goto_ce
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_109

    :catch_d2
    move-exception v0

    goto :goto_f3

    :catch_d4
    move-exception v0

    .line 87
    :try_start_d5
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 26
    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d5 .. :try_end_e8} :catch_eb
    .catchall {:try_start_d5 .. :try_end_e8} :catchall_12d

    if-eqz v6, :cond_98

    goto :goto_95

    :catch_eb
    move-exception v0

    move-object v7, v13

    goto :goto_f3

    :catchall_ee
    move-exception v0

    goto :goto_12f

    :catch_f0
    move-exception v0

    move-object v6, v13

    move-object v7, v6

    .line 7
    :goto_f3
    :try_start_f3
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 33
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v9, "Data loss. Error selecting raw event. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 34
    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_106
    .catchall {:try_start_f3 .. :try_end_106} :catchall_12d

    if-eqz v6, :cond_109

    goto :goto_ce

    :cond_109
    :goto_109
    if-eqz v7, :cond_135

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzY()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_113
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_135

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzio;

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    goto/16 :goto_3c

    :catchall_12d
    move-exception v0

    move-object v13, v6

    :goto_12f
    if-eqz v13, :cond_134

    .line 21
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_134
    throw v0

    :cond_135
    move-object/from16 v7, p3

    .line 21
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v6

    .line 38
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzat;->zzd:Lcom/google/android/gms/internal/measurement/zzhm;

    new-instance v9, Landroid/os/Bundle;

    .line 39
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ce

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v16

    if-eqz v16, :cond_16e

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide v4

    invoke-virtual {v9, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_169
    move-object/from16 v5, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_14c

    .line 43
    :cond_16e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzv()Z

    move-result v3

    if-eqz v3, :cond_180

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb()F

    move-result v4

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_169

    .line 45
    :cond_180
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v3

    if-eqz v3, :cond_192

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v4

    invoke-virtual {v9, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_169

    .line 47
    :cond_192
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_169

    .line 49
    :cond_1a4
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1be

    .line 52
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzC(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v4

    .line 53
    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_169

    :cond_1be
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Unexpected parameter type for parameter"

    invoke-virtual {v3, v4, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_169

    .line 54
    :cond_1ce
    const-string v3, "_o"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzhf;

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v17

    if-nez v4, :cond_1e1

    const-string v4, ""

    :cond_1e1
    move-object/from16 v18, v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v20

    move-object/from16 v19, v9

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v3, v16

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Landroid/os/Bundle;

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    move-object/from16 v6, p4

    .line 58
    invoke-virtual {v5, v11, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzO(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzaw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Ljava/lang/String;

    move-object v9, v2

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbc;

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v6

    move-object v10, v8

    .line 60
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v7

    .line 61
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhm;->zzc()J

    move-result-wide v16

    move-object v13, v9

    move-object/from16 v18, v12

    move-wide/from16 v9, v16

    const/4 v12, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 62
    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzat;->zza:J

    iget-wide v5, v13, Lcom/google/android/gms/measurement/internal/zzat;->zzb:J

    iget-boolean v7, v13, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Z

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 65
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 66
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzm(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v0

    new-instance v9, Landroid/content/ContentValues;

    .line 69
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    .line 70
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    const-string v11, "name"

    .line 71
    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    const-string v13, "timestamp"

    .line 72
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "metadata_fingerprint"

    invoke-virtual {v9, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 74
    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "realtime"

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    :try_start_273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "raw_events"

    const-string v6, "rowid = ?"

    new-array v7, v12, [Ljava/lang/String;

    .line 77
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v22

    .line 78
    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2ba

    .line 79
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v5, "Failed to update raw event. appId, updatedRows"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 82
    invoke-virtual {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_273 .. :try_end_2a3} :catch_2a4

    goto :goto_2ba

    :catch_2a4
    move-exception v0

    .line 21
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    const-string v4, "Error updating raw event. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2ba
    :goto_2ba
    move-object/from16 v5, p1

    move-object/from16 v12, v18

    const/4 v13, 0x0

    goto/16 :goto_3c

    :cond_2c1
    move-object/from16 v18, v12

    .line 86
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzau;->zza()Ljava/util/List;

    move-result-object v0

    move-object/from16 v5, p1

    const/4 v13, 0x0

    goto/16 :goto_32

    :cond_2cc
    return-void
.end method

.method public final zzH()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final zzI(Ljava/lang/String;)V
    .registers 14

    .line 1
    const-string v0, "events_snapshot"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/String;

    .line 4
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    const-string v6, "app_id=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 7
    :cond_30
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    const-string v3, "events"

    .line 8
    invoke-direct {p0, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    .line 10
    :cond_41
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_45} :catch_4b
    .catchall {:try_start_c .. :try_end_45} :catchall_48

    if-nez v1, :cond_30

    goto :goto_5f

    :catchall_48
    move-exception v0

    move-object p1, v0

    goto :goto_65

    :catch_4b
    move-exception v0

    .line 13
    :try_start_4c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Error creating snapshot. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_48

    :cond_5f
    :goto_5f
    if-eqz v2, :cond_64

    .line 13
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_64
    return-void

    :goto_65
    if-eqz v2, :cond_6a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_6a
    throw p1
.end method

.method public final zzJ(Ljava/util/List;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rowid in ("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    if-eqz v1, :cond_1e

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2e
    const-string v1, ")"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "raw_events"

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_63

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Deleted fewer rows from raw events table than expected"

    .line 16
    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    return-void
.end method

.method public final zzK(Ljava/lang/Long;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3e

    .line 7
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    :try_start_27
    const-string p1, "upload_queue"

    const-string v4, "rowid=?"

    .line 9
    invoke-virtual {v1, p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_3e

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Deleted fewer rows from upload_queue than expected"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Failed to delete a MeasurementBatch in a upload_queue table"

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    throw p1
.end method

.method public final zzL()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method final zzM(Ljava/util/List;)V
    .registers 7

    const-string v0, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(I)I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    const-string v1, ","

    .line 6
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 11
    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_77} :catch_78

    return-void

    :catch_78
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzN(Ljava/lang/Long;)V
    .registers 10

    const-string v0, " SET retry_count = retry_count + 1, last_upload_timestamp = "

    const-string v1, "UPDATE upload_queue"

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_a2

    .line 7
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v3

    if-eqz v3, :cond_a2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT COUNT(1) FROM upload_queue WHERE rowid = "

    .line 8
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_4e

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 12
    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 14
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    .line 17
    :cond_73
    const-string v0, " SET retry_count = retry_count + 1 "

    .line 16
    :goto_75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE rowid = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " AND retry_count < 2147483647"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_91} :catch_92

    return-void

    :catch_92
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method final zzO()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_89

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzw()Lcom/google/android/gms/measurement/internal/zzoa;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzoa;->zza:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 9
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzJ()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-lez v1, :cond_89

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzw()Lcom/google/android/gms/measurement/internal/zzoa;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoa;->zza:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 18
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "queue"

    const-string v4, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 19
    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_89

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_89
    :goto_89
    return-void
.end method

.method public final zzP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 5
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error deleting user property. appId"

    .line 11
    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzQ(Ljava/lang/String;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "events_snapshot"

    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const-string v6, "lifetime_count"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    const-string v4, "events"

    const-string v6, "_f"

    invoke-direct {v1, v4, v2, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v8

    .line 3
    const-string v9, "_v"

    invoke-direct {v1, v4, v2, v9}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v10

    .line 4
    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 5
    :try_start_2e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "events_snapshot"

    new-array v14, v5, [Ljava/lang/String;

    .line 6
    invoke-interface {v0, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Ljava/lang/String;

    const-string v15, "app_id=?"

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v0

    .line 7
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 8
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_53} :catch_9c
    .catchall {:try_start_2e .. :try_end_53} :catchall_99

    if-nez v0, :cond_62

    if-eqz v11, :cond_5a

    .line 18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5a
    if-eqz v8, :cond_5e

    goto/16 :goto_bb

    :cond_5e
    if-eqz v10, :cond_c6

    goto/16 :goto_c3

    :cond_62
    move v12, v5

    move v13, v12

    .line 9
    :cond_64
    :try_start_64
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-ltz v14, :cond_81

    .line 11
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7a

    move v12, v7

    goto :goto_81

    .line 12
    :cond_7a
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    move v13, v7

    :cond_81
    :goto_81
    if-eqz v0, :cond_8c

    .line 13
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 14
    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    .line 15
    :cond_8c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_90} :catch_96
    .catchall {:try_start_64 .. :try_end_90} :catchall_93

    if-nez v0, :cond_64

    goto :goto_b2

    :catchall_93
    move-exception v0

    move v5, v12

    goto :goto_cb

    :catch_96
    move-exception v0

    move v5, v12

    goto :goto_9e

    :catchall_99
    move-exception v0

    move v13, v5

    goto :goto_cb

    :catch_9c
    move-exception v0

    move v13, v5

    .line 12
    :goto_9e
    :try_start_9e
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "Error querying snapshot. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b1
    .catchall {:try_start_9e .. :try_end_b1} :catchall_ca

    move v12, v5

    :goto_b2
    if-eqz v11, :cond_b7

    .line 18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_b7
    if-nez v12, :cond_bf

    if-eqz v8, :cond_bf

    .line 20
    :goto_bb
    invoke-direct {v1, v4, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    goto :goto_c6

    :cond_bf
    if-nez v13, :cond_c6

    if-eqz v10, :cond_c6

    .line 19
    :goto_c3
    invoke-direct {v1, v4, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    .line 21
    :cond_c6
    :goto_c6
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_ca
    move-exception v0

    :goto_cb
    if-eqz v11, :cond_d0

    .line 18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d0
    if-nez v5, :cond_d9

    if-nez v8, :cond_d5

    goto :goto_d9

    .line 20
    :cond_d5
    invoke-direct {v1, v4, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    goto :goto_e0

    :cond_d9
    :goto_d9
    if-nez v13, :cond_e0

    if-eqz v10, :cond_e0

    .line 19
    invoke-direct {v1, v4, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    .line 21
    :cond_e0
    :goto_e0
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaE(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    throw v0
.end method

.method final zzR(Ljava/lang/String;Ljava/util/List;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    const-string v4, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v5, "event_filters"

    const-string v6, "property_filters"

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 2
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d7

    .line 3
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfg;

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zza()I

    move-result v11

    if-eqz v11, :cond_99

    const/4 v11, 0x0

    .line 5
    :goto_2b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zza()I

    move-result v12

    if-ge v11, v12, :cond_99

    .line 6
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzfg;->zze(I)Lcom/google/android/gms/internal/measurement/zzfj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfi;

    .line 7
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzlz;->zzaX()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfi;

    .line 8
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zze()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzjy;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_50

    .line 9
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/zzfi;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v14, 0x1

    goto :goto_51

    :cond_50
    const/4 v14, 0x0

    :goto_51
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 10
    :goto_54
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zza()I

    move-result v7

    if-ge v15, v7, :cond_88

    .line 11
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfl;->zze()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v7

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjz;->zza:[Ljava/lang/String;

    move-object/from16 v19, v12

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:[Ljava/lang/String;

    .line 13
    invoke-static {v10, v7, v12}, Lcom/google/android/gms/measurement/internal/zzmg;->zzb(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_83

    .line 14
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfk;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/measurement/zzfk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfl;

    .line 15
    invoke-virtual {v13, v15, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzc(ILcom/google/android/gms/internal/measurement/zzfl;)Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v14, 0x1

    :cond_83
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v19

    goto :goto_54

    :cond_88
    if-eqz v14, :cond_96

    .line 16
    invoke-virtual {v9, v11, v13}, Lcom/google/android/gms/internal/measurement/zzfg;->zzc(ILcom/google/android/gms/internal/measurement/zzfi;)Lcom/google/android/gms/internal/measurement/zzfg;

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-interface {v3, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_96
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    :cond_99
    const/16 v16, 0x0

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zzb()I

    move-result v7

    if-eqz v7, :cond_d3

    move/from16 v7, v16

    .line 19
    :goto_a3
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zzb()I

    move-result v10

    if-ge v7, v10, :cond_d3

    .line 20
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzf(I)Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v10

    .line 21
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zze()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzka;->zza:[Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzka;->zzb:[Ljava/lang/String;

    .line 22
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzmg;->zzb(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d0

    .line 23
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfq;

    .line 24
    invoke-virtual {v9, v7, v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd(ILcom/google/android/gms/internal/measurement/zzfq;)Lcom/google/android/gms/internal/measurement/zzfg;

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-interface {v3, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    :cond_d3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    :cond_d7
    const/16 v16, 0x0

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 31
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 32
    :try_start_ec
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    aput-object v2, v10, v16

    .line 36
    invoke-virtual {v8, v6, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v10, v9, [Ljava/lang/String;

    aput-object v2, v10, v16

    .line 37
    invoke-virtual {v8, v5, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzk()Z

    move-result v11

    if-nez v11, :cond_13e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Audience with no ID. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10c

    .line 46
    :cond_13e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zza()I

    move-result v11

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzg()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_14a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_174

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 48
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v13

    if-nez v13, :cond_14a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 52
    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10c

    .line 53
    :cond_174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzh()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_17c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 54
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v13

    if-nez v13, :cond_17c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 57
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 58
    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_10c

    .line 59
    :cond_1a7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzg()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1af
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_1b3
    .catchall {:try_start_ec .. :try_end_1b3} :catchall_48e

    const-wide/16 v18, -0x1

    const-string v15, "data"

    const-string v9, "session_scoped"

    const-string v10, "filter_id"

    const-string v14, "audience_id"

    move-object/from16 v21, v0

    const-string v0, "app_id"

    if-eqz v13, :cond_294

    :try_start_1c3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzg()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_20e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 109
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 110
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v14

    if-eqz v14, :cond_202

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_203

    :cond_202
    const/4 v13, 0x0

    :goto_203
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 111
    invoke-virtual {v0, v9, v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v22, v7

    goto/16 :goto_375

    .line 65
    :cond_20e
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v3
    :try_end_212
    .catchall {:try_start_1c3 .. :try_end_212} :catchall_48e

    move-object/from16 v22, v7

    :try_start_214
    new-instance v7, Landroid/content/ContentValues;

    .line 66
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v0

    if-eqz v0, :cond_232

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_233

    :cond_232
    const/4 v0, 0x0

    :goto_233
    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "event_name"

    .line 70
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzq()Z

    move-result v0

    if-eqz v0, :cond_24e

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfj;->zzn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_24f

    :cond_24e
    const/4 v0, 0x0

    .line 72
    :goto_24f
    invoke-virtual {v7, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    invoke-virtual {v7, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_255
    .catchall {:try_start_214 .. :try_end_255} :catchall_48c

    .line 74
    :try_start_255
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x5

    const/4 v9, 0x0

    .line 75
    invoke-virtual {v0, v5, v9, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v13

    cmp-long v0, v13, v18

    if-nez v0, :cond_276

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Failed to insert event filter (got -1). appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 78
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_276
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_255 .. :try_end_276} :catch_27e
    .catchall {:try_start_255 .. :try_end_276} :catchall_48c

    :cond_276
    move-object/from16 v3, p2

    move-object/from16 v0, v21

    move-object/from16 v7, v22

    goto/16 :goto_1af

    :catch_27e
    move-exception v0

    .line 148
    :try_start_27f
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v7, "Error storing event filter. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 114
    invoke-virtual {v3, v7, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_375

    :cond_294
    move-object/from16 v22, v7

    .line 79
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzfh;->zzh()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 82
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2f0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 98
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 99
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v12

    if-eqz v12, :cond_2e5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v20, v7

    goto :goto_2e7

    :cond_2e5
    const/16 v20, 0x0

    :goto_2e7
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v0, v3, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_375

    .line 85
    :cond_2f0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    .line 86
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 87
    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v0

    .line 88
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v0

    if-eqz v0, :cond_314

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_315

    :cond_314
    const/4 v0, 0x0

    :goto_315
    invoke-virtual {v13, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "property_name"

    move-object/from16 v23, v3

    .line 90
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzk()Z

    move-result v0

    if-eqz v0, :cond_332

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_333

    :cond_332
    const/4 v0, 0x0

    .line 92
    :goto_333
    invoke-virtual {v13, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    invoke-virtual {v13, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_339
    .catchall {:try_start_27f .. :try_end_339} :catchall_48c

    .line 94
    :try_start_339
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v7, 0x5

    .line 95
    invoke-virtual {v0, v6, v3, v13, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v0, v12, v18

    if-nez v0, :cond_35b

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Failed to insert property filter (got -1). appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 103
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_35a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_339 .. :try_end_35a} :catch_361
    .catchall {:try_start_339 .. :try_end_35a} :catchall_48c

    goto :goto_375

    :cond_35b
    move-object/from16 v0, v21

    move-object/from16 v3, v23

    goto/16 :goto_29e

    :catch_361
    move-exception v0

    .line 114
    :try_start_362
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 104
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v7, "Error storing property filter. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 106
    invoke-virtual {v3, v7, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    :goto_375
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 117
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    aput-object v2, v7, v16

    .line 119
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    aput-object v9, v7, v17

    .line 120
    invoke-virtual {v0, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v16

    .line 121
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v17

    .line 122
    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_39f
    move-object/from16 v3, p2

    move-object/from16 v7, v22

    goto/16 :goto_10c

    :cond_3a5
    move-object/from16 v22, v7

    const/4 v3, 0x0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfh;

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfh;->zzk()Z

    move-result v6

    if-eqz v6, :cond_3cc

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfh;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3cd

    :cond_3cc
    move-object v9, v3

    :goto_3cd
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b1

    .line 126
    :cond_3d1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_3de
    .catchall {:try_start_362 .. :try_end_3de} :catchall_48c

    :try_start_3de
    const-string v4, "select count(1) from audience_filter_values where app_id=?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    aput-object v2, v5, v16

    .line 130
    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_3e9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3de .. :try_end_3e9} :catch_471
    .catchall {:try_start_3de .. :try_end_3e9} :catchall_48c

    :try_start_3e9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 134
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 135
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzT:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v6

    const/16 v7, 0x7d0

    .line 136
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v7, v16

    .line 137
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v7, v6

    cmp-long v4, v4, v7

    if-gtz v4, :cond_408

    goto/16 :goto_485

    .line 147
    :cond_408
    new-instance v4, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 139
    :goto_40e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_42a

    .line 140
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_485

    .line 141
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_40e

    :cond_42a
    const-string v0, ","

    .line 142
    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "audience_filter_values"

    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v2, v5, v16

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x1

    aput-object v2, v5, v17

    .line 145
    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_485

    :catch_471
    move-exception v0

    .line 106
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Database error querying filters. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 133
    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    :cond_485
    :goto_485
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_488
    .catchall {:try_start_3e9 .. :try_end_488} :catchall_48c

    .line 147
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_48c
    move-exception v0

    goto :goto_491

    :catchall_48e
    move-exception v0

    move-object/from16 v22, v7

    :goto_491
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    throw v0
.end method

.method public final zzS()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V
    .registers 12

    .line 1
    const-string p3, "apps"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_instance_id"

    const/4 v3, 0x0

    if-eqz p2, :cond_28

    .line 8
    move-object p2, v3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 65
    :cond_28
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p2

    .line 10
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object p2

    const-string v2, "gmp_app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v2

    .line 14
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzJ()Ljava/lang/String;

    move-result-object v2

    const-string v4, "resettable_device_id_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_index"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_start_timestamp"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_end_timestamp"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzE()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_store"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "gmp_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "dev_cert_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaJ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "measurement_enabled"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzm()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "day"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzk()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_public_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzj()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_conversions_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzg()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "config_fetched_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "failed_config_fetch_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "app_version_int"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "firebase_instance_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_error_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_realtime_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzI()Ljava/lang/String;

    move-result-object v2

    const-string v4, "health_monitor_sample"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id"

    const-wide/16 v4, 0x0

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaI()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "adid_reporting_enabled"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzA()Ljava/lang/String;

    move-result-object v2

    const-string v6, "admob_app_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "dynamite_version"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 40
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p2

    if-eqz p2, :cond_187

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzL()Ljava/lang/String;

    move-result-object p2

    const-string v2, "session_stitching_token"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_187
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "sgtm_upload_enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "target_os_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "session_stitching_token_hash"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 45
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 47
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "ad_services_version"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "attribution_eligibility_status"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    :cond_1d9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaM()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "unmatched_first_open_without_ad_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "npa_metadata_value"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "bundle_delivery_index"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v2

    const-string v6, "sgtm_preview_key"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "dma_consent_state"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "daily_realtime_dcu_count"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzK()Ljava/lang/String;

    move-result-object v2

    const-string v6, "serialized_npa_metadata"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 58
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_241

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "client_upload_eligibility"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    :cond_241
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzN()Ljava/util/List;

    move-result-object v2

    const-string v6, "safelisted_events"

    if-eqz v2, :cond_266

    .line 61
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_25d

    .line 62
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v7, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v2, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_266

    .line 79
    :cond_25d
    const-string v7, ","

    .line 64
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_266
    :goto_266
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zzb()Z

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzaJ:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 68
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_281

    .line 69
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_281

    .line 70
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_281
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/Long;

    move-result-object v2

    const-string v6, "unmatched_pfo"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/Long;

    move-result-object v2

    const-string v6, "unmatched_uwa"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaN()[B

    move-result-object p1

    const-string v2, "ad_campaign_info"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 74
    :try_start_29c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "app_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 75
    invoke-virtual {p1, p3, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, v4

    if-nez v2, :cond_2cd

    const/4 v2, 0x5

    .line 76
    invoke-virtual {p1, p3, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2cd

    .line 77
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Failed to insert/update app (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 79
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29c .. :try_end_2cd} :catch_2ce

    :cond_2cd
    return-void

    :catch_2ce
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Error storing app. appId"

    invoke-virtual {p2, v0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzU(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    if-ne v0, v1, :cond_19

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzX(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V

    :cond_19
    new-instance v0, Landroid/content/ContentValues;

    .line 8
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zzj()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dma_consent_settings"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consent_settings"

    .line 11
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaG(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final zzV(Lcom/google/android/gms/measurement/internal/zzbd;)V
    .registers 3

    .line 1
    const-string v0, "events"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaF(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbd;)V

    return-void
.end method

.method public final zzW(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzX(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V

    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "storage_consent_at_bundling"

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consent_settings"

    .line 9
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaG(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final zzX(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Landroid/content/ContentValues;

    .line 5
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consent_state"

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "consent_source"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "consent_settings"

    .line 9
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaG(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final zzY(Ljava/lang/String;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 5
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_63

    new-array v0, v1, [Lcom/google/android/gms/measurement/internal/zzmf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    aput-object v5, v0, v2

    new-instance v5, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaH(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaC()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND NOT "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v2

    .line 10
    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-eqz p1, :cond_62

    return v1

    :cond_62
    return v2

    .line 11
    :cond_63
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaC()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v2

    const-string p1, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7a

    return v1

    :cond_7a
    return v2
.end method

.method public final zzZ(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p2, "select count(1) from raw_events where app_id = ? and name = ?"

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_16

    return p1

    :cond_16
    return v1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v0, 0x0

    .line 5
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_21} :catch_22

    return p1

    :catch_22
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Error deleting conditional property"

    .line 11
    invoke-virtual {v3, v2, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzaa()Z
    .registers 5

    .line 1
    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzab()Z
    .registers 5

    .line 1
    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzac()Z
    .registers 5

    .line 1
    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzad(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzov;)Z
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzau:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    iget-wide v7, p2, Lcom/google/android/gms/measurement/internal/zzov;->zzb:J

    cmp-long v3, v7, v5

    if-ltz v3, :cond_3c

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzau:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v7, v5

    if-lez v3, :cond_55

    .line 11
    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "Storing trigger URI outside of the max retention time span. appId, now, timestamp"

    .line 15
    invoke-virtual {v3, v6, v5, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    :cond_55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Saving trigger URI"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzov;->zza:Ljava/lang/String;

    const-string v3, "trigger_uri"

    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p2, Lcom/google/android/gms/measurement/internal/zzov;->zzc:I

    const-string v2, "source"

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "timestamp_millis"

    .line 22
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 23
    :try_start_88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "trigger_uris"

    .line 24
    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_aa

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Failed to insert trigger URI (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_a9} :catch_ac

    return p2

    :cond_aa
    const/4 p1, 0x1

    return p1

    :catch_ac
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing trigger URI. appId"

    .line 30
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method protected final zzae()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-string v0, "google_app_measurement.db"

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final zzaf(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzhm;)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object p5

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v3, p5

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving complex main event, appId, data size"

    .line 12
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    .line 13
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_id"

    .line 15
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "children_to_process"

    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    .line 17
    invoke-virtual {v1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    .line 18
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "main_event_params"

    const/4 p5, 0x0

    const/4 v2, 0x5

    .line 19
    invoke-virtual {p3, p4, p5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    const-wide/16 v1, -0x1

    cmp-long p3, p3, v1

    if-nez p3, :cond_71

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p3

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p3

    const-string p4, "Failed to insert complex main event (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    .line 22
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_70} :catch_73

    return p2

    :cond_71
    const/4 p1, 0x1

    return p1

    :catch_73
    move-exception p3

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p4

    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p4

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "Error storing complex main event. appId"

    .line 25
    invoke-virtual {p4, p5, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method final zzag(Ljava/lang/String;J)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbe:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3a98

    add-long/2addr v3, p2

    cmp-long v0, v0, v3

    if-gtz v0, :cond_20

    goto :goto_21

    :cond_20
    return v2

    :cond_21
    :goto_21
    :try_start_21
    const-string v0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v2

    .line 6
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-wide/16 v6, 0x0

    .line 7
    invoke-direct {p0, v0, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v6

    if-lez v0, :cond_3a

    return v2

    :cond_3a
    const-string v0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 8
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 9
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_4a} :catch_50

    cmp-long p1, p1, v6

    if-lez p1, :cond_4f

    return v5

    :cond_4f
    return v2

    :catch_50
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "Error checking backfill conditions"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public final zzah(Lcom/google/android/gms/measurement/internal/zzai;)Z
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_31

    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v4, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 6
    invoke-direct {p0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_30

    goto :goto_31

    :cond_30
    return v3

    :cond_31
    :goto_31
    new-instance v1, Landroid/content/ContentValues;

    .line 8
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 9
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    const-string v4, "origin"

    .line 10
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "value"

    .line 13
    invoke-static {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzau(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    .line 14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "active"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzf:Ljava/lang/String;

    const-string v4, "trigger_event_name"

    .line 15
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzh:J

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "trigger_timeout"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzg:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzay(Landroid/os/Parcelable;)[B

    move-result-object v4

    const-string v5, "timed_out_event"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "creation_timestamp"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 21
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzay(Landroid/os/Parcelable;)[B

    move-result-object v4

    const-string v5, "triggered_event"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 22
    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "triggered_timestamp"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzj:J

    const-string v6, "time_to_live"

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    .line 25
    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzay(Landroid/os/Parcelable;)[B

    move-result-object p1

    const-string v4, "expired_event"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 26
    :try_start_c9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v4, "conditional_properties"

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 27
    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-nez p1, :cond_101

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v1, "Failed to insert/update conditional user property (got -1)"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 30
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c9 .. :try_end_ec} :catch_ed

    goto :goto_101

    :catch_ed
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Error storing conditional user property"

    .line 33
    invoke-virtual {v1, v3, v0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_101
    :goto_101
    return v2
.end method

.method public final zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z
    .registers 12

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_5f

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaq(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v5, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 6
    invoke-direct {p0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 8
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzU:Lcom/google/android/gms/measurement/internal/zzgg;

    const/16 v8, 0x19

    const/16 v9, 0x64

    invoke-virtual {v2, v0, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzi(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;II)I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_3b

    goto :goto_5f

    :cond_3b
    return v4

    .line 22
    :cond_3c
    const-string v2, "_npa"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzb:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v5, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 10
    invoke-direct {p0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzay(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-wide/16 v7, 0x19

    cmp-long v2, v5, v7

    if-ltz v2, :cond_5f

    return v4

    .line 8
    :cond_5f
    :goto_5f
    new-instance v2, Landroid/content/ContentValues;

    .line 12
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    .line 13
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzb:Ljava/lang/String;

    const-string v5, "origin"

    .line 14
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 15
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzd:J

    const-string v1, "set_timestamp"

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    const-string v4, "value"

    .line 17
    invoke-static {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzau(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :try_start_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "user_attributes"

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 19
    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_c3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to insert/update user property (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87 .. :try_end_ac} :catch_ad

    goto :goto_c3

    :catch_ad
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zza:Ljava/lang/String;

    const-string v2, "Error storing user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c3
    :goto_c3
    return v3
.end method

.method public final zzat(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzpr;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    const-string v0, "select app_id, metadata_fingerprint from raw_events where "

    const-string v3, "select metadata_fingerprint from raw_events where app_id = ?"

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v4, 0x0

    .line 4
    :try_start_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_1a} :catch_1e5
    .catchall {:try_start_12 .. :try_end_1a} :catchall_6e

    const-string v7, ""

    const-wide/16 v14, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_71

    cmp-long v3, p4, v14

    if-eqz v3, :cond_36

    :try_start_27
    new-array v6, v8, [Ljava/lang/String;

    .line 6
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    goto :goto_3e

    .line 50
    :cond_36
    new-array v6, v9, [Ljava/lang/String;

    .line 7
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    :goto_3e
    if-eqz v3, :cond_42

    .line 6
    const-string v7, "rowid <= ? and "

    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_1fb

    .line 11
    :cond_5f
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_63} :catch_1e5
    .catchall {:try_start_27 .. :try_end_63} :catchall_6e

    .line 12
    :try_start_63
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_6a} :catch_6b
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6e

    goto :goto_ae

    :catch_6b
    move-exception v0

    goto/16 :goto_1e8

    :catchall_6e
    move-exception v0

    goto/16 :goto_201

    :cond_71
    cmp-long v0, p4, v14

    if-eqz v0, :cond_80

    .line 7
    :try_start_75
    new-array v6, v8, [Ljava/lang/String;

    aput-object p1, v6, v10

    .line 14
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    goto :goto_84

    .line 19
    :cond_80
    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v10

    :goto_84
    if-eqz v0, :cond_88

    .line 14
    const-string v7, " and rowid <= ?"

    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by rowid limit 1;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 17
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a5

    goto/16 :goto_1fb

    .line 18
    :cond_a5
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_ac} :catch_1e5
    .catchall {:try_start_75 .. :try_end_ac} :catchall_6e

    move-object/from16 v3, p1

    .line 13
    :goto_ae
    :try_start_ae
    const-string v6, "raw_events_metadata"

    new-array v7, v9, [Ljava/lang/String;

    const-string v11, "metadata"

    aput-object v11, v7, v10

    const-string v11, "app_id = ? and metadata_fingerprint = ?"

    move v12, v9

    new-array v9, v8, [Ljava/lang/String;

    aput-object v3, v9, v10

    aput-object v0, v9, v12

    move v13, v12

    const-string v12, "rowid"

    move/from16 v16, v13

    const-string v13, "2"

    move/from16 v17, v10

    const/4 v10, 0x0

    move/from16 v18, v8

    move-object v8, v11

    const/4 v11, 0x0

    move-wide/from16 v19, v14

    move/from16 v15, v17

    move/from16 v14, v18

    .line 20
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 21
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_f2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1fb

    .line 25
    :cond_f2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6
    :try_end_f6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_f6} :catch_6b
    .catchall {:try_start_ae .. :try_end_f6} :catchall_6e

    .line 26
    :try_start_f6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhx;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhx;
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_106} :catch_1d0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f6 .. :try_end_106} :catch_6b
    .catchall {:try_start_f6 .. :try_end_106} :catchall_6e

    .line 30
    :try_start_106
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_11f

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v8, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 33
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_11f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 35
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    cmp-long v6, p4, v19

    const/4 v7, 0x3

    if-eqz v6, :cond_13b

    const-string v6, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v15

    aput-object v0, v8, v16

    .line 36
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    goto :goto_143

    .line 50
    :cond_13b
    const-string v6, "app_id = ? and metadata_fingerprint = ?"

    new-array v8, v14, [Ljava/lang/String;

    aput-object v3, v8, v15

    aput-object v0, v8, v16

    :goto_143
    move-object v9, v8

    move-object v8, v6

    .line 36
    const-string v6, "raw_events"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v10, "rowid"

    aput-object v10, v0, v15

    const-string v10, "name"

    aput-object v10, v0, v16

    const-string v10, "timestamp"

    aput-object v10, v0, v14

    const-string v10, "data"

    aput-object v10, v0, v7

    const-string v12, "rowid"

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v14, v7

    move-object v7, v0

    .line 37
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 38
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 39
    :goto_16b
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 40
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_173
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_106 .. :try_end_173} :catch_6b
    .catchall {:try_start_106 .. :try_end_173} :catchall_6e

    .line 41
    :try_start_173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zze()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhl;
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_17d} :catch_19b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_173 .. :try_end_17d} :catch_6b
    .catchall {:try_start_173 .. :try_end_17d} :catchall_6e

    move/from16 v12, v16

    .line 45
    :try_start_17f
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhl;

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzm(J)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v2, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzpr;->zza(JLcom/google/android/gms/internal/measurement/zzhm;)Z

    move-result v0

    if-nez v0, :cond_1b2

    goto :goto_1fb

    :catch_19b
    move-exception v0

    move/from16 v12, v16

    const/4 v7, 0x2

    .line 29
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 42
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 44
    invoke-virtual {v5, v6, v8, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :cond_1b2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1b9

    goto :goto_1fb

    :cond_1b9
    move/from16 v16, v12

    goto :goto_16b

    :cond_1bc
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1fb

    :catch_1d0
    move-exception v0

    .line 55
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v5, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 29
    invoke-virtual {v2, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17f .. :try_end_1e4} :catch_6b
    .catchall {:try_start_17f .. :try_end_1e4} :catchall_6e

    goto :goto_1fb

    :catch_1e5
    move-exception v0

    move-object/from16 v3, p1

    .line 19
    :goto_1e8
    :try_start_1e8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1fb
    .catchall {:try_start_1e8 .. :try_end_1fb} :catchall_6e

    :goto_1fb
    if-eqz v4, :cond_200

    .line 54
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_200
    return-void

    :goto_201
    if-eqz v4, :cond_206

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_206
    throw v0
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Ljava/lang/Long;)J
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    const-wide/16 v7, -0x1

    if-eqz v4, :cond_1bb

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v4

    const-string v5, "upload_queue"

    const/4 v9, 0x0

    if-nez v4, :cond_34

    goto/16 :goto_db

    .line 58
    :cond_34
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzw()Lcom/google/android/gms/measurement/internal/zzoa;

    move-result-object v10

    .line 11
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzoa;->zzb:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v10

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v12

    .line 13
    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v10, v12, v10

    .line 14
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 16
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzJ()J

    move-result-wide v14

    cmp-long v10, v10, v14

    if-lez v10, :cond_db

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzw()Lcom/google/android/gms/measurement/internal/zzoa;

    move-result-object v4

    .line 17
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzoa;->zzb:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v4

    if-nez v4, :cond_6f

    goto :goto_90

    .line 21
    :cond_6f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaC()Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/String;

    invoke-virtual {v4, v5, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_90

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v10

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v10

    const-string v11, "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted"

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v11, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :cond_90
    :goto_90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 27
    invoke-virtual {v4, v6, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 31
    :try_start_a5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzz:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 32
    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v0

    if-lez v0, :cond_db

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v10, "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v2, v11, v9

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    aput-object v0, v11, v12

    .line 35
    invoke-virtual {v4, v5, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_c6} :catch_c7

    goto :goto_db

    :catch_c7
    move-exception v0

    .line 61
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Error deleting over the limit queued batches. appId"

    .line 38
    invoke-virtual {v4, v11, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_db
    :goto_db
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_118

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 42
    :cond_118
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v4

    new-instance v10, Landroid/content/ContentValues;

    .line 43
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "app_id"

    .line 44
    invoke-virtual {v10, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "measurement_batch"

    .line 45
    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "upload_uri"

    move-object/from16 v11, p3

    .line 46
    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_156

    :goto_141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_156

    const-string v11, "\r\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_141

    :cond_156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "upload_headers"

    .line 48
    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "upload_type"

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 51
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v11, "creation_timestamp"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "retry_count"

    invoke-virtual {v10, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_18f

    const-string v4, "associated_row_id"

    .line 53
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    :cond_18f
    :try_start_18f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v5, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v5, v3, v7

    if-nez v5, :cond_1a9

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId"

    .line 58
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18f .. :try_end_1a8} :catch_1ab

    goto :goto_1aa

    :cond_1a9
    move-wide v7, v3

    :goto_1aa
    return-wide v7

    :catch_1ab
    move-exception v0

    .line 25
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Error storing MeasurementBatch to upload_queue. appId"

    .line 61
    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1bb
    return-wide v7
.end method

.method protected final zze(Ljava/lang/String;Ljava/lang/String;)J
    .registers 16

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    const-string p2, "first_open_count"

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v1, 0x0

    .line 7
    :try_start_17
    const-string v3, "select first_open_count from app2 where app_id=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-wide/16 v7, -0x1

    .line 8
    invoke-direct {p0, v3, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_25} :catch_9b
    .catchall {:try_start_17 .. :try_end_25} :catchall_b6

    cmp-long v3, v9, v7

    const-string v5, "app2"

    const-string v11, "app_id"

    if-nez v3, :cond_60

    :try_start_2d
    new-instance v3, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, p2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "previous_install_count"

    .line 12
    invoke-virtual {v3, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 13
    invoke-virtual {v0, v5, v9, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-nez v3, :cond_5f

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Failed to insert column (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    invoke-virtual {v3, v4, v5, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_5e} :catch_9b
    .catchall {:try_start_2d .. :try_end_5e} :catchall_b6

    goto :goto_b2

    :cond_5f
    move-wide v9, v1

    .line 28
    :cond_60
    :try_start_60
    new-instance v3, Landroid/content/ContentValues;

    .line 14
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    .line 16
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, p2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "app_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 17
    invoke-virtual {v0, v5, v3, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_95

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to update column (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b2

    .line 21
    :cond_95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_98
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_98} :catch_99
    .catchall {:try_start_60 .. :try_end_98} :catchall_b6

    goto :goto_b1

    :catch_99
    move-exception v1

    goto :goto_9e

    :catch_9b
    move-exception v3

    move-wide v9, v1

    move-object v1, v3

    :goto_9e
    :try_start_9e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error inserting column. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b1
    .catchall {:try_start_9e .. :try_end_b1} :catchall_b6

    :goto_b1
    move-wide v7, v9

    .line 28
    :goto_b2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v7

    :catchall_b6
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 29
    throw p1
.end method

.method public final zzf()J
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    const-string v3, "select max(bundle_end_timestamp) from queue"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()J
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    const-string v3, "select max(timestamp) from raw_events"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi(Ljava/lang/String;)J
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const-wide/16 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaz(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzj()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzm:Lcom/google/android/gms/measurement/internal/zzav;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    throw v0
.end method

.method public final zzk(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v0, 0x0

    .line 3
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select parameters from default_event_params where app_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_17} :catch_6d
    .catchall {:try_start_7 .. :try_end_17} :catchall_6b

    .line 5
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v2, "Default event parameters not found"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_7e

    .line 8
    :cond_2d
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_31} :catch_69
    .catchall {:try_start_17 .. :try_end_31} :catchall_84

    .line 9
    :try_start_31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zze()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_41} :catch_69
    .catchall {:try_start_31 .. :try_end_41} :catchall_84

    :try_start_41
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzF(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_4e} :catch_69
    .catchall {:try_start_41 .. :try_end_4e} :catchall_84

    if-eqz v1, :cond_53

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_53
    return-object p1

    :catch_54
    move-exception v2

    .line 18
    :try_start_55
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Failed to retrieve default event parameters. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_68} :catch_69
    .catchall {:try_start_55 .. :try_end_68} :catchall_84

    goto :goto_7e

    :catch_69
    move-exception p1

    goto :goto_6f

    :catchall_6b
    move-exception p1

    goto :goto_86

    :catch_6d
    move-exception p1

    move-object v1, v0

    .line 17
    :goto_6f
    :try_start_6f
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error selecting default event parameters"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_84

    :goto_7e
    if-eqz v1, :cond_83

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_83
    return-object v0

    :catchall_84
    move-exception p1

    move-object v0, v1

    :goto_86
    if-eqz v0, :cond_8b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_8b
    throw p1
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 4
    :try_start_d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "apps"

    const/16 v0, 0x2d

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "app_instance_id"

    const/4 v12, 0x0

    aput-object v0, v6, v12

    const-string v0, "gmp_app_id"

    const/4 v13, 0x1

    aput-object v0, v6, v13

    const-string v0, "resettable_device_id_hash"

    const/4 v14, 0x2

    aput-object v0, v6, v14

    const-string v0, "last_bundle_index"

    const/4 v15, 0x3

    aput-object v0, v6, v15

    const-string v0, "last_bundle_start_timestamp"

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const-string v0, "last_bundle_end_timestamp"

    const/4 v8, 0x5

    aput-object v0, v6, v8

    const-string v0, "app_version"

    const/4 v9, 0x6

    aput-object v0, v6, v9

    const-string v0, "app_store"

    const/4 v10, 0x7

    aput-object v0, v6, v10

    const-string v0, "gmp_version"

    const/16 v11, 0x8

    aput-object v0, v6, v11

    const-string v0, "dev_cert_hash"

    const/16 v16, 0x9

    aput-object v0, v6, v16

    const-string v0, "measurement_enabled"
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_4d} :catch_3b6
    .catchall {:try_start_d .. :try_end_4d} :catchall_3b0

    const/16 v16, 0x0

    const/16 v3, 0xa

    :try_start_51
    aput-object v0, v6, v3

    const-string v0, "day"

    const/16 v17, 0xb

    aput-object v0, v6, v17

    const-string v0, "daily_public_events_count"

    const/16 v17, 0xc

    aput-object v0, v6, v17

    const-string v0, "daily_events_count"

    const/16 v17, 0xd

    aput-object v0, v6, v17

    const-string v0, "daily_conversions_count"

    const/16 v17, 0xe

    aput-object v0, v6, v17

    const-string v0, "config_fetched_time"

    const/16 v17, 0xf

    aput-object v0, v6, v17

    const-string v0, "failed_config_fetch_time"

    const/16 v17, 0x10

    aput-object v0, v6, v17

    const-string v0, "app_version_int"

    const/16 v3, 0x11

    aput-object v0, v6, v3

    const-string v0, "firebase_instance_id"

    const/16 v18, 0x12

    aput-object v0, v6, v18

    const-string v0, "daily_error_events_count"

    const/16 v18, 0x13

    aput-object v0, v6, v18

    const-string v0, "daily_realtime_events_count"

    const/16 v18, 0x14

    aput-object v0, v6, v18

    const-string v0, "health_monitor_sample"

    const/16 v18, 0x15

    aput-object v0, v6, v18

    const-string v0, "android_id"

    const/16 v18, 0x16

    aput-object v0, v6, v18

    const-string v0, "adid_reporting_enabled"

    const/16 v3, 0x17

    aput-object v0, v6, v3

    const-string v0, "admob_app_id"

    const/16 v19, 0x18

    aput-object v0, v6, v19

    const-string v0, "dynamite_version"

    const/16 v3, 0x19

    aput-object v0, v6, v3

    const-string v0, "safelisted_events"

    const/16 v3, 0x1a

    aput-object v0, v6, v3

    const-string v0, "ga_app_id"

    const/16 v20, 0x1b

    aput-object v0, v6, v20

    const-string v0, "session_stitching_token"

    const/16 v20, 0x1c

    aput-object v0, v6, v20

    const-string v0, "sgtm_upload_enabled"

    const/16 v3, 0x1d

    aput-object v0, v6, v3

    const-string v0, "target_os_version"

    const/16 v21, 0x1e

    aput-object v0, v6, v21

    const-string v0, "session_stitching_token_hash"

    const/16 v21, 0x1f

    aput-object v0, v6, v21

    const-string v0, "ad_services_version"

    const/16 v21, 0x20

    aput-object v0, v6, v21

    const-string v0, "unmatched_first_open_without_ad_id"

    const/16 v3, 0x21

    aput-object v0, v6, v3

    const-string v0, "npa_metadata_value"

    const/16 v3, 0x22

    aput-object v0, v6, v3

    const-string v0, "attribution_eligibility_status"

    const/16 v22, 0x23

    aput-object v0, v6, v22

    const-string v0, "sgtm_preview_key"

    const/16 v22, 0x24

    aput-object v0, v6, v22

    const-string v0, "dma_consent_state"

    const/16 v22, 0x25

    aput-object v0, v6, v22

    const-string v0, "daily_realtime_dcu_count"

    const/16 v22, 0x26

    aput-object v0, v6, v22

    const-string v0, "bundle_delivery_index"

    const/16 v22, 0x27

    aput-object v0, v6, v22

    const-string v0, "serialized_npa_metadata"

    const/16 v3, 0x28

    aput-object v0, v6, v3

    const-string v0, "unmatched_pfo"

    const/16 v3, 0x29

    aput-object v0, v6, v3

    const-string v0, "unmatched_uwa"

    const/16 v3, 0x2a

    aput-object v0, v6, v3

    const-string v0, "ad_campaign_info"

    const/16 v23, 0x2b

    aput-object v0, v6, v23

    const-string v0, "client_upload_eligibility"

    const/16 v3, 0x2c

    aput-object v0, v6, v3

    move v0, v7

    const-string v7, "app_id=?"

    move/from16 v24, v8

    new-array v8, v13, [Ljava/lang/String;

    aput-object v2, v8, v12

    move/from16 v25, v10

    const/4 v10, 0x0

    move/from16 v26, v11

    const/4 v11, 0x0

    move/from16 v27, v9

    const/4 v9, 0x0

    move/from16 v3, v24

    .line 5
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_137
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_137} :catch_3ae
    .catchall {:try_start_51 .. :try_end_137} :catchall_3ac

    .line 6
    :try_start_137
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_13f

    goto/16 :goto_3ce

    .line 75
    :cond_13f
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaw;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzt()Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object v7

    .line 7
    invoke-direct {v5, v7, v2}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v7

    .line 9
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-eqz v7, :cond_15d

    .line 10
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(Ljava/lang/String;)V

    .line 11
    :cond_15d
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzao(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 13
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-eqz v7, :cond_177

    .line 14
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzax(Ljava/lang/String;)V

    .line 15
    :cond_177
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzat(J)V

    .line 16
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzau(J)V

    .line 17
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzas(J)V

    const/4 v0, 0x6

    .line 18
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzX(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 19
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzW(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 20
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzap(J)V

    const/16 v0, 0x9

    .line 21
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj(J)V

    const/16 v0, 0xa

    .line 22
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1bf

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1bd

    goto :goto_1bf

    :cond_1bd
    move v0, v12

    goto :goto_1c0

    :cond_1bf
    :goto_1bf
    move v0, v13

    :goto_1c0
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzav(Z)V

    const/16 v0, 0xb

    .line 23
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzai(J)V

    const/16 v0, 0xc

    .line 24
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf(J)V

    const/16 v0, 0xd

    .line 25
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzae(J)V

    const/16 v0, 0xe

    .line 26
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzac(J)V

    const/16 v0, 0xf

    .line 27
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzab(J)V

    const/16 v0, 0x10

    .line 28
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzam(J)V

    const/16 v0, 0x11

    .line 29
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_205

    const-wide/32 v9, -0x80000000

    goto :goto_20a

    :cond_205
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v9, v0

    :goto_20a
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzY(J)V

    const/16 v0, 0x12

    .line 30
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzan(Ljava/lang/String;)V

    const/16 v0, 0x13

    .line 31
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzad(J)V

    const/16 v0, 0x14

    .line 32
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzah(J)V

    const/16 v0, 0x15

    .line 33
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaq(Ljava/lang/String;)V

    const/16 v0, 0x17

    .line 34
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_242

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_240

    goto :goto_242

    :cond_240
    move v0, v12

    goto :goto_243

    :cond_242
    :goto_242
    move v0, v13

    :goto_243
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzU(Z)V

    const/16 v0, 0x18

    .line 35
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzS(Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 36
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_25a

    const-wide/16 v9, 0x0

    goto :goto_25e

    :cond_25a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :goto_25e
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzal(J)V

    const/16 v0, 0x1a

    .line 37
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_27b

    .line 38
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    const/4 v7, -0x1

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzay(Ljava/util/List;)V

    .line 40
    :cond_27b
    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    if-eqz v0, :cond_28e

    const/16 v0, 0x1c

    .line 42
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaA(Ljava/lang/String;)V

    :cond_28e
    const/16 v0, 0x1d

    .line 43
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_29e

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_29e

    move v0, v13

    goto :goto_29f

    :cond_29e
    move v0, v12

    :goto_29f
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaD(Z)V

    const/16 v0, 0x27

    .line 44
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzar(J)V

    const/16 v0, 0x24

    .line 45
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaC(Ljava/lang/String;)V

    const/16 v0, 0x1e

    .line 46
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzaE(J)V

    const/16 v0, 0x1f

    .line 47
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzaB(J)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 48
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 50
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    if-eqz v3, :cond_2e9

    const/16 v3, 0x20

    .line 51
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzT(I)V

    const/16 v3, 0x23

    .line 52
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzZ(J)V

    :cond_2e9
    const/16 v3, 0x21

    .line 53
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_2f9

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2f9

    move v3, v13

    goto :goto_2fa

    :cond_2f9
    move v3, v12

    :goto_2fa
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaF(Z)V

    const/16 v3, 0x22

    .line 54
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_308

    move-object/from16 v3, v16

    goto :goto_313

    :cond_308
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_30f

    move v12, v13

    :cond_30f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_313
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaw(Ljava/lang/Boolean;)V

    const/16 v3, 0x25

    .line 55
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzak(I)V

    const/16 v3, 0x26

    .line 56
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzag(I)V

    const/16 v3, 0x28

    .line 57
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_333

    const-string v3, ""

    goto :goto_33d

    :cond_333
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    :goto_33d
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaz(Ljava/lang/String;)V

    const/16 v3, 0x29

    .line 59
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_353

    .line 60
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaG(Ljava/lang/Long;)V

    :cond_353
    const/16 v3, 0x2a

    .line 61
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_366

    .line 62
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaH(Ljava/lang/Long;)V

    :cond_366
    const/16 v3, 0x2b

    .line 63
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzR([B)V

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 65
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    if-eqz v3, :cond_38a

    const/16 v3, 0x2c

    .line 66
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_38a

    .line 67
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa(I)V

    .line 68
    :cond_38a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzO()V

    .line 69
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3a4

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Got multiple records for app, expected one. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_137 .. :try_end_3a4} :catch_3aa
    .catchall {:try_start_137 .. :try_end_3a4} :catchall_3d4

    :cond_3a4
    if-eqz v4, :cond_3a9

    .line 75
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3a9
    return-object v5

    :catch_3aa
    move-exception v0

    goto :goto_3bb

    :catchall_3ac
    move-exception v0

    goto :goto_3b3

    :catch_3ae
    move-exception v0

    goto :goto_3b9

    :catchall_3b0
    move-exception v0

    const/16 v16, 0x0

    :goto_3b3
    move-object/from16 v3, v16

    goto :goto_3d6

    :catch_3b6
    move-exception v0

    const/16 v16, 0x0

    :goto_3b9
    move-object/from16 v4, v16

    .line 29
    :goto_3bb
    :try_start_3bb
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v5, "Error querying app. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3ce
    .catchall {:try_start_3bb .. :try_end_3ce} :catchall_3d4

    :goto_3ce
    if-eqz v4, :cond_3d3

    .line 75
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3d3
    return-object v16

    :catchall_3d4
    move-exception v0

    move-object v3, v4

    :goto_3d6
    if-eqz v3, :cond_3db

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_3db
    throw v0
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;
    .registers 36

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 5
    :try_start_e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "conditional_properties"

    const/16 v0, 0xb

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "origin"

    const/4 v2, 0x0

    aput-object v0, v11, v2

    const-string v0, "value"

    const/4 v3, 0x1

    aput-object v0, v11, v3

    const-string v0, "active"

    const/4 v4, 0x2

    aput-object v0, v11, v4

    const-string v0, "trigger_event_name"

    const/4 v5, 0x3

    aput-object v0, v11, v5

    const-string v0, "trigger_timeout"

    const/4 v6, 0x4

    aput-object v0, v11, v6

    const-string v0, "timed_out_event"

    const/4 v7, 0x5

    aput-object v0, v11, v7

    const-string v0, "creation_timestamp"

    const/4 v12, 0x6

    aput-object v0, v11, v12

    const-string v0, "triggered_event"

    const/4 v13, 0x7

    aput-object v0, v11, v13

    const-string v0, "triggered_timestamp"

    const/16 v14, 0x8

    aput-object v0, v11, v14

    const-string v0, "time_to_live"

    const/16 v15, 0x9

    aput-object v0, v11, v15

    const-string v0, "expired_event"
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_4e} :catch_12e
    .catchall {:try_start_e .. :try_end_4e} :catchall_128

    const/16 v17, 0x0

    const/16 v8, 0xa

    :try_start_52
    aput-object v0, v11, v8

    move v0, v12

    const-string v12, "app_id=? and name=?"

    move/from16 v16, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object p1, v13, v2

    aput-object p2, v13, v3

    move/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v20, v14

    const/4 v14, 0x0

    move v8, v0

    move/from16 v0, v19

    .line 6
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_70} :catch_124
    .catchall {:try_start_52 .. :try_end_70} :catchall_122

    .line 7
    :try_start_70
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_78

    goto/16 :goto_150

    .line 8
    :cond_78
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_80

    const-string v10, ""

    .line 9
    :cond_80
    invoke-virtual {v1, v9, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzz(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    .line 10
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_8d

    move/from16 v24, v3

    goto :goto_8f

    :cond_8d
    move/from16 v24, v2

    .line 11
    :goto_8f
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 12
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v3

    .line 14
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 15
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v3

    .line 17
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/gms/measurement/internal/zzbh;

    const/16 v0, 0x8

    .line 18
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v0, 0x9

    .line 19
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v0

    const/16 v2, 0xa

    .line 21
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 22
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzqb;
    :try_end_e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70 .. :try_end_e3} :catch_11e
    .catchall {:try_start_70 .. :try_end_e3} :catchall_156

    move-object/from16 v3, p2

    move-object v7, v10

    move-object v6, v11

    :try_start_e7
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v7

    .line 23
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzai;

    move-object/from16 v19, p1

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v32}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzqb;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbh;JLcom/google/android/gms/measurement/internal/zzbh;JLcom/google/android/gms/measurement/internal/zzbh;)V

    .line 24
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v4, "Got multiple records for conditional property, expected one"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_116
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e7 .. :try_end_116} :catch_11c
    .catchall {:try_start_e7 .. :try_end_116} :catchall_156

    :cond_116
    if-eqz v9, :cond_11b

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11b
    return-object v18

    :catch_11c
    move-exception v0

    goto :goto_135

    :catch_11e
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_135

    :catchall_122
    move-exception v0

    goto :goto_12b

    :catch_124
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_133

    :catchall_128
    move-exception v0

    const/16 v17, 0x0

    :goto_12b
    move-object/from16 v8, v17

    goto :goto_158

    :catch_12e
    move-exception v0

    move-object/from16 v3, p2

    const/16 v17, 0x0

    :goto_133
    move-object/from16 v9, v17

    :goto_135
    :try_start_135
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v5, "Error querying conditional property"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_150
    .catchall {:try_start_135 .. :try_end_150} :catchall_156

    :goto_150
    if-eqz v9, :cond_155

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_155
    return-object v17

    :catchall_156
    move-exception v0

    move-object v8, v9

    :goto_158
    if-eqz v8, :cond_15d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_15d
    throw v0
.end method

.method public final zzn(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzar;
    .registers 15

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v1, 0x0

    .line 4
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "apps"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "remote_config"

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const-string v0, "config_last_modified_time"

    const/4 v11, 0x1

    aput-object v0, v4, v11

    const-string v0, "e_tag"

    const/4 v12, 0x2

    aput-object v0, v4, v12

    const-string v5, "app_id=?"

    new-array v6, v11, [Ljava/lang/String;

    aput-object p1, v6, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_2f} :catch_6e
    .catchall {:try_start_a .. :try_end_2f} :catchall_6b

    .line 6
    :try_start_2f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_83

    .line 7
    :cond_36
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 8
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 13
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5b
    if-nez v0, :cond_5e

    goto :goto_83

    :cond_5e
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_63} :catch_69
    .catchall {:try_start_2f .. :try_end_63} :catchall_89

    if-eqz v2, :cond_68

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_68
    return-object v5

    :catch_69
    move-exception v0

    goto :goto_70

    :catchall_6b
    move-exception v0

    move-object p1, v0

    goto :goto_8c

    :catch_6e
    move-exception v0

    move-object v2, v1

    :goto_70
    :try_start_70
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_70 .. :try_end_83} :catchall_89

    :goto_83
    if-eqz v2, :cond_88

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_88
    return-object v1

    :catchall_89
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    :goto_8c
    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_91
    throw p1
.end method

.method public final zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;
    .registers 24

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 1
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zzp(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    return-object p1
.end method

.method public final zzp(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;
    .registers 36

    move-object/from16 v1, p0

    .line 1
    const-string v0, "daily_registered_triggers_count"

    const-string v2, "daily_realtime_dcu_count"

    const-string v3, "daily_realtime_events_count"

    const-string v4, "daily_error_events_count"

    const-string v5, "daily_conversions_count"

    const-string v6, "daily_public_events_count"

    const-string v7, "daily_events_count"

    const-string v8, "day"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>()V

    .line 4
    :try_start_26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "apps"

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/String;

    aput-object v8, v13, v11

    aput-object v7, v13, v9

    move/from16 v22, v11

    const/4 v11, 0x2

    aput-object v6, v13, v11

    const/4 v11, 0x3

    aput-object v5, v13, v11

    const/4 v11, 0x4

    aput-object v4, v13, v11

    const/4 v11, 0x5

    aput-object v3, v13, v11

    const/4 v11, 0x6

    aput-object v2, v13, v11

    const/4 v11, 0x7

    aput-object v0, v13, v11

    const-string v17, "app_id=?"

    new-array v11, v9, [Ljava/lang/String;

    aput-object p3, v11, v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v11

    move-object/from16 v16, v13

    .line 5
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_5c} :catch_147
    .catchall {:try_start_26 .. :try_end_5c} :catchall_144

    .line 6
    :try_start_5c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_77

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Not updating daily counts, app is not known. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15c

    :cond_77
    move/from16 v11, v22

    .line 10
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    cmp-long v11, v15, p1

    if-nez v11, :cond_b3

    move-object v11, v10

    .line 11
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzb:J

    const/4 v9, 0x2

    .line 12
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zza:J

    const/4 v9, 0x3

    .line 13
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    const/4 v9, 0x4

    .line 14
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const/4 v9, 0x5

    .line 15
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    const/4 v9, 0x6

    .line 16
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    const/4 v9, 0x7

    .line 17
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    goto :goto_b4

    :cond_b3
    move-object v11, v10

    :goto_b4
    if-eqz p6, :cond_bc

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzb:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzb:J

    :cond_bc
    if-eqz p7, :cond_c4

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zza:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zza:J

    :cond_c4
    if-eqz p8, :cond_cc

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    :cond_cc
    if-eqz p9, :cond_d4

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    :cond_d4
    if-eqz p10, :cond_dc

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    :cond_dc
    if-eqz p11, :cond_e4

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    :cond_e4
    if-eqz p12, :cond_ec

    iget-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    add-long v9, v9, p4

    iput-wide v9, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    :cond_ec
    new-instance v9, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 19
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v8, v11

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/zzas;->zza:J

    .line 20
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzb:J

    .line 21
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v6, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v5, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v4, v12, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v3, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "apps"

    const-string v2, "app_id=?"

    .line 27
    invoke-virtual {v14, v0, v9, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_13f} :catch_142
    .catchall {:try_start_5c .. :try_end_13f} :catchall_140

    goto :goto_15c

    :catchall_140
    move-exception v0

    goto :goto_162

    :catch_142
    move-exception v0

    goto :goto_149

    :catchall_144
    move-exception v0

    const/4 v13, 0x0

    goto :goto_162

    :catch_147
    move-exception v0

    const/4 v13, 0x0

    :goto_149
    :try_start_149
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error updating daily counts. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15c
    .catchall {:try_start_149 .. :try_end_15c} :catchall_140

    :goto_15c
    if-eqz v13, :cond_161

    .line 31
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_161
    return-object v12

    :goto_162
    if-eqz v13, :cond_167

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_167
    throw v0
.end method

.method public final zzq(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ""

    const-string v1, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaD(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzba;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    return-object p1
.end method

.method final zzr(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 27

    move-object/from16 v0, p0

    .line 1
    const-string v1, "events"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p1

    .line 2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    if-nez v1, :cond_4b

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    move-object/from16 v5, p3

    .line 6
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 7
    invoke-virtual {v2, v5, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v3

    :cond_4b
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zze:J

    const-wide/16 v4, 0x1

    add-long v13, v2, v4

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    add-long v11, v2, v4

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    add-long v9, v2, v4

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzf:J

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzg:J

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzh:Ljava/lang/Long;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzi:Ljava/lang/Long;

    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-wide/from16 v17, v4

    move-object/from16 v19, v15

    move-wide v15, v2

    .line 10
    invoke-direct/range {v6 .. v22}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public final zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 4

    .line 1
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    return-object p1
.end method

.method public final zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ""

    const-string v1, "select storage_consent_at_bundling from consent_settings where app_id=? limit 1;"

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaD(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    return-object p1
.end method

.method public final zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "select consent_state, consent_source from consent_settings where app_id=? limit 1;"

    const/4 v3, 0x0

    .line 4
    :try_start_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5
    invoke-virtual {v4, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_1a} :catch_46
    .catchall {:try_start_12 .. :try_end_1a} :catchall_43

    .line 6
    :try_start_1a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "No data found"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    if-eqz p1, :cond_5d

    goto :goto_5a

    .line 7
    :cond_32
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v3
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_3e} :catch_41
    .catchall {:try_start_1a .. :try_end_3e} :catchall_66

    if-eqz p1, :cond_5d

    goto :goto_5a

    :catch_41
    move-exception v0

    goto :goto_49

    :catchall_43
    move-exception p1

    move-object v0, p1

    goto :goto_68

    :catch_46
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 10
    :goto_49
    :try_start_49
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Error querying database."

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_66

    if-eqz p1, :cond_5d

    .line 10
    :goto_5a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_5d
    move-object p1, v3

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzjx;

    if-nez v3, :cond_65

    .line 17
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    return-object p1

    :cond_65
    return-object v3

    :catchall_66
    move-exception v0

    move-object v3, p1

    :goto_68
    if-eqz v3, :cond_6d

    .line 10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_6d
    throw v0
.end method

.method public final zzw(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpz;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "app_id=? AND NOT "

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 5
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 8
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    new-array v0, v4, [Lcom/google/android/gms/measurement/internal/zzmf;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    aput-object v3, v0, v5

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpc;->zza([Lcom/google/android/gms/measurement/internal/zzmf;)Lcom/google/android/gms/measurement/internal/zzpc;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzD(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpc;I)Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    return-object v6

    :cond_41
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzpz;

    return-object v0

    .line 9
    :cond_48
    :try_start_48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "upload_queue"

    const/16 v3, 0xa

    new-array v9, v3, [Ljava/lang/String;

    const-string v3, "rowId"

    aput-object v3, v9, v5

    const-string v3, "app_id"

    aput-object v3, v9, v4

    const-string v3, "measurement_batch"

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const-string v3, "upload_uri"

    const/4 v11, 0x3

    aput-object v3, v9, v11

    const-string v3, "upload_headers"

    const/4 v12, 0x4

    aput-object v3, v9, v12

    const-string v3, "upload_type"

    const/4 v13, 0x5

    aput-object v3, v9, v13

    const-string v3, "retry_count"

    const/4 v14, 0x6

    aput-object v3, v9, v14

    const-string v3, "creation_timestamp"

    const/4 v15, 0x7

    aput-object v3, v9, v15

    const-string v3, "associated_row_id"
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_7a} :catch_119
    .catchall {:try_start_48 .. :try_end_7a} :catchall_113

    const/16 v6, 0x8

    :try_start_7c
    aput-object v3, v9, v6

    const-string v3, "last_upload_timestamp"

    const/16 v6, 0x9

    aput-object v3, v9, v6

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaC()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v5

    move v3, v14

    const-string v14, "creation_timestamp ASC"

    move v4, v15

    const-string v15, "1"

    move/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v19, v13

    const/4 v13, 0x0

    move v4, v11

    move/from16 v6, v18

    const/4 v3, 0x2

    move-object v11, v0

    move/from16 v0, v19

    .line 11
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_af} :catch_10f
    .catchall {:try_start_7c .. :try_end_af} :catchall_10b

    .line 12
    :try_start_af
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_b9

    const/16 v16, 0x0

    goto/16 :goto_12e

    .line 13
    :cond_b9
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 14
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 15
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v6, 0x6

    .line 18
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v10, 0x7

    .line 19
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v12, 0x8

    .line 20
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v14, 0x9

    .line 21
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_af .. :try_end_e3} :catch_103
    .catchall {:try_start_af .. :try_end_e3} :catchall_fd

    move-object/from16 v17, v7

    const/16 v16, 0x0

    move-object v7, v4

    move-wide/from16 v20, v8

    move v8, v0

    move v9, v6

    move-object v6, v3

    move-wide/from16 v3, v20

    .line 22
    :try_start_ef
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaB(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/zzpz;

    move-result-object v0
    :try_end_f3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ef .. :try_end_f3} :catch_fb
    .catchall {:try_start_ef .. :try_end_f3} :catchall_f9

    if-eqz v17, :cond_f8

    .line 26
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_f8
    return-object v0

    :catchall_f9
    move-exception v0

    goto :goto_100

    :catch_fb
    move-exception v0

    goto :goto_108

    :catchall_fd
    move-exception v0

    move-object/from16 v17, v7

    :goto_100
    move-object/from16 v6, v17

    goto :goto_135

    :catch_103
    move-exception v0

    move-object/from16 v17, v7

    const/16 v16, 0x0

    :goto_108
    move-object/from16 v6, v17

    goto :goto_11e

    :catchall_10b
    move-exception v0

    const/16 v16, 0x0

    goto :goto_116

    :catch_10f
    move-exception v0

    const/16 v16, 0x0

    goto :goto_11c

    :catchall_113
    move-exception v0

    move-object/from16 v16, v6

    :goto_116
    move-object/from16 v6, v16

    goto :goto_135

    :catch_119
    move-exception v0

    move-object/from16 v16, v6

    :goto_11c
    move-object/from16 v6, v16

    :goto_11e
    :try_start_11e
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Error to querying MeasurementBatch from upload_queue. appId"

    .line 25
    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12d
    .catchall {:try_start_11e .. :try_end_12d} :catchall_134

    move-object v7, v6

    :goto_12e
    if-eqz v7, :cond_133

    .line 26
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_133
    return-object v16

    :catchall_134
    move-exception v0

    :goto_135
    if-eqz v6, :cond_13a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_13a
    throw v0

    :cond_13b
    move-object/from16 v16, v6

    return-object v16
.end method

.method public final zzx(J)Lcom/google/android/gms/measurement/internal/zzpz;
    .registers 23

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-nez v0, :cond_12

    return-object v3

    .line 4
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 6
    :try_start_18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "upload_queue"

    const/16 v0, 0xa

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "rowId"

    const/4 v2, 0x0

    aput-object v0, v6, v2

    const-string v0, "app_id"

    const/4 v13, 0x1

    aput-object v0, v6, v13

    const-string v0, "measurement_batch"

    const/4 v14, 0x2

    aput-object v0, v6, v14

    const-string v0, "upload_uri"

    const/4 v15, 0x3

    aput-object v0, v6, v15

    const-string v0, "upload_headers"

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const-string v0, "upload_type"

    const/4 v8, 0x5

    aput-object v0, v6, v8

    const-string v0, "retry_count"

    const/4 v9, 0x6

    aput-object v0, v6, v9

    const-string v0, "creation_timestamp"

    const/4 v10, 0x7

    aput-object v0, v6, v10

    const-string v0, "associated_row_id"

    const/16 v11, 0x8

    aput-object v0, v6, v11

    const-string v0, "last_upload_timestamp"

    const/16 v12, 0x9

    aput-object v0, v6, v12

    move v0, v7

    const-string v7, "rowId=?"

    move/from16 v16, v8

    new-array v8, v13, [Ljava/lang/String;

    .line 7
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v2

    move v2, v12

    const-string v12, "1"
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_66} :catch_e5
    .catchall {:try_start_18 .. :try_end_66} :catchall_df

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    move v3, v0

    move/from16 v0, v16

    move/from16 v2, v17

    .line 8
    :try_start_74
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_78} :catch_db
    .catchall {:try_start_74 .. :try_end_78} :catchall_d7

    .line 9
    :try_start_78
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_82

    const/16 v16, 0x0

    goto/16 :goto_fe

    .line 10
    :cond_82
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 12
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 15
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x7

    .line 16
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v0, 0x8

    .line 17
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v2, 0x9

    .line 18
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_b1} :catch_cf
    .catchall {:try_start_78 .. :try_end_b1} :catchall_c9

    move-object/from16 v17, v4

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    const/16 v16, 0x0

    move-object v7, v3

    move-wide/from16 v3, p1

    .line 19
    :try_start_bb
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaB(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/zzpz;

    move-result-object v0
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_bf} :catch_c7
    .catchall {:try_start_bb .. :try_end_bf} :catchall_c5

    if-eqz v17, :cond_c4

    .line 23
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_c4
    return-object v0

    :catchall_c5
    move-exception v0

    goto :goto_cc

    :catch_c7
    move-exception v0

    goto :goto_d4

    :catchall_c9
    move-exception v0

    move-object/from16 v17, v4

    :goto_cc
    move-object/from16 v3, v17

    goto :goto_105

    :catch_cf
    move-exception v0

    move-object/from16 v17, v4

    const/16 v16, 0x0

    :goto_d4
    move-object/from16 v3, v17

    goto :goto_ea

    :catchall_d7
    move-exception v0

    const/16 v16, 0x0

    goto :goto_e2

    :catch_db
    move-exception v0

    const/16 v16, 0x0

    goto :goto_e8

    :catchall_df
    move-exception v0

    move-object/from16 v16, v3

    :goto_e2
    move-object/from16 v3, v16

    goto :goto_105

    :catch_e5
    move-exception v0

    move-object/from16 v16, v3

    :goto_e8
    move-object/from16 v3, v16

    :goto_ea
    :try_start_ea
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v4, "Error to querying MeasurementBatch from upload_queue. rowId"

    .line 22
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_104

    move-object v4, v3

    :goto_fe
    if-eqz v4, :cond_103

    .line 23
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_103
    return-object v16

    :catchall_104
    move-exception v0

    :goto_105
    if-eqz v3, :cond_10a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_10a
    throw v0
.end method

.method public final zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;
    .registers 16

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v1, 0x0

    .line 5
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "set_timestamp"

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const-string v0, "value"

    const/4 v11, 0x1

    aput-object v0, v4, v11

    const-string v0, "origin"

    const/4 v12, 0x2

    aput-object v0, v4, v12

    const-string v5, "app_id=? and name=?"

    new-array v6, v12, [Ljava/lang/String;

    aput-object p1, v6, v10

    aput-object p2, v6, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_34} :catch_7b
    .catchall {:try_start_d .. :try_end_34} :catchall_78

    .line 7
    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_9b

    .line 8
    :cond_3c
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 9
    invoke-virtual {p0, v2, v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzz(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_47

    goto :goto_9b

    .line 10
    :cond_47
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzqd;
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_4d} :catch_73
    .catchall {:try_start_34 .. :try_end_4d} :catchall_a1

    move-object v4, p1

    move-object v6, p2

    .line 11
    :try_start_4f
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Got multiple records for user property, expected one. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_6b} :catch_71
    .catchall {:try_start_4f .. :try_end_6b} :catchall_a1

    :cond_6b
    if-eqz v2, :cond_70

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_70
    return-object v3

    :catch_71
    move-exception v0

    goto :goto_76

    :catch_73
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    :goto_76
    move-object p1, v0

    goto :goto_80

    :catchall_78
    move-exception v0

    move-object p1, v0

    goto :goto_a4

    :catch_7b
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move-object p1, v0

    move-object v2, v1

    :goto_80
    :try_start_80
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Error querying user property. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p2

    .line 19
    invoke-virtual {p2, v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {v0, v3, v4, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9b
    .catchall {:try_start_80 .. :try_end_9b} :catchall_a1

    :goto_9b
    if-eqz v2, :cond_a0

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a0
    return-object v1

    :catchall_a1
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    :goto_a4
    if-eqz v1, :cond_a9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_a9
    throw p1
.end method

.method final zzz(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_45

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_37

    const/4 p1, 0x4

    if-eq v0, p1, :cond_27

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Loaded invalid unknown value type, ignoring it"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_27
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_37
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3c
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 10
    :cond_45
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 3
    :cond_4e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-object v1
.end method
