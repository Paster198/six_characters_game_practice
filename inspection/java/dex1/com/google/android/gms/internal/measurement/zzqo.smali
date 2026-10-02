.class public final Lcom/google/android/gms/internal/measurement/zzqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzqo;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqq;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqo;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()D
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzb()J
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqp;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqp;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqp;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()Ljava/lang/String;
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqp;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzg()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqp;->zzf()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqo;->zze()Lcom/google/android/gms/internal/measurement/zzqp;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzqp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqo;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqp;

    return-object v0
.end method
