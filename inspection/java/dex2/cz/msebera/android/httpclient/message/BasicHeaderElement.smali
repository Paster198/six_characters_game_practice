.class public Lcz/msebera/android/httpclient/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderElement;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lcz/msebera/android/httpclient/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz p3, :cond_14

    .line 64
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    return-void

    :cond_14
    const/4 p1, 0x0

    .line 66
    new-array p1, p1, [Lcz/msebera/android/httpclient/NameValuePair;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

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

    .line 164
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 124
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/HeaderElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 125
    check-cast p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    .line 126
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->name:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    .line 127
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    iget-object p1, p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    .line 128
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v0

    :cond_2a
    return v2
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 3

    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 7

    .line 108
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 111
    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    return-object v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParameterCount()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lcz/msebera/android/httpclient/NameValuePair;
    .registers 2

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/16 v0, 0x11

    .line 137
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 140
    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 150
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_18
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->parameters:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 154
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 157
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
