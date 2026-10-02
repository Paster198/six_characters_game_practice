.class public Lcz/msebera/android/httpclient/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "Protocol name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 72
    const-string p1, "Protocol minor version"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    .line 73
    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 262
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I
    .registers 5

    .line 203
    const-string v0, "Protocol version"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Versions for different protocols cannot be compared: %s %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2a

    .line 208
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_2a
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 160
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 163
    :cond_a
    check-cast p1, Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 165
    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    iget v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    if-ne v1, v3, :cond_23

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    iget p1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    if-ne v1, p1, :cond_23

    return v0

    :cond_23
    return v2
.end method

.method public forVersion(II)Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 5

    .line 122
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_9

    return-object p0

    .line 127
    :cond_9
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolVersion;

    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getMajor()I
    .registers 2

    .line 91
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .registers 2

    .line 100
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .registers 3

    .line 225
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->isComparable(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .registers 3

    if-eqz p1, :cond_e

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object p1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .registers 3

    .line 240
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->isComparable(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result p1

    if-gtz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
