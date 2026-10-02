.class synthetic Lcom/google/firebase/installations/FirebaseInstallations$3;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/FirebaseInstallations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

.field static final synthetic $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 572
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->values()[Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->OK:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    sget-object v3, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    sget-object v3, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->AUTH_ERROR:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 540
    :catch_28
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->values()[Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    :try_start_31
    sget-object v3, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->OK:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    sget-object v2, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    return-void
.end method
