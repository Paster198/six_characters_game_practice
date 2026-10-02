.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type1Message"
.end annotation


# instance fields
.field private final domainBytes:[B

.field private final hostBytes:[B


# direct methods
.method constructor <init>()V
    .registers 2

    .line 988
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    const/4 v0, 0x0

    .line 989
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    .line 990
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 972
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 973
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 977
    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 979
    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    .line 982
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    goto :goto_1e

    :cond_1d
    move-object p2, v0

    :goto_1e
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    if-eqz p1, :cond_30

    .line 983
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 984
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :cond_30
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    return-void

    .line 974
    :cond_33
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p2, "Unicode not supported"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x28

    .line 1004
    invoke-virtual {p0, v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->prepareResponse(II)V

    const v0, -0x5df77dff

    .line 1007
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/4 v0, 0x0

    .line 1032
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1033
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1036
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    .line 1039
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1040
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1043
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/16 v0, 0x105

    .line 1046
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    const/16 v0, 0xa28

    .line 1048
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/16 v0, 0xf00

    .line 1050
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1053
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    if-eqz v0, :cond_35

    .line 1054
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addBytes([B)V

    .line 1057
    :cond_35
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    if-eqz v0, :cond_3c

    .line 1058
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addBytes([B)V

    .line 1061
    :cond_3c
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
