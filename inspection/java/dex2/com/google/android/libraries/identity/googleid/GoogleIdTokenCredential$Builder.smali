.class public final Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
.super Ljava/lang/Object;
.source "com.google.android.libraries.identity.googleid:googleid@@1.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;",
        "",
        "()V",
        "displayName",
        "",
        "familyName",
        "givenName",
        "id",
        "idToken",
        "phoneNumber",
        "profilePictureUri",
        "Landroid/net/Uri;",
        "build",
        "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;",
        "setDisplayName",
        "setFamilyName",
        "setGivenName",
        "setId",
        "setIdToken",
        "setPhoneNumber",
        "setProfilePictureUri",
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

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Landroid/net/Uri;

.field private zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    iget-object v1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzf:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzg:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final setFamilyName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final setGivenName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final setIdToken(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 3

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzf:Landroid/net/Uri;

    return-object p0
.end method
