.class public final Lcom/google/android/gms/auth/api/zbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.1.1"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final zba:Lcom/google/android/gms/auth/api/zbd;


# instance fields
.field private final zbb:Ljava/lang/String;

.field private final zbc:Z

.field private final zbd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/zbc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zbc;-><init>()V

    new-instance v1, Lcom/google/android/gms/auth/api/zbd;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/api/zbd;-><init>(Lcom/google/android/gms/auth/api/zbc;)V

    sput-object v1, Lcom/google/android/gms/auth/api/zbd;->zba:Lcom/google/android/gms/auth/api/zbd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/zbc;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/zbd;->zbb:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/auth/api/zbc;->zba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    iget-object p1, p1, Lcom/google/android/gms/auth/api/zbc;->zbb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zbb(Lcom/google/android/gms/auth/api/zbd;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/auth/api/zbd;->zbb:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zbc(Lcom/google/android/gms/auth/api/zbd;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zbd(Lcom/google/android/gms/auth/api/zbd;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/auth/api/zbd;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/auth/api/zbd;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/auth/api/zbd;->zbb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    if-ne v1, v3, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    return v0

    :cond_26
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zba()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_save_dialog"

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "log_session_id"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
