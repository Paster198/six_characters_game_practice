.class public Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;
.super Landroid/app/Activity;
.source "IdentityCredentialApiHiddenActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0012\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0010H\u0014J\u0012\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;",
        "Landroid/app/Activity;",
        "()V",
        "mWaitingForActivityResult",
        "",
        "resultReceiver",
        "Landroid/os/ResultReceiver;",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "restoreState",
        "Companion",
        "credentials-play-services-auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity$Companion;

.field private static final KEY_AWAITING_RESULT:Ljava/lang/String; = "androidx.credentials.playservices.AWAITING_RESULT"


# instance fields
.field private mWaitingForActivityResult:Z

.field private resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->Companion:Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final restoreState(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 75
    const-string v0, "androidx.credentials.playservices.AWAITING_RESULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->mWaitingForActivityResult:Z

    :cond_b
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_c

    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->reportResult$credentials_play_services_auth_release(Landroid/os/ResultReceiver;IILandroid/content/Intent;)V

    :cond_c
    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->mWaitingForActivityResult:Z

    .line 92
    invoke-virtual {p0}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->overridePendingTransition(II)V

    .line 44
    invoke-virtual {p0}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RESULT_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 43
    iput-object v0, p0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_1a

    .line 46
    invoke-virtual {p0}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->finish()V

    .line 49
    :cond_1a
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->restoreState(Landroid/os/Bundle;)V

    .line 50
    iget-boolean p1, p0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->mWaitingForActivityResult:Z

    if-eqz p1, :cond_22

    return-void

    .line 55
    :cond_22
    invoke-virtual {p0}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_GET_CREDENTIAL_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_44

    .line 59
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 60
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {p1}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v7}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_44
    move-object v0, p0

    .line 68
    iget-object p1, v0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_52

    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    const-string v2, "GET_UNKNOWN"

    const-string v3, "Internal error"

    invoke-virtual {v1, p1, v2, v3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->reportError$credentials_play_services_auth_release(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_52
    invoke-virtual {p0}, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-string v0, "androidx.credentials.playservices.AWAITING_RESULT"

    iget-boolean v1, p0, Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
