.class public final Landroidx/credentials/provider/utils/PrivilegedApp;
.super Ljava/lang/Object;
.source "PrivilegedApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/utils/PrivilegedApp$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0008\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003J#\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/credentials/provider/utils/PrivilegedApp;",
        "",
        "packageName",
        "",
        "fingerprints",
        "",
        "(Ljava/lang/String;Ljava/util/Set;)V",
        "getFingerprints",
        "()Ljava/util/Set;",
        "getPackageName",
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
        "Companion",
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


# static fields
.field private static final ANDROID_TYPE_KEY:Ljava/lang/String; = "android"

.field private static final APPS_KEY:Ljava/lang/String; = "apps"

.field private static final APP_INFO_KEY:Ljava/lang/String; = "info"

.field private static final BUILD_KEY:Ljava/lang/String; = "build"

.field public static final Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

.field private static final FINGERPRINT_KEY:Ljava/lang/String; = "cert_fingerprint_sha256"

.field private static final PACKAGE_NAME_KEY:Ljava/lang/String; = "package_name"

.field private static final SIGNATURES_KEY:Ljava/lang/String; = "signatures"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"

.field private static final USER_BUILD_TYPE:Ljava/lang/String; = "userdebug"

.field private static final USER_DEBUG_KEY:Ljava/lang/String; = "userdebug"


# instance fields
.field private final fingerprints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/utils/PrivilegedApp;->Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/credentials/provider/utils/PrivilegedApp;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Landroidx/credentials/provider/utils/PrivilegedApp;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    :cond_c
    invoke-virtual {p0, p1, p2}, Landroidx/credentials/provider/utils/PrivilegedApp;->copy(Ljava/lang/String;Ljava/util/Set;)Landroidx/credentials/provider/utils/PrivilegedApp;

    move-result-object p0

    return-object p0
.end method

.method public static final createFromJSONObject(Lorg/json/JSONObject;Z)Landroidx/credentials/provider/utils/PrivilegedApp;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/utils/PrivilegedApp;->Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;->createFromJSONObject(Lorg/json/JSONObject;Z)Landroidx/credentials/provider/utils/PrivilegedApp;

    move-result-object p0

    return-object p0
.end method

.method public static final extractPrivilegedApps$credentials_release(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/utils/PrivilegedApp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/utils/PrivilegedApp;->Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;->extractPrivilegedApps$credentials_release(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Set;)Landroidx/credentials/provider/utils/PrivilegedApp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/credentials/provider/utils/PrivilegedApp;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/credentials/provider/utils/PrivilegedApp;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/provider/utils/PrivilegedApp;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/credentials/provider/utils/PrivilegedApp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/credentials/provider/utils/PrivilegedApp;

    iget-object v1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    iget-object p1, p1, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getFingerprints()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrivilegedApp(packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fingerprints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/credentials/provider/utils/PrivilegedApp;->fingerprints:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
