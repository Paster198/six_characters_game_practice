.class final Lcom/google/android/gms/auth/api/signin/internal/zbf;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# instance fields
.field final synthetic zba:Lcom/google/android/gms/auth/api/signin/internal/zbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zbg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zba:Lcom/google/android/gms/auth/api/signin/internal/zbg;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbd(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zba:Lcom/google/android/gms/auth/api/signin/internal/zbg;

    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/internal/zbg;->zba:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/zbg;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 2
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbe(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zba:Lcom/google/android/gms/auth/api/signin/internal/zbg;

    .line 3
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
