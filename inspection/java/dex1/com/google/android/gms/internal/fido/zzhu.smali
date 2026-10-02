.class public final Lcom/google/android/gms/internal/fido/zzhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzhu;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzhu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzhu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhu;->zza:Lcom/google/android/gms/internal/fido/zzhu;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzhw;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbt;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzbp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzhu;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method

.method public static zzb()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzhu;->zza:Lcom/google/android/gms/internal/fido/zzhu;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzhu;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzbp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzhv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzhv;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
