.class public final Landroidx/credentials/provider/CallingAppInfo$Companion;
.super Ljava/lang/Object;
.source "CallingAppInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CallingAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,339:1\n37#2,2:340\n11335#3:342\n11670#3,3:343\n*S KotlinDebug\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo$Companion\n*L\n161#1:340,2\n178#1:342\n178#1:343,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J*\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\u0019\u0010\u0015\u001a\u00020\u0016*\u00020\u00132\u0006\u0010\u0017\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/credentials/provider/CallingAppInfo$Companion;",
        "",
        "()V",
        "EXTRA_CREDENTIAL_REQUEST_ORIGIN",
        "",
        "EXTRA_CREDENTIAL_REQUEST_PACKAGE_NAME",
        "EXTRA_CREDENTIAL_REQUEST_SIGNATURES",
        "EXTRA_CREDENTIAL_REQUEST_SIGNING_INFO",
        "create",
        "Landroidx/credentials/provider/CallingAppInfo;",
        "packageName",
        "signingInfo",
        "Landroid/content/pm/SigningInfo;",
        "origin",
        "signatures",
        "",
        "Landroid/content/pm/Signature;",
        "extractCallingAppInfo",
        "bundle",
        "Landroid/os/Bundle;",
        "extractCallingAppInfo$credentials_release",
        "setCallingAppInfo",
        "",
        "info",
        "setCallingAppInfo$credentials_release",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/CallingAppInfo$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Landroidx/credentials/provider/CallingAppInfo$Companion;Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILjava/lang/Object;)Landroidx/credentials/provider/CallingAppInfo;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 123
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo$Companion;->create(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Landroidx/credentials/provider/CallingAppInfo$Companion;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Landroidx/credentials/provider/CallingAppInfo;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 141
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo$Companion;->create(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)Landroidx/credentials/provider/CallingAppInfo;
    .registers 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroidx/credentials/provider/CallingAppInfo;

    invoke-direct {v0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public final create(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroidx/credentials/provider/CallingAppInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/credentials/provider/CallingAppInfo;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroidx/credentials/provider/CallingAppInfo;

    invoke-direct {v0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final extractCallingAppInfo$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/provider/CallingAppInfo;
    .registers 9

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const-string v0, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_ORIGIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return-object v2

    .line 169
    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2b

    .line 172
    const-string v3, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_SIGNING_INFO"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_26

    return-object v2

    .line 174
    :cond_26
    invoke-virtual {p0, v1, p1, v0}, Landroidx/credentials/provider/CallingAppInfo$Companion;->create(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p1

    return-object p1

    .line 178
    :cond_2b
    const-string v3, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_SIGNATURES"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 343
    array-length v3, p1

    const/4 v4, 0x0

    :goto_3d
    if-ge v4, v3, :cond_4e

    aget-object v5, p1, v4

    .line 179
    const-string v6, "null cannot be cast to non-null type android.content.pm.Signature"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/content/pm/Signature;

    .line 344
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 345
    :cond_4e
    check-cast v2, Ljava/util/List;

    .line 181
    invoke-virtual {p0, v1, v2, v0}, Landroidx/credentials/provider/CallingAppInfo$Companion;->create(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p1

    return-object p1

    :cond_55
    return-object v2
.end method

.method public final setCallingAppInfo$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const-string v0, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_ORIGIN"

    invoke-virtual {p2}, Landroidx/credentials/provider/CallingAppInfo;->getOrigin$credentials_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_PACKAGE_NAME"

    invoke-virtual {p2}, Landroidx/credentials/provider/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2e

    .line 157
    invoke-virtual {p2}, Landroidx/credentials/provider/CallingAppInfo;->getSigningInfo()Landroid/content/pm/SigningInfo;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    const-string v0, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_SIGNING_INFO"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 161
    :cond_2e
    invoke-virtual {p2}, Landroidx/credentials/provider/CallingAppInfo;->getSigningInfoCompat()Landroidx/credentials/provider/SigningInfoCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/credentials/provider/SigningInfoCompat;->getSigningCertificateHistory()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 341
    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    .line 159
    const-string v0, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_SIGNATURES"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method
