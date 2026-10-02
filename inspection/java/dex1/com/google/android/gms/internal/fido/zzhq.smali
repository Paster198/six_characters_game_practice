.class final Lcom/google/android/gms/internal/fido/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method static final zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzhj;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 2
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-object p0

    :catchall_8
    move-exception p0

    :try_start_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_c

    .line 3
    :catch_c
    throw p0
.end method

.method private static final zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzhj;
        }
    .end annotation

    .line 1
    const-string v0, "Error in decoding CborValue from bytes"

    .line 0
    const-string v1, "Unidentifiable major type: "

    .line 1
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzd()Lcom/google/android/gms/internal/fido/zzhr;

    move-result-object v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_159

    if-eqz v2, :cond_151

    .line 3
    :try_start_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzhr;->zzb()B

    move-result v4

    const/16 v5, -0x80

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    if-eq v4, v5, :cond_11a

    const/16 v5, -0x60

    if-eq v4, v5, :cond_96

    const/16 v5, -0x40

    if-eq v4, v5, :cond_8e

    const/16 v5, -0x20

    if-eq v4, v5, :cond_84

    if-eqz v4, :cond_6e

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6e

    const/16 v5, 0x40

    if-eq v4, v5, :cond_5b

    const/16 v5, 0x60

    if-ne v4, v5, :cond_45

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    .line 11
    invoke-static {v3, v4, v5, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhn;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 32
    :cond_45
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzhr;->zzc()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzg()[B

    move-result-object v1

    array-length v2, v1

    int-to-long v4, v2

    .line 8
    invoke-static {v3, v4, v5, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhi;

    .line 9
    invoke-static {v1, v8, v2}, Lcom/google/android/gms/internal/fido/zzgx;->zzl([BII)Lcom/google/android/gms/internal/fido/zzgx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhi;-><init>(Lcom/google/android/gms/internal/fido/zzgx;)V

    return-object p0

    .line 5
    :cond_6e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzb()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_7a

    move-wide v4, v1

    goto :goto_7b

    :cond_7a
    not-long v4, v1

    .line 6
    :goto_7b
    invoke-static {v3, v4, v5, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhk;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    return-object p0

    .line 4
    :cond_84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzf()Z

    move-result p0

    new-instance p1, Lcom/google/android/gms/internal/fido/zzhh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fido/zzhh;-><init>(Z)V

    return-object p1

    .line 2
    :cond_8e
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Tags are currently unsupported"

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzc()J

    move-result-wide v1

    cmp-long v4, v1, v6

    if-gtz v4, :cond_112

    .line 19
    invoke-static {v3, v1, v2, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    long-to-int v3, v1

    new-array v4, v3, [Lcom/google/android/gms/internal/fido/zzhl;

    const/4 v5, 0x0

    move v6, v8

    :goto_a6
    int-to-long v9, v6

    cmp-long v7, v9, v1

    if-gez v7, :cond_df

    .line 20
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v7

    if-eqz v5, :cond_d0

    .line 21
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/fido/zzhp;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_b8

    goto :goto_d0

    .line 16
    :cond_b8
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string p1, "Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: %s\nCurrent key: %s"

    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_d0
    :goto_d0
    new-instance v5, Lcom/google/android/gms/internal/fido/zzhl;

    .line 22
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Lcom/google/android/gms/internal/fido/zzhl;-><init>(Lcom/google/android/gms/internal/fido/zzhp;Lcom/google/android/gms/internal/fido/zzhp;)V

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    move-object v5, v7

    goto :goto_a6

    :cond_df
    new-instance p0, Ljava/util/TreeMap;

    .line 23
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    :goto_e4
    if-ge v8, v3, :cond_108

    .line 24
    aget-object p1, v4, v8

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhl;->zza()Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhl;->zza()Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhl;->zzb()Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_e4

    .line 25
    :cond_100
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string p1, "Attempted to add duplicate key to canonical CBOR Map."

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_108
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhm;

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzcj;->zzf(Ljava/util/Map;)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fido/zzhm;-><init>(Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object p1

    .line 17
    :cond_112
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Parser being asked to read a large CBOR map"

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_11a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zza()J

    move-result-wide v1

    cmp-long v4, v1, v6

    if-gtz v4, :cond_140

    .line 14
    invoke-static {v3, v1, v2, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    long-to-int v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/fido/zzhp;

    :goto_128
    int-to-long v4, v8

    cmp-long v4, v4, v1

    if-gez v4, :cond_136

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v4

    aput-object v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_128

    :cond_136
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhg;

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/fido/zzcc;->zzi([Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhg;-><init>(Lcom/google/android/gms/internal/fido/zzcc;)V

    return-object p0

    .line 12
    :cond_140
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Parser being asked to read a large CBOR array"

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_148} :catch_14a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_148} :catch_148

    :catch_148
    move-exception p0

    goto :goto_14b

    :catch_14a
    move-exception p0

    .line 31
    :goto_14b
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhj;

    .line 33
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1
    :cond_151
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Parser being asked to parse an empty input stream"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_159
    move-exception p0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhj;

    .line 2
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    const-string p3, "Integer value "

    packed-switch p0, :pswitch_data_84

    goto/16 :goto_83

    :pswitch_7
    const-wide v0, 0x100000000L

    cmp-long p0, p1, v0

    if-ltz p0, :cond_11

    goto :goto_83

    :cond_11
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-4 additional bytes, but used 8"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_28
    const-wide/32 v0, 0x10000

    cmp-long p0, p1, v0

    if-ltz p0, :cond_30

    goto :goto_83

    :cond_30
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-2 additional bytes, but used 4"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_47
    const-wide/16 v0, 0x100

    cmp-long p0, p1, v0

    if-ltz p0, :cond_4e

    goto :goto_83

    :cond_4e
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-1 additional bytes, but used 2"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_65
    const-wide/16 v0, 0x18

    cmp-long p0, p1, v0

    if-ltz p0, :cond_6c

    goto :goto_83

    .line 4
    :cond_6c
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0 additional bytes, but used 1"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x18
        :pswitch_65
        :pswitch_47
        :pswitch_28
        :pswitch_7
    .end packed-switch
.end method
