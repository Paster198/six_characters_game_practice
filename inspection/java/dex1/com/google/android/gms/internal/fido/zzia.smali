.class public final Lcom/google/android/gms/internal/fido/zzia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzia;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzia;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzia;->zza:Lcom/google/android/gms/internal/fido/zzia;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzic;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbt;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzbp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzia;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method

.method public static zzc()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzia;->zza:Lcom/google/android/gms/internal/fido/zzia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzia;->zzb()Lcom/google/android/gms/internal/fido/zzib;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzib;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzia;->zza:Lcom/google/android/gms/internal/fido/zzia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzia;->zzb()Lcom/google/android/gms/internal/fido/zzib;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzib;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/fido/zzib;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzia;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzbp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzib;

    return-object v0
.end method
