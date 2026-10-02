.class public final Lcom/google/android/gms/internal/fido/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzdz;

.field private static final zzb:Lcom/google/android/gms/internal/fido/zzdy;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/gms/internal/fido/zzdz;

.field private zzf:Lcom/google/android/gms/internal/fido/zzdy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzds;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzds;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdv;->zza:Lcom/google/android/gms/internal/fido/zzdz;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzdt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzdt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdv;->zzb:Lcom/google/android/gms/internal/fido/zzdy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fido/zzdz;Lcom/google/android/gms/internal/fido/zzdu;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 2
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzd:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzf:Lcom/google/android/gms/internal/fido/zzdy;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdv;->zze:Lcom/google/android/gms/internal/fido/zzdz;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/fido/zzdv;)Lcom/google/android/gms/internal/fido/zzdy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzf:Lcom/google/android/gms/internal/fido/zzdy;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/fido/zzdv;)Lcom/google/android/gms/internal/fido/zzdz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zze:Lcom/google/android/gms/internal/fido/zzdz;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/fido/zzdv;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/fido/zzdv;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/fido/zzdy;)Lcom/google/android/gms/internal/fido/zzdv;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzf:Lcom/google/android/gms/internal/fido/zzdy;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzea;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fido/zzdx;-><init>(Lcom/google/android/gms/internal/fido/zzdv;Lcom/google/android/gms/internal/fido/zzdw;)V

    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/internal/fido/zzdk;)V
    .registers 4

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fido/zzfk;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/fido/zzdv;->zzb:Lcom/google/android/gms/internal/fido/zzdy;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fido/zzfk;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzd:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be repeating"

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_29
    sget-object v1, Lcom/google/android/gms/internal/fido/zzdv;->zza:Lcom/google/android/gms/internal/fido/zzdz;

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fido/zzfk;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzd:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->zzc:Ljava/util/Map;

    .line 10
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
