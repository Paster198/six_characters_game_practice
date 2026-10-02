.class public final Lcom/google/android/gms/internal/fido/zzeu;
.super Lcom/google/android/gms/internal/fido/zzei;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Ljava/util/Set;

.field private static final zzb:Lcom/google/android/gms/internal/fido/zzea;

.field private static final zzc:Lcom/google/android/gms/internal/fido/zzer;


# instance fields
.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/fido/zzdn;

.field private final zzf:Ljava/util/logging/Level;

.field private final zzg:Ljava/util/Set;

.field private final zzh:Lcom/google/android/gms/internal/fido/zzea;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/fido/zzdk;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/fido/zzdh;->zza:Lcom/google/android/gms/internal/fido/zzdk;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/internal/fido/zzdm;->zza:Lcom/google/android/gms/internal/fido/zzdk;

    aput-object v3, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzeu;->zza:Ljava/util/Set;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzed;->zza(Ljava/util/Set;)Lcom/google/android/gms/internal/fido/zzdv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzd()Lcom/google/android/gms/internal/fido/zzea;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzeu;->zzb:Lcom/google/android/gms/internal/fido/zzea;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzer;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzer;-><init>(Lcom/google/android/gms/internal/fido/zzeq;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzeu;->zzc:Lcom/google/android/gms/internal/fido/zzer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/fido/zzea;Lcom/google/android/gms/internal/fido/zzet;)V
    .registers 11

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fido/zzei;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x17

    if-le p1, p3, :cond_2a

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p8, -0x1

    add-int/2addr p1, p8

    :goto_11
    if-ltz p1, :cond_24

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_23

    const/16 v1, 0x24

    if-ne v0, v1, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    :cond_23
    :goto_23
    move p8, p1

    :cond_24
    add-int/lit8 p8, p8, 0x1

    .line 5
    invoke-virtual {p2, p8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2a
    const-string p1, ""

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzeu;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fido/zzeu;->zze:Lcom/google/android/gms/internal/fido/zzdn;

    iput-object p5, p0, Lcom/google/android/gms/internal/fido/zzeu;->zzf:Ljava/util/logging/Level;

    iput-object p6, p0, Lcom/google/android/gms/internal/fido/zzeu;->zzg:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/internal/fido/zzeu;->zzh:Lcom/google/android/gms/internal/fido/zzea;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/fido/zzea;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzeu;->zzb:Lcom/google/android/gms/internal/fido/zzea;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/fido/zzer;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzeu;->zzc:Lcom/google/android/gms/internal/fido/zzer;

    return-object v0
.end method

.method static bridge synthetic zzd()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzeu;->zza:Ljava/util/Set;

    return-object v0
.end method
