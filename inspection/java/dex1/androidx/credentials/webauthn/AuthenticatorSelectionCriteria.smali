.class public final Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
.super Ljava/lang/Object;
.source "FidoDataTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;",
        "",
        "authenticatorAttachment",
        "",
        "residentKey",
        "requireResidentKey",
        "",
        "userVerification",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "getAuthenticatorAttachment",
        "()Ljava/lang/String;",
        "getRequireResidentKey",
        "()Z",
        "getResidentKey",
        "getUserVerification",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private final authenticatorAttachment:Ljava/lang/String;

.field private final requireResidentKey:Z

.field private final residentKey:Ljava/lang/String;

.field private final userVerification:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    const-string v0, "authenticatorAttachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "residentKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userVerification"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    .line 46
    iput-object p4, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 46
    const-string p4, "preferred"

    .line 42
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
    .registers 6

    const-string v0, "authenticatorAttachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "residentKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userVerification"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    iget-object v3, p1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    iget-object v3, p1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    iget-boolean v3, p1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    iget-object p1, p1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getAuthenticatorAttachment()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequireResidentKey()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    return v0
.end method

.method public final getResidentKey()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserVerification()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticatorSelectionCriteria(authenticatorAttachment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", residentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireResidentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->requireResidentKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userVerification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
