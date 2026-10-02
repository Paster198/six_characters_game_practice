.class abstract enum Lcom/google/common/math/LongMath$MillerRabinTester;
.super Ljava/lang/Enum;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "MillerRabinTester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/math/LongMath$MillerRabinTester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;


# direct methods
.method private static synthetic $values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 2

    .line 1089
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    sget-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    filled-new-array {v0, v1}, [Lcom/google/common/math/LongMath$MillerRabinTester;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1091
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$1;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1109
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$2;

    const-string v1, "LARGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1089
    invoke-static {}, Lcom/google/common/math/LongMath$MillerRabinTester;->$values()[Lcom/google/common/math/LongMath$MillerRabinTester;

    move-result-object v0

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1089
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V
    .registers 4

    .line 1089
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private powMod(JJJ)J
    .registers 16

    const-wide/16 v0, 0x1

    move-wide v5, p1

    move-wide v3, v0

    :goto_4
    const-wide/16 p1, 0x0

    cmp-long v2, p3, p1

    if-eqz v2, :cond_1e

    and-long v7, p3, v0

    cmp-long p1, v7, p1

    move-object v2, p0

    move-wide v7, p5

    if-eqz p1, :cond_16

    .line 1195
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/math/LongMath$MillerRabinTester;->mulMod(JJJ)J

    move-result-wide v3

    .line 1197
    :cond_16
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v5

    const/4 p1, 0x1

    shr-long/2addr p3, p1

    move-wide p5, v7

    goto :goto_4

    :cond_1e
    move-object v2, p0

    return-wide v3
.end method

.method static test(JJ)Z
    .registers 6

    const-wide v0, 0xb504f333L

    cmp-long v0, p2, v0

    if-gtz v0, :cond_c

    .line 1181
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    :goto_e
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/math/LongMath$MillerRabinTester;->testWitness(JJ)Z

    move-result p0

    return p0
.end method

.method private testWitness(JJ)Z
    .registers 17

    const-wide/16 v7, 0x1

    sub-long v9, p3, v7

    .line 1204
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    shr-long v3, v9, v11

    .line 1206
    rem-long v1, p1, p3

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    const/4 p2, 0x1

    if-nez p1, :cond_14

    return p2

    :cond_14
    move-object v0, p0

    move-wide v5, p3

    .line 1211
    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester;->powMod(JJJ)J

    move-result-wide v1

    cmp-long p1, v1, v7

    if-nez p1, :cond_1f

    return p2

    :cond_1f
    const/4 p1, 0x0

    move v3, p1

    :goto_21
    cmp-long v4, v1, v9

    if-eqz v4, :cond_2e

    add-int/2addr v3, p2

    if-ne v3, v11, :cond_29

    return p1

    .line 1223
    :cond_29
    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v1

    goto :goto_21

    :cond_2e
    return p2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 2

    .line 1089
    const-class v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object p0
.end method

.method public static values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 1

    .line 1089
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-virtual {v0}, [Lcom/google/common/math/LongMath$MillerRabinTester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method


# virtual methods
.method abstract mulMod(JJJ)J
.end method

.method abstract squareMod(JJ)J
.end method
