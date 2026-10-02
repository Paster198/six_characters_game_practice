.class public final enum Lcom/google/android/gms/internal/fido/zzdl;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/fido/zzdl;

.field public static final enum zzb:Lcom/google/android/gms/internal/fido/zzdl;

.field public static final enum zzc:Lcom/google/android/gms/internal/fido/zzdl;

.field public static final enum zzd:Lcom/google/android/gms/internal/fido/zzdl;

.field public static final enum zze:Lcom/google/android/gms/internal/fido/zzdl;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/fido/zzdl;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdl;

    const/16 v1, 0xa

    const-string v2, "SMALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdl;->zza:Lcom/google/android/gms/internal/fido/zzdl;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzdl;

    const/4 v2, 0x1

    const/16 v4, 0x14

    .line 2
    const-string v5, "MEDIUM"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/fido/zzdl;->zzb:Lcom/google/android/gms/internal/fido/zzdl;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzdl;

    const/4 v4, 0x2

    const/16 v5, 0x32

    .line 3
    const-string v6, "LARGE"

    invoke-direct {v2, v6, v4, v5}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/fido/zzdl;->zzc:Lcom/google/android/gms/internal/fido/zzdl;

    new-instance v4, Lcom/google/android/gms/internal/fido/zzdl;

    const/4 v5, 0x3

    const/4 v6, -0x1

    .line 4
    const-string v7, "FULL"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/fido/zzdl;->zzd:Lcom/google/android/gms/internal/fido/zzdl;

    new-instance v5, Lcom/google/android/gms/internal/fido/zzdl;

    const-string v6, "NONE"

    const/4 v7, 0x4

    .line 5
    invoke-direct {v5, v6, v7, v3}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/fido/zzdl;->zze:Lcom/google/android/gms/internal/fido/zzdl;

    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/google/android/gms/internal/fido/zzdl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdl;->zzf:[Lcom/google/android/gms/internal/fido/zzdl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/fido/zzdl;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzdl;->zzf:[Lcom/google/android/gms/internal/fido/zzdl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/fido/zzdl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/fido/zzdl;

    return-object v0
.end method
