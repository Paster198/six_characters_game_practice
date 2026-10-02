.class public final Lcom/google/android/gms/identitycredentials/CallingAppInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0012\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/android/gms/identitycredentials/CallingAppInfo;",
        "",
        "packageName",
        "",
        "packageCertificates",
        "",
        "",
        "origin",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V",
        "getPackageName",
        "()Ljava/lang/String;",
        "getPackageCertificates",
        "()Ljava/util/List;",
        "getOrigin",
        "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final origin:Ljava/lang/String;

.field private final packageCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageCertificates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/CallingAppInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/identitycredentials/CallingAppInfo;->packageCertificates:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/identitycredentials/CallingAppInfo;->origin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrigin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CallingAppInfo;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CallingAppInfo;->packageCertificates:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CallingAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
