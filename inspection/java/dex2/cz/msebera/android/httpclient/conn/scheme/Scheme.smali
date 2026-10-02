.class public final Lcz/msebera/android/httpclient/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V
    .registers 8

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "Scheme name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_13

    const v2, 0xffff

    if-gt p2, v2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    move v2, v0

    .line 92
    :goto_14
    const-string v3, "Port is invalid"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 93
    const-string v2, "Socket factory"

    invoke-static {p3, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 95
    iput p2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    .line 96
    instance-of p1, p3, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    if-eqz p1, :cond_31

    .line 97
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    .line 98
    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-void

    .line 99
    :cond_31
    instance-of p1, p3, Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    if-eqz p1, :cond_41

    .line 100
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    .line 101
    new-instance p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;

    check-cast p3, Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {p1, p3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;-><init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-void

    .line 103
    :cond_41
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    .line 104
    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "Scheme name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    const-string v0, "Socket factory"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_18

    const v2, 0xffff

    if-gt p3, v2, :cond_18

    move v2, v0

    goto :goto_19

    :cond_18
    move v2, v1

    .line 128
    :goto_19
    const-string v3, "Port is invalid"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 130
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 131
    instance-of p1, p2, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    if-eqz p1, :cond_36

    .line 132
    new-instance p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;

    check-cast p2, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 134
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    goto :goto_3f

    .line 136
    :cond_36
    new-instance p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 137
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    .line 139
    :goto_3f
    iput p3, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 242
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 243
    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 244
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    iget v3, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    if-ne v1, v3, :cond_22

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    iget-boolean p1, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    if-ne v1, p1, :cond_22

    return v0

    :cond_22
    return v2
.end method

.method public final getDefaultPort()I
    .registers 2

    .line 148
    iget v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    .registers 2

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    instance-of v1, v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v1, :cond_d

    .line 164
    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->getFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-result-object v0

    return-object v0

    .line 166
    :cond_d
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    if-eqz v0, :cond_1b

    .line 167
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactoryAdaptor;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    check-cast v1, Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;)V

    return-object v0

    .line 170
    :cond_1b
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->socketFactory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    .line 255
    iget v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 257
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v0

    return v0
.end method

.method public final isLayered()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->layered:Z

    return v0
.end method

.method public final resolvePort(I)I
    .registers 2

    if-gtz p1, :cond_4

    .line 217
    iget p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    :cond_4
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    .line 234
    :cond_22
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    return-object v0
.end method
