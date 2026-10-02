.class public Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-auth@@21.1.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zba:Ljava/util/List;

.field private final zbb:Ljava/lang/String;

.field private final zbc:Z

.field private final zbd:Z

.field private final zbe:Landroid/accounts/Account;

.field private final zbf:Ljava/lang/String;

.field private final zbg:Ljava/lang/String;

.field private final zbh:Z

.field private final zbi:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/zbe;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/zbe;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    const-string v1, "requestedScopes cannot be null or empty"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbd:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbe:Landroid/accounts/Account;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbg:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbh:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    return-void
.end method

.method public static builder()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static zba(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;
    .registers 11

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->builder()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->setRequestedScopes(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    if-eqz v1, :cond_49

    .line 3
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/zbd;->values()[Lcom/google/android/gms/auth/api/identity/zbd;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v6, :cond_40

    aget-object v8, v5, v7

    .line 6
    iget-object v9, v8, Lcom/google/android/gms/auth/api/identity/zbd;->zbc:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    goto :goto_41

    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_40
    const/4 v8, 0x0

    :goto_41
    if-eqz v4, :cond_1a

    if-eqz v8, :cond_1a

    .line 7
    invoke-virtual {v0, v8, v4}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->zba(Lcom/google/android/gms/auth/api/identity/zbd;Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    goto :goto_1a

    .line 8
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->isForceCodeForRefreshToken()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbg:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getHostedDomain()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getServerClientId()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_60

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->zbc(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    :cond_60
    if-eqz v3, :cond_65

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->filterByHostedDomain(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    :cond_65
    if-eqz v4, :cond_6a

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    :cond_6a
    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbd:Z

    if-eqz v2, :cond_73

    if-eqz v5, :cond_73

    .line 15
    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->zbb(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    .line 16
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->isOfflineAccessRequested()Z

    move-result p0

    if-eqz p0, :cond_7e

    if-eqz v5, :cond_7e

    .line 17
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->requestOfflineAccess(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    :cond_7e
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_a1

    .line 4
    :cond_22
    iget-object v0, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    if-nez v2, :cond_2b

    if-nez v0, :cond_30

    const/4 v0, 0x0

    :cond_2b
    if-eqz v2, :cond_31

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    return v1

    :cond_31
    :goto_31
    if-eqz v2, :cond_65

    .line 5
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_3e

    return v1

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    .line 6
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    .line 7
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    return v1

    :cond_65
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbc:Z

    .line 9
    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbc:Z

    if-ne v0, v2, :cond_a1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbh:Z

    if-ne v0, v2, :cond_a1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbd:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbd:Z

    if-ne v0, v2, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbb:Ljava/lang/String;

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbe:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbe:Landroid/accounts/Account;

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbf:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbf:Ljava/lang/String;

    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbg:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbg:Ljava/lang/String;

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    const/4 p1, 0x1

    return p1

    :cond_a1
    :goto_a1
    return v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbe:Landroid/accounts/Account;

    return-object v0
.end method

.method public getHostedDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbf:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedScopes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbb:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zba:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbh:Z

    .line 2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbd:Z

    .line 3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbe:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbf:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbg:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isForceCodeForRefreshToken()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbh:Z

    return v0
.end method

.method public isOfflineAccessRequested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbc:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getServerClientId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->isOfflineAccessRequested()Z

    move-result v2

    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbd:Z

    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->getHostedDomain()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbg:Ljava/lang/String;

    .line 13
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->isForceCodeForRefreshToken()Z

    move-result v1

    .line 15
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->zbi:Landroid/os/Bundle;

    .line 16
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
