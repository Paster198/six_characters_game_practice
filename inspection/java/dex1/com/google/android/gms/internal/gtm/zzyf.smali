.class public final enum Lcom/google/android/gms/internal/gtm/zzyf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/gtm/zzyf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzyf;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzyf;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/gtm/zzyf;


# instance fields
.field private final zzk:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzyf;

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzyf;->zza:Lcom/google/android/gms/internal/gtm/zzyf;

    move v2, v1

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzyf;

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzyf;->zzb:Lcom/google/android/gms/internal/gtm/zzyf;

    move v3, v2

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzyf;

    const/4 v4, 0x0

    .line 3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzyf;->zzc:Lcom/google/android/gms/internal/gtm/zzyf;

    move v4, v3

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzyf;

    const-wide/16 v5, 0x0

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "DOUBLE"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v5}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzyf;->zzd:Lcom/google/android/gms/internal/gtm/zzyf;

    move v5, v4

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzyf;

    const/4 v6, 0x4

    .line 5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "BOOLEAN"

    invoke-direct {v4, v7, v6, v5}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzyf;->zze:Lcom/google/android/gms/internal/gtm/zzyf;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzyf;

    const/4 v6, 0x5

    const-string v7, ""

    .line 6
    const-string v8, "STRING"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzyf;->zzf:Lcom/google/android/gms/internal/gtm/zzyf;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzyf;

    const/4 v7, 0x6

    .line 7
    sget-object v8, Lcom/google/android/gms/internal/gtm/zztd;->zzb:Lcom/google/android/gms/internal/gtm/zztd;

    const-string v9, "BYTE_STRING"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzyf;->zzg:Lcom/google/android/gms/internal/gtm/zzyf;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzyf;

    .line 8
    const-string v8, "ENUM"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzyf;->zzh:Lcom/google/android/gms/internal/gtm/zzyf;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzyf;

    const-string v9, "MESSAGE"

    const/16 v11, 0x8

    .line 9
    invoke-direct {v8, v9, v11, v10}, Lcom/google/android/gms/internal/gtm/zzyf;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzyf;->zzi:Lcom/google/android/gms/internal/gtm/zzyf;

    filled-new-array/range {v0 .. v8}, [Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzyf;->zzj:[Lcom/google/android/gms/internal/gtm/zzyf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzyf;->zzk:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzyf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzyf;->zzj:[Lcom/google/android/gms/internal/gtm/zzyf;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzyf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzyf;

    return-object v0
.end method
