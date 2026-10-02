.class public final enum Lcom/google/android/gms/internal/gtm/zzao;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzvb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/gtm/zzao;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzvb;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzn:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzo:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzp:Lcom/google/android/gms/internal/gtm/zzao;

.field public static final enum zzq:Lcom/google/android/gms/internal/gtm/zzao;

.field private static final zzr:Lcom/google/android/gms/internal/gtm/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvc<",
            "Lcom/google/android/gms/internal/gtm/zzao;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/gtm/zzao;


# instance fields
.field private final zzt:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzao;

    .line 1
    const-string v0, "ESCAPE_HTML"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzao;->zza:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzao;

    .line 2
    const-string v0, "ESCAPE_HTML_RCDATA"

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzao;->zzb:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzao;

    .line 3
    const-string v0, "ESCAPE_HTML_ATTRIBUTE"

    const/4 v5, 0x3

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzao;->zzc:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzao;

    .line 4
    const-string v0, "ESCAPE_HTML_ATTRIBUTE_NOSPACE"

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzao;->zzd:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzao;

    .line 5
    const-string v0, "FILTER_HTML_ELEMENT_NAME"

    const/4 v7, 0x5

    invoke-direct {v5, v0, v6, v7}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzao;->zze:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzao;

    .line 6
    const-string v0, "FILTER_HTML_ATTRIBUTES"

    const/4 v8, 0x6

    invoke-direct {v6, v0, v7, v8}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzao;->zzf:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzao;

    .line 7
    const-string v0, "ESCAPE_JS_STRING"

    const/4 v9, 0x7

    invoke-direct {v7, v0, v8, v9}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzao;->zzg:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzao;

    .line 8
    const-string v0, "ESCAPE_JS_VALUE"

    const/16 v10, 0x8

    invoke-direct {v8, v0, v9, v10}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzao;->zzh:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzao;

    .line 9
    const-string v0, "ESCAPE_JS_REGEX"

    const/16 v11, 0x9

    invoke-direct {v9, v0, v10, v11}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzao;->zzi:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzao;

    .line 10
    const-string v0, "ESCAPE_CSS_STRING"

    const/16 v12, 0xa

    invoke-direct {v10, v0, v11, v12}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzao;->zzj:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzao;

    .line 11
    const-string v0, "FILTER_CSS_VALUE"

    const/16 v13, 0xb

    invoke-direct {v11, v0, v12, v13}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzao;->zzk:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzao;

    .line 12
    const-string v0, "ESCAPE_URI"

    const/16 v14, 0xc

    invoke-direct {v12, v0, v13, v14}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzao;->zzl:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzao;

    .line 13
    const-string v0, "NORMALIZE_URI"

    const/16 v15, 0xd

    invoke-direct {v13, v0, v14, v15}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzao;->zzm:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzao;

    .line 14
    const-string v0, "FILTER_NORMALIZE_URI"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v15, v1}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzao;->zzn:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzao;

    .line 15
    const-string v0, "NO_AUTOESCAPE"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v15, v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzao;->zzo:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzao;

    const-string v1, "TEXT"

    move-object/from16 v18, v3

    const/16 v3, 0x11

    .line 16
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzao;->zzp:Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzao;

    const-string v2, "CONVERT_JS_VALUE_TO_EXPRESSION"

    const/16 v3, 0x10

    .line 17
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/gtm/zzao;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzao;->zzq:Lcom/google/android/gms/internal/gtm/zzao;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v17}, [Lcom/google/android/gms/internal/gtm/zzao;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzao;->zzs:[Lcom/google/android/gms/internal/gtm/zzao;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzam;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzao;->zzr:Lcom/google/android/gms/internal/gtm/zzvc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzao;->zzt:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzao;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzao;->zzs:[Lcom/google/android/gms/internal/gtm/zzao;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzao;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzao;
    .registers 1

    packed-switch p0, :pswitch_data_38

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzp:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzq:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzo:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzn:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzm:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzl:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzk:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzj:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzi:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzh:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzg:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_26
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzf:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_29
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zze:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_2c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzd:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_2f
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzc:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_32
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zzb:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_35
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzao;->zza:Lcom/google/android/gms/internal/gtm/zzao;

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzvd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzan;->zza:Lcom/google/android/gms/internal/gtm/zzvd;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzao;->zzt:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzao;->zzt:I

    return v0
.end method
