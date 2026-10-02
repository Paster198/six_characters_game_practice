.class Llow/moe/AppActivity$9;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/AppActivity;->openOauthGoogle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Landroidx/credentials/GetCredentialResponse;",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/GetCredentialException;)V
    .registers 3

    .line 639
    instance-of p1, p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    if-eqz p1, :cond_b

    .line 640
    sget-object p1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llow/moe/AppActivity;->finishWaitingAndThrowOauthError(Z)V

    return-void

    .line 642
    :cond_b
    sget-object p1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llow/moe/AppActivity;->finishWaitingAndThrowOauthError(Z)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 622
    check-cast p1, Landroidx/credentials/exceptions/GetCredentialException;

    invoke-virtual {p0, p1}, Llow/moe/AppActivity$9;->onError(Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/GetCredentialResponse;)V
    .registers 4

    .line 625
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 627
    :try_start_11
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    .line 628
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Llow/moe/AppActivity;->finishWaitingAndSetOauthToken(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_27

    return-void

    .line 630
    :catch_27
    sget-object p1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {p1, v1}, Llow/moe/AppActivity;->finishWaitingAndThrowOauthError(Z)V

    return-void

    .line 633
    :cond_2d
    sget-object p1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {p1, v1}, Llow/moe/AppActivity;->finishWaitingAndThrowOauthError(Z)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    .line 622
    check-cast p1, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1}, Llow/moe/AppActivity$9;->onResult(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method
