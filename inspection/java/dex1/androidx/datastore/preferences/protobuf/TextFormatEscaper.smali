.class final Landroidx/datastore/preferences/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escapeBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 96
    new-instance v0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$1;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$1;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;)V

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper;->escapeBytes(Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escapeBytes(Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 42
    :goto_a
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 43
    invoke-interface {p0, v1}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_86

    const/16 v3, 0x27

    if-eq v2, v3, :cond_80

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7a

    packed-switch v2, :pswitch_data_94

    const/16 v4, 0x20

    if-lt v2, v4, :cond_30

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_30

    int-to-char v2, v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 81
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 58
    :pswitch_50
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 52
    :pswitch_56
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 64
    :pswitch_5c
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 55
    :pswitch_62
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 61
    :pswitch_68
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 49
    :pswitch_6e
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 46
    :pswitch_74
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 67
    :cond_7a
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 70
    :cond_80
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 73
    :cond_86
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 89
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x7
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
    .end packed-switch
.end method

.method static escapeBytes([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 112
    new-instance v0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;-><init>([B)V

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper;->escapeBytes(Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 135
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/TextFormatEscaper;->escapeBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
