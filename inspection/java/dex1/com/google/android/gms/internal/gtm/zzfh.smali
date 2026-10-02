.class public final Lcom/google/android/gms/internal/gtm/zzfh;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private zza:Landroid/content/SharedPreferences;

.field private zzb:J

.field private zzc:J

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzfg;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzc:J

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzfg;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzeu;->zzP:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 2
    const-string v4, "monitoring"

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzfg;-><init>(Lcom/google/android/gms/internal/gtm/zzfh;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzff;)V

    iput-object v2, v3, Lcom/google/android/gms/internal/gtm/zzfh;->zzd:Lcom/google/android/gms/internal/gtm/zzfg;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzfh;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final zza()J
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "first_run"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1d

    iput-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzb:J

    return-wide v4

    .line 4
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "Failed to commit first run time"

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    :cond_39
    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzb:J

    return-wide v2

    :cond_3c
    return-wide v0
.end method

.method public final zzb()J
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzc:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    const-string v1, "last_dispatch"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzc:J

    :cond_1a
    return-wide v0
.end method

.method protected final zzd()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final zze()Lcom/google/android/gms/internal/gtm/zzfg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzd:Lcom/google/android/gms/internal/gtm/zzfg;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/gtm/zzfo;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfo;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzfh;->zza()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzfo;-><init>(Lcom/google/android/gms/common/util/Clock;J)V

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "installation_campaign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v2

    :cond_16
    return-object v0
.end method

.method public final zzh(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "installation_campaign"

    if-eqz v1, :cond_18

    .line 5
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    .line 6
    :cond_18
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    :goto_1b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "Failed to commit campaign data"

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final zzi()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zza:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_dispatch"

    .line 5
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzfh;->zzc:J

    return-void
.end method
