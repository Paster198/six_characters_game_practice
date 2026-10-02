.class public final Lcom/google/android/gms/measurement/internal/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzht;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzhs;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "health_monitor"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 2
    :goto_13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const-string p1, "health_monitor:start"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Ljava/lang/String;

    const-string p1, "health_monitor:count"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzc:Ljava/lang/String;

    const-string p1, "health_monitor:value"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zze:J

    return-void
.end method

.method private final zzc()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzd()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzc:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final zza()Landroid/util/Pair;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhq;->zzc()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_17

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhq;->zzd()V

    move-wide v1, v3

    goto :goto_26

    .line 11
    :cond_17
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 4
    :goto_26
    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zze:J

    cmp-long v7, v1, v5

    const/4 v8, 0x0

    if-gez v7, :cond_2e

    return-object v8

    :cond_2e
    add-long/2addr v5, v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_37

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhq;->zzd()V

    return-object v8

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzc:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhq;->zzd()V

    if-eqz v1, :cond_5f

    cmp-long v0, v5, v3

    if-gtz v0, :cond_55

    goto :goto_5f

    :cond_55
    new-instance v0, Landroid/util/Pair;

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 10
    :cond_5f
    :goto_5f
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Landroid/util/Pair;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;J)V
    .registers 14

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhq;->zzc()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_12

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhq;->zzd()V

    :cond_12
    if-nez p1, :cond_16

    const-string p1, ""

    .line 4
    :cond_16
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzc:Ljava/lang/String;

    invoke-interface {p3, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p3, v4, v2

    const-wide/16 v1, 0x1

    if-gtz p3, :cond_3a

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Ljava/lang/String;

    .line 6
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_3a
    iget-object p3, p2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzJ()Ljava/security/SecureRandom;

    move-result-object p3

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v1

    .line 11
    div-long/2addr v8, v4

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    cmp-long p3, v6, v8

    if-gez p3, :cond_61

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Ljava/lang/String;

    .line 13
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    :cond_61
    invoke-interface {p2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
