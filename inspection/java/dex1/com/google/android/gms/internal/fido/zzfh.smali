.class final enum Lcom/google/android/gms/internal/fido/zzfh;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/fido/zzfh;

.field public static final enum zzb:Lcom/google/android/gms/internal/fido/zzfh;

.field public static final enum zzc:Lcom/google/android/gms/internal/fido/zzfh;

.field public static final enum zzd:Lcom/google/android/gms/internal/fido/zzfh;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/fido/zzfh;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzfh;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzfh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfh;->zza:Lcom/google/android/gms/internal/fido/zzfh;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzfh;

    const-string v2, "STRING"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/fido/zzfh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/fido/zzfh;->zzb:Lcom/google/android/gms/internal/fido/zzfh;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzfh;

    const-string v3, "LONG"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/fido/zzfh;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/fido/zzfh;->zzc:Lcom/google/android/gms/internal/fido/zzfh;

    new-instance v3, Lcom/google/android/gms/internal/fido/zzfh;

    const-string v4, "DOUBLE"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/fido/zzfh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/fido/zzfh;->zzd:Lcom/google/android/gms/internal/fido/zzfh;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/fido/zzfh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfh;->zze:[Lcom/google/android/gms/internal/fido/zzfh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/fido/zzfh;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzfh;->zze:[Lcom/google/android/gms/internal/fido/zzfh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/fido/zzfh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/fido/zzfh;

    return-object v0
.end method

.method static bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzfh;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/google/android/gms/internal/fido/zzfh;->zzb:Lcom/google/android/gms/internal/fido/zzfh;

    return-object p0

    .line 2
    :cond_7
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object p0, Lcom/google/android/gms/internal/fido/zzfh;->zza:Lcom/google/android/gms/internal/fido/zzfh;

    return-object p0

    .line 3
    :cond_e
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_15

    sget-object p0, Lcom/google/android/gms/internal/fido/zzfh;->zzc:Lcom/google/android/gms/internal/fido/zzfh;

    return-object p0

    .line 4
    :cond_15
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1c

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/fido/zzfh;->zzd:Lcom/google/android/gms/internal/fido/zzfh;

    return-object p0

    .line 4
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "invalid tag type: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
