.class public final Lcom/google/android/gms/internal/measurement/zzqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzqr;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqt;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqr;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zzb()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzc()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zzf()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zze()Z

    move-result v0

    return v0
.end method

.method public static zzg()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzf()Z

    move-result v0

    return v0
.end method

.method public static zzh()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzg()Z

    move-result v0

    return v0
.end method

.method public static zzi()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzh()Z

    move-result v0

    return v0
.end method

.method public static zzj()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzqs;->zzi()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzqs;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqr;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqs;

    return-object v0
.end method
