.class public final Lcom/google/android/gms/measurement/internal/zzho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzht;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/os/Bundle;

.field private zzd:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzb:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .registers 16

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzd:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    goto/16 :goto_155

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzht;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzb:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14d

    :try_start_15
    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v5, v1

    .line 4
    :goto_21
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_25} :catch_13c

    if-ge v5, v6, :cond_139

    .line 5
    :try_start_27
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "n"

    .line 6
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "t"

    .line 7
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_3b} :catch_124
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_3b} :catch_124

    const/16 v10, 0x64

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v9, v10, :cond_7c

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_72

    const/16 v10, 0x73

    if-eq v9, v10, :cond_68

    const/16 v10, 0xd18

    if-eq v9, v10, :cond_5e

    const/16 v10, 0xd75

    if-eq v9, v10, :cond_54

    goto :goto_86

    .line 32
    :cond_54
    const-string v9, "la"

    .line 8
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v11

    goto :goto_87

    :cond_5e
    const-string v9, "ia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v12

    goto :goto_87

    :cond_68
    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v1

    goto :goto_87

    :cond_72
    const-string v9, "l"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v13

    goto :goto_87

    :cond_7c
    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v14

    goto :goto_87

    :cond_86
    :goto_86
    const/4 v9, -0x1

    :goto_87
    const-string v10, "v"

    if-eqz v9, :cond_11c

    if-eq v9, v14, :cond_110

    if-eq v9, v13, :cond_104

    if-eq v9, v12, :cond_d4

    if-eq v9, v11, :cond_a4

    :try_start_93
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "Unrecognized persisted bundle type. Type"

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_135

    .line 11
    :cond_a4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 13
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 14
    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v8

    if-eqz v8, :cond_135

    new-instance v8, Lorg/json/JSONArray;

    .line 15
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v9, v6, [J

    move v10, v1

    :goto_c5
    if-ge v10, v6, :cond_d0

    .line 17
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_c5

    .line 18
    :cond_d0
    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_135

    .line 19
    :cond_d4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 21
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 22
    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v8

    if-eqz v8, :cond_135

    new-instance v8, Lorg/json/JSONArray;

    .line 23
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v9, v6, [I

    move v10, v1

    :goto_f5
    if-ge v10, v6, :cond_100

    .line 25
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_f5

    .line 26
    :cond_100
    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_135

    .line 27
    :cond_104
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 28
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_135

    .line 29
    :cond_110
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 30
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_135

    .line 31
    :cond_11c
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_123} :catch_124
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_123} :catch_124

    goto :goto_135

    .line 37
    :catch_124
    :try_start_124
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzht;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "Error reading value from SharedPreferences. Value dropped"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_135
    :goto_135
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_21

    .line 8
    :cond_139
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzd:Landroid/os/Bundle;
    :try_end_13b
    .catch Lorg/json/JSONException; {:try_start_124 .. :try_end_13b} :catch_13c

    goto :goto_14d

    :catch_13c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzht;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 8
    :cond_14d
    :goto_14d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzd:Landroid/os/Bundle;

    if-nez v0, :cond_155

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzc:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzd:Landroid/os/Bundle;

    .line 38
    :cond_155
    :goto_155
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzho;->zzd:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_d

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    goto :goto_12

    .line 46
    :cond_d
    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1
    :goto_12
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzht;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzho;->zzb:Ljava/lang/String;

    .line 5
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_128

    .line 47
    :cond_29
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzho;->zzb:Ljava/lang/String;

    .line 6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_38

    .line 9
    :try_start_4a
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "n"

    .line 10
    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    .line 11
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v12, 0x0

    .line 13
    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v10
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_64} :catch_10d

    const-string v11, "Cannot serialize bundle value to SharedPreferences. Type"

    const-string v12, "d"

    const-string v13, "l"

    const-string v14, "s"

    const-string v15, "v"

    move-object/from16 p1, v0

    const-string v0, "t"

    if-eqz v10, :cond_d9

    .line 24
    :try_start_74
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_84

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_f7

    .line 27
    :cond_84
    instance-of v10, v8, Ljava/lang/Long;

    if-eqz v10, :cond_93

    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    .line 30
    :cond_93
    instance-of v10, v8, [I

    if-eqz v10, :cond_a6

    .line 31
    check-cast v8, [I

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ia"

    .line 32
    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    .line 33
    :cond_a6
    instance-of v10, v8, [J

    if-eqz v10, :cond_b9

    .line 34
    check-cast v8, [J

    invoke-static {v8}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "la"

    .line 35
    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    .line 36
    :cond_b9
    instance-of v10, v8, Ljava/lang/Double;

    if-eqz v10, :cond_c8

    .line 40
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    .line 37
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 39
    invoke-virtual {v0, v11, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 14
    :cond_d9
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_e8

    .line 16
    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    .line 17
    :cond_e8
    instance-of v10, v8, Ljava/lang/Long;

    if-eqz v10, :cond_f0

    .line 18
    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    .line 19
    :cond_f0
    instance-of v10, v8, Ljava/lang/Double;

    if-eqz v10, :cond_fc

    .line 23
    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :goto_f7
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_38

    .line 20
    :cond_fc
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 22
    invoke-virtual {v0, v11, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10b
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_10b} :catch_10d

    goto/16 :goto_38

    :catch_10d
    move-exception v0

    .line 2
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzht;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 43
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 44
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v9, "Cannot serialize bundle value to SharedPreferences"

    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 45
    :cond_121
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    :goto_128
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzho;->zzd:Landroid/os/Bundle;

    return-void
.end method
