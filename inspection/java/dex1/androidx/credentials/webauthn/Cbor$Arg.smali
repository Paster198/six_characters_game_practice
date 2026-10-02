.class public final Landroidx/credentials/webauthn/Cbor$Arg;
.super Ljava/lang/Object;
.source "Cbor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/webauthn/Cbor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Arg"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/credentials/webauthn/Cbor$Arg;",
        "",
        "arg",
        "",
        "len",
        "",
        "(JI)V",
        "getArg",
        "()J",
        "getLen",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final arg:J

.field private final len:I


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    iput p3, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/credentials/webauthn/Cbor$Arg;JIILjava/lang/Object;)Landroidx/credentials/webauthn/Cbor$Arg;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-wide p1, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget p3, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/webauthn/Cbor$Arg;->copy(JI)Landroidx/credentials/webauthn/Cbor$Arg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    return-wide v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    return v0
.end method

.method public final copy(JI)Landroidx/credentials/webauthn/Cbor$Arg;
    .registers 5

    new-instance v0, Landroidx/credentials/webauthn/Cbor$Arg;

    invoke-direct {v0, p1, p2, p3}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/credentials/webauthn/Cbor$Arg;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/credentials/webauthn/Cbor$Arg;

    iget-wide v3, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    iget-wide v5, p1, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    iget p1, p1, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    if-eq v1, p1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final getArg()J
    .registers 3

    .line 26
    iget-wide v0, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    return-wide v0
.end method

.method public final getLen()I
    .registers 2

    .line 26
    iget v0, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Arg(arg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/credentials/webauthn/Cbor$Arg;->arg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/credentials/webauthn/Cbor$Arg;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
