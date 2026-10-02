.class public final Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
.super Ljava/lang/Object;
.source "com.google.android.libraries.identity.googleid:googleid@@1.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\r\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00082\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;",
        "",
        "()V",
        "autoSelectEnabled",
        "",
        "filterByAuthorizedAccounts",
        "idTokenDepositionScopes",
        "",
        "",
        "linkedServiceId",
        "nonce",
        "requestVerifiedPhoneNumber",
        "serverClientId",
        "associateLinkedAccounts",
        "build",
        "Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;",
        "setAutoSelectEnabled",
        "setFilterByAuthorizedAccounts",
        "setNonce",
        "setRequestVerifiedPhoneNumber",
        "setServerClientId",
        "java.com.google.android.libraries.identity.googleid.granule_granule"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Z

.field private zze:Z

.field private zzf:Z

.field private zzg:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zza:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzd:Z

    return-void
.end method


# virtual methods
.method public final associateLinkedAccounts(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;"
        }
    .end annotation

    const-string v0, "linkedServiceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1d

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzb:Ljava/lang/String;

    if-eqz p2, :cond_19

    .line 2
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzg:Ljava/util/List;

    return-object p0

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "linkedServiceId must be provided if you want to associate linked accounts."

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final build()Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;

    iget-object v1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzc:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzd:Z

    iget-object v4, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzg:Ljava/util/List;

    iget-boolean v6, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zze:Z

    iget-boolean v7, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzf:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZ)V

    return-object v0
.end method

.method public final setAutoSelectEnabled(Z)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzf:Z

    return-object p0
.end method

.method public final setFilterByAuthorizedAccounts(Z)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzd:Z

    return-object p0
.end method

.method public final setNonce(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final setRequestVerifiedPhoneNumber(Z)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zze:Z

    return-object p0
.end method

.method public final setServerClientId(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;
    .registers 3

    const-string v0, "serverClientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->zza:Ljava/lang/String;

    return-object p0

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serverClientId should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
