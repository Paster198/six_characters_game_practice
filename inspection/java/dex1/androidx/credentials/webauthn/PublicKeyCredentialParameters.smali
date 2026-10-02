.class public final Landroidx/credentials/webauthn/PublicKeyCredentialParameters;
.super Ljava/lang/Object;
.source "FidoDataTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;",
        "",
        "type",
        "",
        "alg",
        "",
        "(Ljava/lang/String;J)V",
        "getAlg",
        "()J",
        "getType",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final alg:J

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    return-void
.end method

.method public static synthetic copy$default(Landroidx/credentials/webauthn/PublicKeyCredentialParameters;Ljava/lang/String;JILjava/lang/Object;)Landroidx/credentials/webauthn/PublicKeyCredentialParameters;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget-wide p2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->copy(Ljava/lang/String;J)Landroidx/credentials/webauthn/PublicKeyCredentialParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Landroidx/credentials/webauthn/PublicKeyCredentialParameters;
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;

    invoke-direct {v0, p1, p2, p3}, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;

    iget-object v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    iget-object v3, p1, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    iget-wide v5, p1, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getAlg()J
    .registers 3

    .line 32
    iget-wide v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PublicKeyCredentialParameters(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;->alg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
