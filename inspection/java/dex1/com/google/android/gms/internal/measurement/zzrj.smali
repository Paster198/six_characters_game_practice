.class public final Lcom/google/android/gms/internal/measurement/zzrj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzrj;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrl;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrj;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zzb()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zzf()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zze()Z

    move-result v0

    return v0
.end method

.method public static zzg()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zzf()Z

    move-result v0

    return v0
.end method

.method public static zzh()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zzg()Z

    move-result v0

    return v0
.end method

.method public static zzi()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrj;->zza:Lcom/google/android/gms/internal/measurement/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrk;->zzh()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzrj;->zza()Lcom/google/android/gms/internal/measurement/zzrk;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzrk;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrj;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzrk;

    return-object v0
.end method
