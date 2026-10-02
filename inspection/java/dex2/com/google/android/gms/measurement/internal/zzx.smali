.class public final Lcom/google/android/gms/measurement/internal/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 3
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p1, 0x0

    goto :goto_4c

    :cond_17
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-ne v1, v2, :cond_20

    const-string p1, "auto"

    :cond_20
    new-instance v1, Landroid/net/Uri$Builder;

    .line 5
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_30

    .line 9
    :cond_44
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_4c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6c

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzht;->zzr:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzht;->zzs:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 13
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    :cond_6c
    return-void
.end method

.method final zzb()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzd()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 3
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzx;->zze()Z

    move-result v1

    const-string v2, "_cc"

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzr:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    .line 6
    const-string v4, "(not set)"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    .line 7
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_cis"

    const-string v4, "intent"

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_cmpx"

    .line 11
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_d2

    .line 12
    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzr:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Cache still valid but referrer not found"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_c9

    .line 15
    :cond_6a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzht;->zzs:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    .line 16
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v8, Landroid/os/Bundle;

    .line 17
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Landroid/util/Pair;

    .line 18
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_92
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_a6
    const-wide/16 v10, -0x1

    add-long/2addr v4, v10

    mul-long/2addr v4, v6

    .line 21
    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_b8

    const-string v1, "app"

    goto :goto_bc

    .line 23
    :cond_b8
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 24
    :goto_bc
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v2

    iget-object v4, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "_cmp"

    .line 25
    invoke-virtual {v2, v1, v5, v4}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    :goto_c9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzr:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 27
    :goto_d2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzs:Lcom/google/android/gms/measurement/internal/zzhp;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    return-void
.end method

.method final zzc()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzd()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzx;->zze()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzr:Lcom/google/android/gms/measurement/internal/zzhr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method final zzd()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzs:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method final zze()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzht;->zzs:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    const/4 v4, 0x0

    .line 4
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzai:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    const/4 v0, 0x1

    return v0

    :cond_2e
    return v1
.end method
