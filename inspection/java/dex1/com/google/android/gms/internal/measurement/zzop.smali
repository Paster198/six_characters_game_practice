.class public final enum Lcom/google/android/gms/internal/measurement/zzop;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zzop;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zzop;

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/measurement/zzop;


# instance fields
.field private final zzt:Lcom/google/android/gms/internal/measurement/zzoq;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoq;->zzd:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzop;->zza:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoq;->zzc:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 2
    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v2, v5, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzop;->zzb:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzoq;->zzb:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 3
    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v0, v7, v8, v5, v3}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzop;->zzc:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzoq;->zzb:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 4
    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzop;->zzd:Lcom/google/android/gms/internal/measurement/zzop;

    move-object v7, v5

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v11, "INT32"

    const/4 v12, 0x4

    .line 5
    invoke-direct {v5, v11, v12, v9, v3}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzop;->zze:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzoq;->zzb:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v12, "FIXED64"

    .line 6
    invoke-direct {v9, v12, v6, v11, v4}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzop;->zzf:Lcom/google/android/gms/internal/measurement/zzop;

    move-object v11, v7

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v13, "FIXED32"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v7, v13, v14, v12, v6}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzop;->zzg:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzoq;->zze:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v14, "BOOL"

    const/4 v15, 0x7

    .line 8
    invoke-direct {v12, v14, v15, v13, v3}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/zzop;->zzh:Lcom/google/android/gms/internal/measurement/zzop;

    move-object v13, v9

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzop;

    const/16 v14, 0x8

    sget-object v15, Lcom/google/android/gms/internal/measurement/zzoq;->zzf:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 9
    const-string v4, "STRING"

    invoke-direct {v9, v4, v14, v15, v8}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzop;->zzi:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzop;

    const/16 v14, 0x9

    sget-object v15, Lcom/google/android/gms/internal/measurement/zzoq;->zzi:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 10
    const-string v6, "GROUP"

    invoke-direct {v4, v6, v14, v15, v10}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzop;->zzj:Lcom/google/android/gms/internal/measurement/zzop;

    move-object v10, v4

    move-object v4, v11

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzop;

    const/16 v6, 0xa

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzoq;->zzi:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 11
    const-string v15, "MESSAGE"

    invoke-direct {v11, v15, v6, v14, v8}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/zzop;->zzk:Lcom/google/android/gms/internal/measurement/zzop;

    move-object v6, v12

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzop;

    const/16 v14, 0xb

    sget-object v15, Lcom/google/android/gms/internal/measurement/zzoq;->zzg:Lcom/google/android/gms/internal/measurement/zzoq;

    .line 12
    const-string v3, "BYTES"

    invoke-direct {v12, v3, v14, v15, v8}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/zzop;->zzl:Lcom/google/android/gms/internal/measurement/zzop;

    move-object v8, v6

    move-object v6, v13

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v14, "UINT32"

    const/16 v15, 0xc

    move-object/from16 v19, v0

    const/4 v0, 0x0

    .line 13
    invoke-direct {v13, v14, v15, v3, v0}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/zzop;->zzm:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzoq;->zzh:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v15, "ENUM"

    move-object/from16 v20, v1

    const/16 v1, 0xd

    .line 14
    invoke-direct {v14, v15, v1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/zzop;->zzn:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v15, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v1, "SFIXED32"

    const/16 v3, 0xe

    move-object/from16 v21, v2

    const/4 v2, 0x5

    .line 15
    invoke-direct {v15, v1, v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v15, Lcom/google/android/gms/internal/measurement/zzop;->zzo:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzoq;->zzb:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v2, "SFIXED64"

    const/16 v3, 0xf

    move-object/from16 v17, v4

    const/4 v4, 0x1

    .line 16
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzop;->zzp:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v3, "SINT32"

    const/16 v4, 0x10

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .line 17
    invoke-direct {v1, v3, v4, v2, v0}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzop;->zzq:Lcom/google/android/gms/internal/measurement/zzop;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzoq;->zzb:Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v4, "SINT64"

    move-object/from16 v18, v1

    const/16 v1, 0x11

    .line 18
    invoke-direct {v2, v4, v1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzop;->zzr:Lcom/google/android/gms/internal/measurement/zzop;

    move-object/from16 v4, v17

    move-object/from16 v17, v18

    move-object/from16 v3, v19

    move-object/from16 v1, v20

    move-object/from16 v18, v2

    move-object/from16 v2, v21

    filled-new-array/range {v1 .. v18}, [Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzop;->zzs:[Lcom/google/android/gms/internal/measurement/zzop;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzoq;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzop;->zzt:Lcom/google/android/gms/internal/measurement/zzoq;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzop;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzop;->zzs:[Lcom/google/android/gms/internal/measurement/zzop;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzop;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzop;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzoq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzop;->zzt:Lcom/google/android/gms/internal/measurement/zzoq;

    return-object v0
.end method
