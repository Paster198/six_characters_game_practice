.class public final Lcom/google/android/gms/identitycredentials/GetCredentialException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/GetCredentialException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 \n2\u00060\u0002j\u0002`\u0001:\u0001\nB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/android/gms/identitycredentials/GetCredentialException;",
        "Lkotlin/Exception;",
        "Ljava/lang/Exception;",
        "type",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/google/android/gms/identitycredentials/GetCredentialException$Companion;

.field public static final ERROR_TYPE_NO_CREDENTIAL:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

.field public static final ERROR_TYPE_UNKNOWN:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_UNKNOWN"

.field public static final ERROR_TYPE_USER_CANCELED:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_USER_CANCELED"


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/identitycredentials/GetCredentialException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/GetCredentialException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/GetCredentialException;->Companion:Lcom/google/android/gms/identitycredentials/GetCredentialException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/GetCredentialException;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/GetCredentialException;->type:Ljava/lang/String;

    return-object v0
.end method
