.class public final Lcom/google/android/gms/internal/measurement/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqs;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzf:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzg:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzh:Lcom/google/android/gms/internal/measurement/zzki;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkf;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkf;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkf;->zzb()Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkf;->zza()Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object v0

    .line 3
    const-string v1, "measurement.rb.attribution.ad_campaign_info"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.service.bundle_on_backgrounded"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.client2"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.dma_fix"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    .line 7
    const-string v1, "measurement.rb.attribution.followup1.service"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.client.get_trigger_uris_async"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.service.trigger_uris_high_priority"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zzc:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.index_out_of_bounds_fix"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.retry_disposition"

    .line 12
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zze:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.service"

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zzf:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.enable_trigger_redaction"

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zzg:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.uuid_generation"

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zzh:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.id.rb.attribution.retry_disposition"

    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkf;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.rb.attribution.improved_retry"

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zzc:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zze:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zzf:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zzg:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzi()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zzh:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
