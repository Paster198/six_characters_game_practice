.class public final Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
.super Landroidx/credentials/CustomCredential;
.source "com.google.android.libraries.identity.googleid:googleid@@1.1.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;,
        Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\rR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;",
        "Landroidx/credentials/CustomCredential;",
        "id",
        "",
        "idToken",
        "displayName",
        "familyName",
        "givenName",
        "profilePictureUri",
        "Landroid/net/Uri;",
        "phoneNumber",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "getFamilyName",
        "getGivenName",
        "getId",
        "getIdToken",
        "getPhoneNumber$annotations",
        "()V",
        "getPhoneNumber",
        "getProfilePictureUri",
        "()Landroid/net/Uri;",
        "Builder",
        "Companion",
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


# static fields
.field public static final BUNDLE_KEY_GOOGLE_ID_TOKEN_SUBTYPE:Ljava/lang/String; = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_GOOGLE_ID_TOKEN_SUBTYPE"

.field public static final Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

.field public static final TYPE_GOOGLE_ID_TOKEN_CREDENTIAL:Ljava/lang/String; = "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

.field public static final TYPE_GOOGLE_ID_TOKEN_SIWG_CREDENTIAL:Ljava/lang/String; = "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_SIWG_CREDENTIAL"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Landroid/net/Uri;

.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "idToken"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME"

    .line 5
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME"

    .line 6
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME"

    .line 7
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER"

    .line 8
    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI"

    .line 9
    move-object v2, p6

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    .line 10
    invoke-direct {p0, v1, v0}, Landroidx/credentials/CustomCredential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzf:Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzg:Ljava/lang/String;

    .line 11
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_67

    .line 12
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5f

    return-void

    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idToken should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id should not be empty"

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final getFamilyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final getGivenName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfilePictureUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzf:Landroid/net/Uri;

    return-object v0
.end method
