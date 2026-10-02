.class public final Lcom/google/android/gms/internal/fido/zzhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzhx;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzhx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzhx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhx;->zza:Lcom/google/android/gms/internal/fido/zzhx;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzhz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzhz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbt;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzbp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzhx;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method

.method public static zzb()Z
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzhx;->zza:Lcom/google/android/gms/internal/fido/zzhx;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzhx;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzbp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzhy;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzhy;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
