.class public final Landroidx/credentials/provider/CredentialEntry$Api28Impl;
.super Ljava/lang/Object;
.source "CredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api28Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/provider/CredentialEntry$Api28Impl;",
        "",
        "()V",
        "fromSlice",
        "Landroidx/credentials/provider/CredentialEntry;",
        "slice",
        "Landroid/app/slice/Slice;",
        "toSlice",
        "entry",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/CredentialEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/CredentialEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/CredentialEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/CredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/CredentialEntry$Api28Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CredentialEntry;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "slice"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :try_start_5
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 131
    :goto_11
    const-string v1, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v0, Landroidx/credentials/provider/PasswordCredentialEntry;->Companion:Landroidx/credentials/provider/PasswordCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PasswordCredentialEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PasswordCredentialEntry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/credentials/provider/CredentialEntry;

    return-object v0

    .line 132
    :cond_25
    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/credentials/provider/CredentialEntry;

    return-object v0

    .line 133
    :cond_39
    sget-object v0, Landroidx/credentials/provider/CustomCredentialEntry;->Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CustomCredentialEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/credentials/provider/CredentialEntry;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_44} :catch_45

    return-object v0

    .line 138
    :catch_45
    sget-object v0, Landroidx/credentials/provider/CustomCredentialEntry;->Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CustomCredentialEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;

    move-result-object p0

    check-cast p0, Landroidx/credentials/provider/CredentialEntry;

    return-object p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/CredentialEntry;)Landroid/app/slice/Slice;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    instance-of v0, p0, Landroidx/credentials/provider/PasswordCredentialEntry;

    if-eqz v0, :cond_12

    sget-object v0, Landroidx/credentials/provider/PasswordCredentialEntry;->Companion:Landroidx/credentials/provider/PasswordCredentialEntry$Companion;

    check-cast p0, Landroidx/credentials/provider/PasswordCredentialEntry;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PasswordCredentialEntry$Companion;->toSlice(Landroidx/credentials/provider/PasswordCredentialEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0

    .line 119
    :cond_12
    instance-of v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    if-eqz v0, :cond_1f

    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    check-cast p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;->toSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0

    .line 120
    :cond_1f
    instance-of v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;

    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/credentials/provider/CustomCredentialEntry;->Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    check-cast p0, Landroidx/credentials/provider/CustomCredentialEntry;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CustomCredentialEntry$Companion;->toSlice(Landroidx/credentials/provider/CustomCredentialEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method
