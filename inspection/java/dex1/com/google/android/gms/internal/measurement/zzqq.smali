.class public final Lcom/google/android/gms/internal/measurement/zzqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzki;

.field public static final zzf:Lcom/google/android/gms/internal/measurement/zzki;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkf;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkf;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkf;->zzb()Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkf;->zza()Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object v0

    const-string v1, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqq;->zza:Lcom/google/android/gms/internal/measurement/zzki;

    .line 4
    const-string v1, "measurement.test.cached_long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkf;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqq;->zzb:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.test.double_flag"

    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    .line 5
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkf;->zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqq;->zzc:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.test.int_flag"

    const-wide/16 v4, -0x2

    .line 6
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkf;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqq;->zzd:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.test.long_flag"

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkf;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqq;->zze:Lcom/google/android/gms/internal/measurement/zzki;

    const-string v1, "measurement.test.string_flag"

    const-string v2, "---"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkf;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zzf:Lcom/google/android/gms/internal/measurement/zzki;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()D
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zzc:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()J
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zzb:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zzd:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zze:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zzf:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqq;->zza:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
