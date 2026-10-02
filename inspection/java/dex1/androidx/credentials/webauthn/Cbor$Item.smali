.class public final Landroidx/credentials/webauthn/Cbor$Item;
.super Ljava/lang/Object;
.source "Cbor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/webauthn/Cbor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\n\u001a\u00020\u0001H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/credentials/webauthn/Cbor$Item;",
        "",
        "item",
        "len",
        "",
        "(Ljava/lang/Object;I)V",
        "getItem",
        "()Ljava/lang/Object;",
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
.field private final item:Ljava/lang/Object;

.field private final len:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    iput p2, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/credentials/webauthn/Cbor$Item;Ljava/lang/Object;IILjava/lang/Object;)Landroidx/credentials/webauthn/Cbor$Item;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor$Item;->copy(Ljava/lang/Object;I)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    return v0
.end method

.method public final copy(Ljava/lang/Object;I)Landroidx/credentials/webauthn/Cbor$Item;
    .registers 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/credentials/webauthn/Cbor$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/credentials/webauthn/Cbor$Item;

    iget-object v1, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    iget p1, p1, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getItem()Ljava/lang/Object;
    .registers 2

    .line 24
    iget-object v0, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLen()I
    .registers 2

    .line 24
    iget v0, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/credentials/webauthn/Cbor$Item;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/credentials/webauthn/Cbor$Item;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
