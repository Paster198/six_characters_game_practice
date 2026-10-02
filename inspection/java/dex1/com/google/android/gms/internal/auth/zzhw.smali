.class public final Lcom/google/android/gms/internal/auth/zzhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzdj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzhw;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/auth/zzdj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhw;->zza:Lcom/google/android/gms/internal/auth/zzhw;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzdo;->zza(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzhw;->zzb:Lcom/google/android/gms/internal/auth/zzdj;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/auth/zzhs;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhw;->zza:Lcom/google/android/gms/internal/auth/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhw;->zzc()Lcom/google/android/gms/internal/auth/zzhx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzhx;->zza()Lcom/google/android/gms/internal/auth/zzhs;

    move-result-object v0

    return-object v0
.end method

.method public static zzd()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhw;->zza:Lcom/google/android/gms/internal/auth/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhw;->zzc()Lcom/google/android/gms/internal/auth/zzhx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzhx;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhw;->zza:Lcom/google/android/gms/internal/auth/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhw;->zzc()Lcom/google/android/gms/internal/auth/zzhx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzhx;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzhw;->zzc()Lcom/google/android/gms/internal/auth/zzhx;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/auth/zzhx;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhw;->zzb:Lcom/google/android/gms/internal/auth/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzhx;

    return-object v0
.end method
