.class public final synthetic Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public synthetic f$0:Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;

    check-cast p1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;->$r8$lambda$e0glqmP_gi22l9sgDfuPXsQXqBI(Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
