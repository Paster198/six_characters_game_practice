.class public final Lcom/google/android/gms/tagmanager/zzam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/Random;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/Random;

    .line 1
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzam;->zza:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzam;->zzc:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzam;->zzb:Ljava/util/Random;

    return-void
.end method

.method private final zze(JJ)J
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzam;->zzf()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FORBIDDEN_COUNT"

    const-wide/16 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-string v1, "SUCCESSFUL_COUNT"

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzam;->zzb:Ljava/util/Random;

    .line 4
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    long-to-float v3, v4

    add-long/2addr v4, v0

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    long-to-float v0, v4

    div-float/2addr v3, v0

    sub-long/2addr p3, p1

    long-to-float p3, p3

    mul-float/2addr v3, p3

    float-to-long p3, v3

    add-long/2addr p1, p3

    long-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-long p1, v2

    return-wide p1
.end method

.method private final zzf()Landroid/content/SharedPreferences;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzam;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzam;->zzc:Ljava/lang/String;

    .line 1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_gtmContainerRefreshPolicy_"

    if-eqz v2, :cond_15

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .registers 5

    const-wide/32 v0, 0x6ddd00

    const-wide/32 v2, 0xf731400

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzam;->zze(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzb()J
    .registers 5

    const-wide/32 v0, 0x927c0

    const-wide/32 v2, 0x5265c00

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzam;->zze(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzc()V
    .registers 15

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzam;->zzf()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    const-string v1, "FORBIDDEN_COUNT"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3
    const-string v6, "SUCCESSFUL_COUNT"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    cmp-long v9, v4, v2

    const-wide/16 v10, 0xa

    if-nez v9, :cond_1f

    const-wide/16 v4, 0x3

    goto :goto_26

    :cond_1f
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 5
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_26
    sub-long/2addr v10, v4

    .line 6
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 7
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzd()V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzam;->zzf()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    const-string v1, "SUCCESSFUL_COUNT"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3
    const-string v6, "FORBIDDEN_COUNT"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    const-wide/16 v9, 0xa

    .line 4
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    .line 5
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
