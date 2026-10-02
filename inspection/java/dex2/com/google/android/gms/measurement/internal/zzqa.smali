.class public final Lcom/google/android/gms/measurement/internal/zzqa;
.super Lcom/google/android/gms/measurement/internal/zzpg;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    return-void
.end method

.method static zzA(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 1
    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static zzC(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhq;

    if-eqz v1, :cond_9

    new-instance v2, Landroid/os/Bundle;

    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 7
    :cond_42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_24

    .line 9
    :cond_54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_24

    .line 11
    :cond_66
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 13
    :cond_70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method static final zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    .line 4
    :goto_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    if-ltz v1, :cond_36

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzhl;->zzj(ILcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    return-void

    .line 7
    :cond_36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhl;->zze(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    return-void
.end method

.method static final zzE(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method static final zzF(Ljava/util/List;)Landroid/os/Bundle;
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9

    .line 6
    :cond_27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzv()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_9

    .line 8
    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 10
    :cond_43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9

    :cond_51
    return-object v0
.end method

.method static final zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static final zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzc()I

    move-result p1

    if-lez p1, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzC(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method static final zzI(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p2

    :cond_7
    return-object p0
.end method

.method private final zzJ(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .registers 9

    if-nez p3, :cond_4

    goto/16 :goto_8c

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzx()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_36
    move-object v1, v2

    :goto_37
    const-string v3, "name"

    .line 6
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_47
    move-object v1, v2

    :goto_48
    const-string v3, "string_value"

    .line 7
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v3

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    move-object v1, v2

    :goto_5d
    const-string v3, "int_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_70
    const-string v1, "double_value"

    .line 10
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzc()I

    move-result v1

    if-lez v1, :cond_82

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzJ(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 13
    :cond_82
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_8c
    :goto_8c
    return-void
.end method

.method private final zzK(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfl;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzg()Z

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzj()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zze()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    .line 6
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzk()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_d4

    add-int/lit8 v0, p2, 0x1

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzd()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v2

    if-nez v2, :cond_49

    goto/16 :goto_d4

    .line 8
    :cond_49
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter {\n"

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzi()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzj()I

    move-result v3

    packed-switch v3, :pswitch_data_ec

    const-string v3, "IN_LIST"

    goto :goto_72

    .line 22
    :pswitch_61
    const-string v3, "EXACT"

    goto :goto_72

    :pswitch_64
    const-string v3, "PARTIAL"

    goto :goto_72

    :pswitch_67
    const-string v3, "ENDS_WITH"

    goto :goto_72

    :pswitch_6a
    const-string v3, "BEGINS_WITH"

    goto :goto_72

    :pswitch_6d
    const-string v3, "REGEXP"

    goto :goto_72

    :pswitch_70
    const-string v3, "UNKNOWN_MATCH_TYPE"

    .line 9
    :goto_72
    const-string v4, "match_type"

    .line 10
    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzh()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expression"

    .line 11
    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzg()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzf()Z

    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_99
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zza()I

    move-result v3

    if-lez v3, :cond_ce

    add-int/lit8 v3, p2, 0x2

    .line 14
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze()Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    .line 17
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 20
    :cond_cb
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_ce
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_d4
    :goto_d4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v0

    if-eqz v0, :cond_e5

    add-int/lit8 v0, p2, 0x1

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object p3

    const-string v2, "number_filter"

    invoke-static {p1, v0, v2, p3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzR(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfp;)V

    .line 24
    :cond_e5
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method

.method private static final zzL(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 1
    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private static final zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_10

    .line 2
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_10
    :goto_10
    return-void
.end method

.method private static final zzN(ZZZ)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    const-string p0, "Dynamic "

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_13

    const-string p0, "Sequence "

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    const-string p0, "Session-Scoped "

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final zzO(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 2
    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3
    aget-object v3, v2, v0

    .line 4
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    .line 5
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 6
    invoke-static {p0, v2, v3, p3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method private static final zzP(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V
    .registers 13

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()I

    move-result p2

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p2, :cond_47

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_3f

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3f
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2c

    .line 10
    :cond_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzd()I

    move-result p2

    if-eqz p2, :cond_79

    .line 12
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_71

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_71
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_5e

    .line 17
    :cond_76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zza()I

    move-result p2

    const/4 v0, 0x0

    const-string v4, "}\n"

    if-eqz p2, :cond_d6

    .line 19
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzh()Ljava/util/List;

    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v3

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhk;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_a6

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_a6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zzh()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b6

    :cond_b5
    move-object v5, v0

    :goto_b6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zzg()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zzb()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_ce

    :cond_cd
    move-object v5, v0

    :goto_ce
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_93

    .line 26
    :cond_d3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_d6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result p2

    if-eqz p2, :cond_147

    .line 28
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzic;->zzj()Ljava/util/List;

    move-result-object p2

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v3

    :goto_ed
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_144

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzie;

    add-int/lit8 v5, p3, 0x1

    if-eqz p3, :cond_100

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzie;->zzi()Z

    move-result p3

    if-eqz p3, :cond_10f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzie;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_110

    :cond_10f
    move-object p3, v0

    :goto_110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzie;->zzf()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v3

    :goto_121
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    if-eqz v1, :cond_138

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_138
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v8

    goto :goto_121

    :cond_13d
    const-string p3, "]"

    .line 36
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v5

    goto :goto_ed

    .line 37
    :cond_144
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_147
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 39
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final zzR(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfp;)V
    .registers 5

    if-nez p3, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzg()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzm()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p2, v0, :cond_27

    const-string p2, "BETWEEN"

    goto :goto_32

    .line 10
    :cond_27
    const-string p2, "EQUAL"

    goto :goto_32

    :cond_2a
    const-string p2, "GREATER_THAN"

    goto :goto_32

    :cond_2d
    const-string p2, "LESS_THAN"

    goto :goto_32

    :cond_30
    const-string p2, "UNKNOWN_COMPARISON_TYPE"

    .line 3
    :goto_32
    const-string v0, "comparison_type"

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzi()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzf()Z

    move-result p2

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzh()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzc()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_value"

    .line 6
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_59
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzk()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zze()Ljava/lang/String;

    move-result-object p2

    const-string v0, "min_comparison_value"

    .line 7
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_68
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzj()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfp;->zzd()Ljava/lang/String;

    move-result-object p2

    const-string p3, "max_comparison_value"

    .line 8
    invoke-static {p0, p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_77
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzhw;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaE(I)Lcom/google/android/gms/internal/measurement/zzio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method static zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlp;->zza()Lcom/google/android/gms/internal/measurement/zzlp;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzaV([BLcom/google/android/gms/internal/measurement/zzlp;)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzng;->zzaU([B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object p0

    return-object p0
.end method

.method static zzu(Ljava/util/BitSet;)Ljava/util/List;
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x40

    div-int/2addr v0, v2

    .line 2
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_38

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_15
    if-ge v7, v2, :cond_2e

    mul-int/lit8 v8, v4, 0x40

    .line 3
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    add-int/2addr v8, v7

    if-lt v8, v9, :cond_21

    goto :goto_2e

    .line 4
    :cond_21
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 5
    :cond_2e
    :goto_2e
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_38
    return-object v1
.end method

.method static zzy(Ljava/util/List;I)Z
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    if-ge p1, v0, :cond_23

    div-int/lit8 v0, p1, 0x40

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final zzB([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    throw p1
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzd(Ljava/lang/String;)J
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzf([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzf([B)J
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzqf;->zzI()Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_22

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 7
    :cond_22
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzr([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzh(Ljava/util/Map;Z)Landroid/os/Bundle;
    .registers 12

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 5
    :cond_24
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_32

    .line 6
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    .line 7
    :cond_32
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_40

    .line 8
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_d

    .line 9
    :cond_40
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_71

    if-eqz p2, :cond_d

    .line 10
    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_53
    if-ge v7, v5, :cond_65

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Ljava/util/Map;

    .line 14
    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzh(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 15
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_65
    new-array v3, v6, [Landroid/os/Parcelable;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_d

    .line 17
    :cond_71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_79
    return-object v0
.end method

.method final zzi([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_16} :catch_1a
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    move-object v0, p1

    goto :goto_29

    :catchall_18
    move-exception p1

    goto :goto_2d

    .line 7
    :catch_1a
    :try_start_1a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_18

    .line 7
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method final zzj(Lcom/google/android/gms/internal/measurement/zzaa;)Lcom/google/android/gms/measurement/internal/zzbh;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzf()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzh(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    const-string v1, "_o"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 5
    :cond_1c
    const-string v1, "app"

    :goto_1e
    move-object v5, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zze()Ljava/lang/String;

    move-result-object v1

    :cond_2d
    move-object v3, v1

    .line 7
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbh;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zza()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    return-object v2
.end method

.method final zzl(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhw;Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzov;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 1
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    if-eqz v3, :cond_357

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzat:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 7
    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    .line 8
    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    :goto_35
    if-ge v9, v7, :cond_56

    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate element: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzy()Lcom/google/android/gms/measurement/internal/zzpi;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/net/Uri$Builder;

    .line 11
    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzgi;->zzam:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 13
    invoke-virtual {v11, v1, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "."

    if-nez v11, :cond_a6

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzgi;->zzan:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 18
    invoke-virtual {v11, v1, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual {v10, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_b3

    .line 15
    :cond_a6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzan:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 16
    invoke-virtual {v9, v1, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    :goto_b3
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzao:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 21
    invoke-virtual {v7, v1, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaJ()Ljava/lang/String;

    move-result-object v7

    const-string v9, "gmp_app_id"

    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    const-wide/32 v13, 0x1d0da

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 25
    const-string v9, "gmp_version"

    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaG()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzaY:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 28
    invoke-virtual {v9, v1, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v9

    .line 30
    invoke-virtual {v9, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzA(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f8

    const-string v7, ""

    :cond_f8
    const-string v9, "app_instance_id"

    .line 31
    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaL()Ljava/lang/String;

    move-result-object v7

    const-string v9, "rdid"

    .line 33
    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v7

    const-string v9, "bundle_id"

    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzjy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v14, v13, :cond_11f

    move-object v7, v9

    :cond_11f
    const-string v9, "app_event_name"

    .line 38
    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "app_version"

    .line 40
    invoke-static {v10, v9, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaK()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 43
    invoke-virtual {v9, v1, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v9

    if-eqz v9, :cond_15a

    .line 44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v6

    .line 45
    invoke-virtual {v6, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzE(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 46
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15a

    .line 47
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_15a

    .line 48
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_15a
    const-string v6, "os_version"

    .line 49
    invoke-static {v10, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 50
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timestamp"

    .line 51
    invoke-static {v10, v7, v6, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaP()Z

    move-result v6

    const-string v7, "1"

    if-eqz v6, :cond_179

    const-string v6, "lat"

    .line 53
    invoke-static {v10, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 54
    :cond_179
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zza()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "privacy_sandbox_version"

    .line 55
    invoke-static {v10, v8, v6, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v6, "trigger_uri_source"

    .line 56
    invoke-static {v10, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 57
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v8, "trigger_uri_timestamp"

    .line 58
    invoke-static {v10, v8, v6, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v6, "request_uuid"

    move-object/from16 v8, p4

    .line 59
    invoke-static {v10, v6, v8, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v6

    new-instance v8, Landroid/os/Bundle;

    .line 61
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a8
    :goto_1a8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1fc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 63
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v11

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v12

    if-eqz v12, :cond_1ca

    .line 65
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 66
    :cond_1ca
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzv()Z

    move-result v12

    if-eqz v12, :cond_1dc

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb()F

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 68
    :cond_1dc
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result v12

    if-eqz v12, :cond_1ea

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 70
    :cond_1ea
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v12

    if-eqz v12, :cond_1a8

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 72
    :cond_1fc
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzas:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 73
    invoke-virtual {v6, v1, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {v10, v6, v8, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzO(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaN()Ljava/util/List;

    move-result-object v6

    new-instance v8, Landroid/os/Bundle;

    .line 76
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 77
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21c
    :goto_21c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_270

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzio;

    .line 78
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v12

    .line 79
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzr()Z

    move-result v13

    if-eqz v13, :cond_23e

    .line 80
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zza()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21c

    .line 81
    :cond_23e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzs()Z

    move-result v13

    if-eqz v13, :cond_250

    .line 82
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzb()F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21c

    .line 83
    :cond_250
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzv()Z

    move-result v13

    if-eqz v13, :cond_25e

    .line 84
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21c

    .line 85
    :cond_25e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzt()Z

    move-result v13

    if-eqz v13, :cond_21c

    .line 86
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21c

    .line 87
    :cond_270
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzar:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 88
    invoke-virtual {v2, v1, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v10, v1, v8, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzO(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaO()Z

    move-result v1

    if-eq v14, v1, :cond_289

    const-string v7, "0"

    :cond_289
    const-string v1, "dma"

    .line 91
    invoke-static {v10, v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a1

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dma_cps"

    .line 94
    invoke-static {v10, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 95
    :cond_2a1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaQ()Z

    move-result v1

    if-eqz v1, :cond_349

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzg()Lcom/google/android/gms/internal/measurement/zzhc;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2be

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzh()Ljava/lang/String;

    move-result-object v2

    const-string v6, "dl_gclid"

    .line 99
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 100
    :cond_2be
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d1

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v6, "dl_gbraid"

    .line 102
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 103
    :cond_2d1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e4

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzf()Ljava/lang/String;

    move-result-object v2

    const-string v6, "dl_gs"

    .line 105
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 106
    :cond_2e4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zza()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_2fb

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zza()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v6, "dl_ss_ts"

    .line 108
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 109
    :cond_2fb
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30e

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzk()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mr_gclid"

    .line 111
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 112
    :cond_30e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_321

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzj()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mr_gbraid"

    .line 114
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 115
    :cond_321
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_334

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzi()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mr_gs"

    .line 117
    invoke-static {v10, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 118
    :cond_334
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzb()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_349

    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mr_click_ts"

    .line 120
    invoke-static {v10, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzM(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 121
    :cond_349
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzov;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/google/android/gms/measurement/internal/zzov;-><init>(Ljava/lang/String;JI)V

    return-object v1

    :cond_357
    const/4 v1, 0x0

    return-object v1
.end method

.method final zzm(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzhm;
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zze()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzl(J)Lcom/google/android/gms/internal/measurement/zzhl;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbe;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;)V

    .line 3
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zza()Ljava/lang/String;

    move-result-object v3

    .line 3
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzw(Lcom/google/android/gms/internal/measurement/zzhp;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhl;->zze(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    goto :goto_10

    :cond_32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "_o"

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_55

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 13
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 16
    :cond_55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhm;

    return-object p1
.end method

.method final zzq(Lcom/google/android/gms/internal/measurement/zzhv;)Ljava/lang/String;
    .registers 15

    if-nez p1, :cond_5

    .line 1
    const-string p1, ""

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzq()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "upload_subdomain"

    .line 3
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzp()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sgtm_join_id"

    .line 4
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzh()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhx;

    if-eqz v1, :cond_36

    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v3, "bundle {\n"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbQ()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzf()I

    move-result v3

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "protocol_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrd;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v5

    .line 11
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaL:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 12
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbT()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzU()Ljava/lang/String;

    move-result-object v4

    const-string v5, "session_stitching_token"

    .line 13
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzS()Ljava/lang/String;

    move-result-object v4

    const-string v5, "platform"

    .line 14
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbL()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzp()J

    move-result-wide v4

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "gmp_version"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_a0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbZ()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzv()J

    move-result-wide v4

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "uploading_gmp_version"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_b3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbJ()Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzn()J

    move-result-wide v4

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dynamite_version"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_c6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbC()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzk()J

    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "config_version"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_d9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzP()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gmp_app_id"

    .line 19
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzE()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admob_app_id"

    .line 20
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    .line 21
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    .line 22
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzby()Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzb()I

    move-result v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_major"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzO()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firebase_instance_id"

    .line 24
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbH()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzm()J

    move-result-wide v4

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dev_cert_hash"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_12c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzH()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_store"

    .line 26
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbY()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzu()J

    move-result-wide v4

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "upload_timestamp_millis"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbV()Z

    move-result v4

    if-eqz v4, :cond_15b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzs()J

    move-result-wide v4

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "start_timestamp_millis"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_15b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbK()Z

    move-result v4

    if-eqz v4, :cond_16e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzo()J

    move-result-wide v4

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "end_timestamp_millis"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_16e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbP()Z

    move-result v4

    if-eqz v4, :cond_181

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzr()J

    move-result-wide v4

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_start_timestamp_millis"

    .line 31
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_181
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbO()Z

    move-result v4

    if-eqz v4, :cond_194

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzq()J

    move-result-wide v4

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_end_timestamp_millis"

    .line 33
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_194
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_instance_id"

    .line 34
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzT()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resettable_device_id"

    .line 35
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzN()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ds_id"

    .line 36
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbN()Z

    move-result v4

    if-eqz v4, :cond_1c2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbv()Z

    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "limited_ad_tracking"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1c2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzR()Ljava/lang/String;

    move-result-object v4

    const-string v5, "os_version"

    .line 38
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzM()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_model"

    .line 39
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzV()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_default_language"

    .line 40
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbX()Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzh()I

    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "time_zone_offset_minutes"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1f0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbB()Z

    move-result v4

    if-eqz v4, :cond_203

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzc()I

    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bundle_sequential_index"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_203
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbG()Z

    move-result v4

    if-eqz v4, :cond_216

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzd()I

    move-result v4

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "delivery_index"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_216
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbS()Z

    move-result v4

    if-eqz v4, :cond_229

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbw()Z

    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "service_upload"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzQ()Ljava/lang/String;

    move-result-object v4

    const-string v5, "health_monitor"

    .line 45
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbR()Z

    move-result v4

    if-eqz v4, :cond_245

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzg()I

    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "retry_counter"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_245
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbE()Z

    move-result v4

    if-eqz v4, :cond_254

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzK()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_signals"

    .line 47
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_254
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbM()Z

    move-result v4

    if-eqz v4, :cond_267

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbu()Z

    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "is_dma_region"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_267
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbF()Z

    move-result v4

    if-eqz v4, :cond_276

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "core_platform_services"

    .line 49
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_276
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbD()Z

    move-result v4

    if-eqz v4, :cond_285

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzJ()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_diagnostics"

    .line 50
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_285
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbW()Z

    move-result v4

    if-eqz v4, :cond_298

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzt()J

    move-result-wide v4

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "target_os_version"

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_298
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 54
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    const-string v5, "}\n"

    const/4 v6, 0x2

    if-eqz v4, :cond_330

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zza()I

    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "ad_services_version"

    invoke-static {v0, v2, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbz()Z

    move-result v4

    if-eqz v4, :cond_330

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzx()Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v4

    if-eqz v4, :cond_330

    .line 57
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v7, "attribution_eligibility_status {\n"

    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzn()Z

    move-result v7

    .line 59
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "eligible"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzp()Z

    move-result v7

    .line 60
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "no_access_adservices_attribution_permission"

    .line 61
    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzq()Z

    move-result v7

    .line 62
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "pre_r"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzr()Z

    move-result v7

    .line 63
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "r_extensions_too_old"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzm()Z

    move-result v7

    .line 64
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "adservices_extension_too_old"

    .line 65
    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzk()Z

    move-result v7

    .line 66
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "ad_storage_not_allowed"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhg;->zzo()Z

    move-result v4

    .line 67
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "measurement_manager_disabled"

    .line 68
    invoke-static {v0, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_330
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbx()Z

    move-result v4

    if-eqz v4, :cond_3c8

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzw()Lcom/google/android/gms/internal/measurement/zzhc;

    move-result-object v4

    .line 72
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v7, "ad_campaign_info {\n"

    .line 73
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzC()Z

    move-result v7

    if-eqz v7, :cond_351

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzh()Ljava/lang/String;

    move-result-object v7

    const-string v8, "deep_link_gclid"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_351
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzB()Z

    move-result v7

    if-eqz v7, :cond_360

    .line 77
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzg()Ljava/lang/String;

    move-result-object v7

    const-string v8, "deep_link_gbraid"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_360
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzA()Z

    move-result v7

    if-eqz v7, :cond_36f

    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzf()Ljava/lang/String;

    move-result-object v7

    const-string v8, "deep_link_gad_source"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_36f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzD()Z

    move-result v7

    if-eqz v7, :cond_382

    .line 81
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zza()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "deep_link_session_millis"

    .line 82
    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_382
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzH()Z

    move-result v7

    if-eqz v7, :cond_391

    .line 84
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzk()Ljava/lang/String;

    move-result-object v7

    const-string v8, "market_referrer_gclid"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    :cond_391
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzG()Z

    move-result v7

    if-eqz v7, :cond_3a0

    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzj()Ljava/lang/String;

    move-result-object v7

    const-string v8, "market_referrer_gbraid"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_3a0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzF()Z

    move-result v7

    if-eqz v7, :cond_3af

    .line 88
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzi()Ljava/lang/String;

    move-result-object v7

    const-string v8, "market_referrer_gad_source"

    .line 89
    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_3af
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzE()Z

    move-result v7

    if-eqz v7, :cond_3c2

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhc;->zzb()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "market_referrer_click_millis"

    .line 92
    invoke-static {v0, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_3c2
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbA()Z

    move-result v4

    if-eqz v4, :cond_3db

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzj()J

    move-result-wide v7

    .line 95
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "batching_timestamp_millis"

    invoke-static {v0, v2, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3db
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbU()Z

    move-result v4

    if-eqz v4, :cond_446

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzC()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v4

    .line 97
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v7, "sgtm_diagnostics {\n"

    .line 98
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzim;->zzg()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v7, v2, :cond_407

    if-eq v7, v6, :cond_404

    if-eq v7, v9, :cond_401

    if-eq v7, v8, :cond_3fe

    const-string v7, "SDK_SERVICE_UPLOAD"

    goto :goto_409

    .line 119
    :cond_3fe
    const-string v7, "PACKAGE_SERVICE_UPLOAD"

    goto :goto_409

    :cond_401
    const-string v7, "SDK_CLIENT_UPLOAD"

    goto :goto_409

    :cond_404
    const-string v7, "GA_UPLOAD"

    goto :goto_409

    :cond_407
    const-string v7, "UPLOAD_TYPE_UNKNOWN"

    .line 99
    :goto_409
    const-string v10, "upload_type"

    invoke-static {v0, v6, v10, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzim;->zzb()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzih;->name()Ljava/lang/String;

    move-result-object v7

    const-string v10, "client_upload_eligibility"

    .line 101
    invoke-static {v0, v6, v10, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzim;->zzf()I

    move-result v4

    if-eq v4, v2, :cond_439

    if-eq v4, v6, :cond_436

    if-eq v4, v9, :cond_433

    if-eq v4, v8, :cond_430

    const/4 v7, 0x5

    if-eq v4, v7, :cond_42d

    const-string v4, "NON_PLAY_MISSING_SGTM_SERVER_URL"

    goto :goto_43b

    .line 119
    :cond_42d
    const-string v4, "MISSING_SGTM_PROXY_INFO"

    goto :goto_43b

    :cond_430
    const-string v4, "MISSING_SGTM_SETTINGS"

    goto :goto_43b

    :cond_433
    const-string v4, "NOT_IN_ROLLOUT"

    goto :goto_43b

    :cond_436
    const-string v4, "SERVICE_UPLOAD_ELIGIBLE"

    goto :goto_43b

    :cond_439
    const-string v4, "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN"

    .line 102
    :goto_43b
    const-string v7, "service_upload_eligibility"

    .line 103
    invoke-static {v0, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_446
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzY()Ljava/util/List;

    move-result-object v4

    const-string v7, "name"

    if-nez v4, :cond_450

    goto/16 :goto_4c7

    .line 106
    :cond_450
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_454
    :goto_454
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzio;

    if-eqz v8, :cond_454

    .line 107
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v9, "user_property {\n"

    .line 108
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzu()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_47a

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzd()J

    move-result-wide v11

    .line 109
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_47b

    :cond_47a
    move-object v9, v10

    :goto_47b
    const-string v11, "set_timestamp_millis"

    .line 110
    invoke-static {v0, v6, v11, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-static {v0, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v9

    const-string v11, "string_value"

    .line 114
    invoke-static {v0, v6, v11, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzt()Z

    move-result v9

    if-eqz v9, :cond_4a7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v11

    .line 115
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_4a8

    :cond_4a7
    move-object v9, v10

    :goto_4a8
    const-string v11, "int_value"

    invoke-static {v0, v6, v11, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzr()Z

    move-result v9

    if-eqz v9, :cond_4bb

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zza()D

    move-result-wide v8

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :cond_4bb
    const-string v8, "double_value"

    .line 117
    invoke-static {v0, v6, v8, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_454

    .line 105
    :cond_4c7
    :goto_4c7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzW()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4ce

    goto :goto_52d

    .line 120
    :cond_4ce
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d2
    :goto_4d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhi;

    if-eqz v8, :cond_4d2

    .line 121
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v9, "audience_membership {\n"

    .line 122
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzk()Z

    move-result v9

    if-eqz v9, :cond_4fb

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()I

    move-result v9

    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "audience_id"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4fb
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzm()Z

    move-result v9

    if-eqz v9, :cond_50e

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzj()Z

    move-result v9

    .line 124
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "new_audience"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_50e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v9

    const-string v10, "current_data"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzP(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzn()Z

    move-result v9

    if-eqz v9, :cond_526

    .line 126
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zze()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v8

    const-string v9, "previous_data"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzP(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 127
    :cond_526
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 128
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d2

    .line 105
    :cond_52d
    :goto_52d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzX()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_535

    goto/16 :goto_5ab

    .line 129
    :cond_535
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_539
    :goto_539
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhm;

    if-eqz v4, :cond_539

    .line 130
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string v8, "event {\n"

    .line 131
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzu()Z

    move-result v8

    if-eqz v8, :cond_571

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v8

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "timestamp_millis"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_571
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzt()Z

    move-result v8

    if-eqz v8, :cond_584

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzc()J

    move-result-wide v8

    .line 135
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "previous_timestamp_millis"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_584
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzs()Z

    move-result v8

    if-eqz v8, :cond_597

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zza()I

    move-result v8

    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_597
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzb()I

    move-result v8

    if-eqz v8, :cond_5a4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v4

    .line 138
    invoke-direct {p0, v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzJ(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 139
    :cond_5a4
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 140
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_539

    .line 141
    :cond_5ab
    :goto_5ab
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    .line 142
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_36

    .line 119
    :cond_5b3
    const-string p1, "} // End-of-batch\n"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzr(Lcom/google/android/gms/internal/measurement/zzfj;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 1
    const-string p1, "null"

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzm()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzn()Z

    move-result v4

    .line 7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzN(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "filter_type"

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzo()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_61

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzf()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    const-string v3, "event_count_filter"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzR(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfp;)V

    .line 11
    :cond_61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zza()I

    move-result v1

    if-lez v1, :cond_85

    const-string v1, "  filters {\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzh()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfl;

    const/4 v3, 0x2

    .line 14
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzK(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfl;)V

    goto :goto_74

    .line 15
    :cond_85
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzL(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzs(Lcom/google/android/gms/internal/measurement/zzfr;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 1
    const-string p1, "null"

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zze()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi()Z

    move-result v4

    .line 7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzN(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "filter_type"

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzQ(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_51
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzK(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfl;)V

    const-string p1, "}\n"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzt(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 6
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 11
    :cond_4f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 12
    :cond_6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_76
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_8f

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8c

    goto :goto_8f

    :cond_8c
    add-int/lit8 p2, p1, -0x1

    goto :goto_76

    :cond_8f
    :goto_8f
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zzv(Landroid/os/Bundle;Z)Ljava/util/Map;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-nez v4, :cond_30

    instance-of v5, v3, Ljava/util/ArrayList;

    if-nez v5, :cond_30

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2a

    goto :goto_30

    :cond_2a
    if-eqz v3, :cond_d

    .line 17
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_30
    :goto_30
    if-eqz p2, :cond_d

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    if-eqz v4, :cond_52

    .line 6
    check-cast v3, [Landroid/os/Parcelable;

    array-length v4, v3

    move v7, v6

    :goto_3e
    if-ge v7, v4, :cond_80

    aget-object v8, v3, v7

    .line 7
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_4f

    .line 8
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzv(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 9
    :cond_52
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_73

    .line 10
    check-cast v3, Ljava/util/ArrayList;

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v7, v6

    :goto_5d
    if-ge v7, v4, :cond_80

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 12
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_70

    .line 13
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzv(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 14
    :cond_73
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_80

    .line 15
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzv(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_80
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_84
    return-object v0
.end method

.method final zzw(Lcom/google/android/gms/internal/measurement/zzhp;Ljava/lang/Object;)V
    .registers 13

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzg()Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzd()Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzf()Lcom/google/android/gms/internal/measurement/zzhp;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    return-void

    .line 5
    :cond_19
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_27

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    return-void

    .line 7
    :cond_27
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_35

    .line 8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzh(D)Lcom/google/android/gms/internal/measurement/zzhp;

    return-void

    .line 9
    :cond_35
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_ab

    .line 12
    check-cast p2, [Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    array-length v1, p2

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v1, :cond_a7

    aget-object v3, p2, v2

    if-nez v3, :cond_49

    goto :goto_a4

    .line 15
    :cond_49
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_55
    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 18
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 19
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_7a

    .line 20
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    goto :goto_91

    .line 21
    :cond_7a
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_84

    .line 22
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    goto :goto_91

    .line 23
    :cond_84
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_55

    .line 24
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhp;->zzh(D)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 25
    :goto_91
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzhp;->zzc(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhp;

    goto :goto_55

    .line 26
    :cond_95
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhp;->zza()I

    move-result v3

    if-lez v3, :cond_a4

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a4
    :goto_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 12
    :cond_a7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhp;

    return-void

    :cond_ab
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzx(Lcom/google/android/gms/internal/measurement/zzin;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzin;->zzc()Lcom/google/android/gms/internal/measurement/zzin;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzin;->zzb()Lcom/google/android/gms/internal/measurement/zzin;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzin;->zza()Lcom/google/android/gms/internal/measurement/zzin;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzin;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzin;

    return-void

    .line 5
    :cond_16
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_24

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzin;->zze(J)Lcom/google/android/gms/internal/measurement/zzin;

    return-void

    .line 7
    :cond_24
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_32

    .line 10
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzin;->zzd(D)Lcom/google/android/gms/internal/measurement/zzin;

    return-void

    :cond_32
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzz(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_20

    cmp-long v0, p3, v0

    if-lez v0, :cond_20

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x1

    return p1
.end method
