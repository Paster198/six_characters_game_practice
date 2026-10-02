.class public final Lcom/google/firebase/analytics/connector/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@22.4.0"

# interfaces
.implements Lcom/google/firebase/analytics/connector/internal/zza;


# instance fields
.field final zza:Ljava/util/Set;

.field private final zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

.field private final zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private final zzd:Lcom/google/firebase/analytics/connector/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/zzd;

    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/zzd;-><init>(Lcom/google/firebase/analytics/connector/internal/zze;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzd:Lcom/google/firebase/analytics/connector/internal/zzd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    new-instance p1, Ljava/util/HashSet;

    .line 2
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/firebase/analytics/connector/internal/zze;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    return-object v0
.end method

.method public final zzb(Ljava/util/Set;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    new-instance v1, Ljava/util/HashSet;

    .line 2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_24

    goto/16 :goto_9a

    .line 5
    :cond_24
    sget v3, Lcom/google/firebase/analytics/connector/internal/zzc;->zza:I

    if-nez v2, :cond_29

    goto :goto_e

    .line 20
    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_30

    goto :goto_e

    :cond_30
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 7
    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    const/16 v6, 0x5f

    if-nez v5, :cond_41

    if-eq v4, v6, :cond_40

    goto :goto_e

    :cond_40
    move v4, v6

    :cond_41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 8
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    :goto_49
    if-ge v4, v5, :cond_5e

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-eq v7, v6, :cond_58

    .line 10
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v8

    if-nez v8, :cond_58

    goto :goto_e

    .line 11
    :cond_58
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_49

    .line 5
    :cond_5e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 14
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    :goto_76
    if-ge v3, v4, :cond_8a

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    if-eq v5, v6, :cond_84

    .line 16
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 17
    :cond_84
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_76

    .line 18
    :cond_8a
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjy;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_91

    goto :goto_92

    :cond_91
    move-object v2, v3

    .line 19
    :goto_92
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 21
    :cond_9a
    :goto_9a
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final zzc()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
