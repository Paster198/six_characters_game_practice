.class final Lcom/google/android/gms/tagmanager/zzeb;
.super Lcom/google/android/gms/tagmanager/zzbu;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzz:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzeb;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbZ:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzeb;->zzb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbW:Lcom/google/android/gms/internal/gtm/zzb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzeb;->zzc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzeb;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbu;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzak;
    .registers 11
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

    sget-object v0, Lcom/google/android/gms/tagmanager/zzeb;->zzb:Ljava/lang/String;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzeb;->zzc:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_51

    .line 3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v5

    if-eq v0, v5, :cond_51

    if-eqz p1, :cond_51

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v5

    if-eq p1, v5, :cond_51

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zze(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzfu;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zze(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzfu;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzd()Lcom/google/android/gms/tagmanager/zzfu;

    move-result-object v5

    if-eq v0, v5, :cond_51

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzd()Lcom/google/android/gms/tagmanager/zzfu;

    move-result-object v5

    if-eq p1, v5, :cond_51

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfu;->doubleValue()D

    move-result-wide v5

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzfu;->doubleValue()D

    move-result-wide v7

    cmpg-double p1, v5, v7

    if-gtz p1, :cond_51

    move-wide v3, v5

    move-wide v1, v7

    .line 8
    :cond_51
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-double/2addr v1, v3

    mul-double/2addr v5, v1

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
