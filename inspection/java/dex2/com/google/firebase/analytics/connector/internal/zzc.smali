.class public final Lcom/google/firebase/analytics/connector/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@22.4.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/common/collect/ImmutableSet;

.field private static final zzc:Lcom/google/common/collect/ImmutableList;

.field private static final zzd:Lcom/google/common/collect/ImmutableList;

.field private static final zze:Lcom/google/common/collect/ImmutableList;

.field private static final zzf:Lcom/google/common/collect/ImmutableList;

.field private static final zzg:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v0, 0x9

    .line 1
    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_ac"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "campaign_details"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "_ug"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "_iapx"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "_exp_set"

    aput-object v1, v7, v0

    const/4 v0, 0x5

    const-string v1, "_exp_clear"

    aput-object v1, v7, v0

    const/4 v0, 0x6

    const-string v1, "_exp_activate"

    aput-object v1, v7, v0

    const/4 v0, 0x7

    const-string v1, "_exp_timeout"

    aput-object v1, v7, v0

    const/16 v0, 0x8

    const-string v1, "_exp_expire"

    aput-object v1, v7, v0

    const-string v5, "_aa"

    const-string v6, "_ai"

    const-string v1, "_in"

    const-string v2, "_xa"

    const-string v3, "_xu"

    const-string v4, "_aq"

    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb:Lcom/google/common/collect/ImmutableSet;

    const-string v6, "_ui"

    const-string v7, "_cd"

    .line 2
    const-string v1, "_e"

    const-string v2, "_f"

    const-string v3, "_iap"

    const-string v4, "_s"

    const-string v5, "_au"

    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzc:Lcom/google/common/collect/ImmutableList;

    const-string v0, "app"

    const-string v1, "am"

    .line 3
    const-string v2, "auto"

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd:Lcom/google/common/collect/ImmutableList;

    const-string v0, "_r"

    const-string v1, "_dbg"

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zze:Lcom/google/common/collect/ImmutableList;

    .line 5
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzka;->zza:[Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzka;->zzb:[Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzf:Lcom/google/common/collect/ImmutableList;

    const-string v0, "^_ltv_[A-Z]{3}$"

    const-string v1, "^_cc[1-5]{1}$"

    .line 9
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzg:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8

    .line 1
    const-string v0, "_cmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 2
    :cond_a
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    return v1

    :cond_12
    if-nez p2, :cond_15

    return v1

    :cond_15
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/zzc;->zze:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :cond_1c
    if-ge v3, v2, :cond_2d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_1c

    return v1

    .line 5
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v2, 0x18b50

    const/4 v3, 0x2

    if-eq p1, v2, :cond_56

    const v2, 0x18b6e

    if-eq p1, v2, :cond_4c

    const v2, 0x2ff42f

    if-eq p1, v2, :cond_42

    goto :goto_60

    .line 8
    :cond_42
    const-string p1, "fiam"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v3

    goto :goto_61

    :cond_4c
    const-string p1, "fdl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v0

    goto :goto_61

    :cond_56
    const-string p1, "fcm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v1

    goto :goto_61

    :cond_60
    :goto_60
    const/4 p0, -0x1

    :goto_61
    const-string p1, "_cis"

    if-eqz p0, :cond_76

    if-eq p0, v0, :cond_70

    if-eq p0, v3, :cond_6a

    return v1

    :cond_6a
    const-string p0, "fiam_integration"

    .line 6
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_70
    const-string p0, "fdl_integration"

    .line 7
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_76
    const-string p0, "fcm_integration"

    .line 8
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static zzb(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzc:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    if-eqz p1, :cond_24

    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zze:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :cond_13
    if-ge v2, v1, :cond_24

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_13

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-string v0, "_ce1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fcm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_50

    const-string v0, "_ce2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_50

    .line 2
    :cond_15
    const-string v0, "_ln"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v3

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v3

    :cond_37
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzg:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :cond_3e
    if-ge v1, v0, :cond_4f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v1, v1, 0x1

    if-eqz v4, :cond_3e

    return v3

    :cond_4f
    return v2

    .line 2
    :cond_50
    :goto_50
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    const-string p1, "frc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    return v3

    :cond_60
    :goto_60
    return v2
.end method
