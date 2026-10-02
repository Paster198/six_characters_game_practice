.class final Lcom/google/android/gms/tagmanager/zzbq;
.super Lcom/google/android/gms/tagmanager/zzbu;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Ljava/lang/String;

.field private static final zzd:Ljava/lang/String;

.field private static final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzJ:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzr:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zzb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzci:Lcom/google/android/gms/internal/gtm/zzb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zzc:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbA:Lcom/google/android/gms/internal/gtm/zzb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zzd:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzcu:Lcom/google/android/gms/internal/gtm/zzb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zze:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzbq;->zzb:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbu;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzak;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)",
            "Lcom/google/android/gms/internal/gtm/zzak;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbq;->zzb:Ljava/lang/String;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    if-eqz v0, :cond_ff

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v1

    if-ne v0, v1, :cond_12

    goto/16 :goto_ff

    .line 4
    :cond_12
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbq;->zzd:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzak;

    const-string v2, "text"

    if-nez v1, :cond_28

    move-object v1, v2

    goto :goto_30

    .line 6
    :cond_28
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_30
    sget-object v3, Lcom/google/android/gms/tagmanager/zzbq;->zze:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzak;

    const-string v4, "base16"

    if-nez v3, :cond_3e

    move-object v3, v4

    goto :goto_46

    .line 8
    :cond_3e
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    :goto_46
    sget-object v5, Lcom/google/android/gms/tagmanager/zzbq;->zzc:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    const/4 v5, 0x2

    if-eqz p1, :cond_60

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzg(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v5, 0x3

    .line 12
    :cond_60
    :try_start_60
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_64} :catch_f5

    const-string v2, "base64url"

    const-string v6, "base64"

    if-eqz p1, :cond_6f

    .line 13
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_91

    .line 14
    :cond_6f
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_91

    .line 16
    :cond_7a
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 17
    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    goto :goto_91

    .line 18
    :cond_85
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d6

    or-int/lit8 p1, v5, 0x8

    .line 19
    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_91} :catch_f5

    .line 20
    :goto_91
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzp;->zza([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_b3

    .line 22
    :cond_9c
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 23
    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_b3

    .line 24
    :cond_a7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    or-int/lit8 v0, v5, 0x8

    .line 25
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 26
    :goto_b3
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1

    .line 27
    :cond_b8
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Encode: unknown output format: "

    if-eqz v0, :cond_c9

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ce

    :cond_c9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ce
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1

    .line 19
    :cond_d6
    :try_start_d6
    const-string p1, "Encode: unknown input format: "

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e7

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ed

    :cond_e7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_ed
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d6 .. :try_end_f4} :catch_f5

    return-object p1

    .line 6
    :catch_f5
    const-string p1, "Encode: invalid input:"

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1

    .line 3
    :cond_ff
    :goto_ff
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
