.class public final Lcz/msebera/android/httpclient/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 66
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_8

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    if-eqz p1, :cond_21

    .line 87
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_21

    move v2, v1

    .line 88
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 89
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_20
    return v0

    :cond_21
    return v1
.end method

.method public static hashCode(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, p1

    return p0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .registers 2

    if-eqz p1, :cond_7

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(IZ)I
    .registers 2

    .line 51
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(II)I

    move-result p0

    return p0
.end method
