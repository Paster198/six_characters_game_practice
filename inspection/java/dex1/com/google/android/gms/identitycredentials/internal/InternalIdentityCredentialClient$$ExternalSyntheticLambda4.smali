.class public final synthetic Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public synthetic f$0:Lcom/google/android/gms/identitycredentials/RegistrationRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/identitycredentials/RegistrationRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/gms/identitycredentials/RegistrationRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/gms/identitycredentials/RegistrationRequest;

    check-cast p1, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->$r8$lambda$jp-XIJgn19zmmplmtVTxHyI6JLw(Lcom/google/android/gms/identitycredentials/RegistrationRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
