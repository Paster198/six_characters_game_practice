.class public Lcom/google/android/gms/auth/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field public static final CHANGE_TYPE_ACCOUNT_ADDED:I = 0x1

.field public static final CHANGE_TYPE_ACCOUNT_REMOVED:I = 0x2

.field public static final CHANGE_TYPE_ACCOUNT_RENAMED_FROM:I = 0x3

.field public static final CHANGE_TYPE_ACCOUNT_RENAMED_TO:I = 0x4

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final KEY_SUPPRESS_PROGRESS_SCREEN:Ljava/lang/String; = "suppressProgressScreen"

.field public static final WORK_ACCOUNT_TYPE:Ljava/lang/String; = "com.google.work"

.field public static final zza:[Ljava/lang/String;

.field public static final zzb:Ljava/lang/String;

.field private static final zzc:Landroid/content/ComponentName;

.field private static final zzd:Lcom/google/android/gms/common/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google"

    aput-object v2, v0, v1

    const-string v2, "com.google.work"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "cn.google"

    aput-object v4, v0, v2

    sput-object v0, Lcom/google/android/gms/auth/zzl;->zza:[Ljava/lang/String;

    const-string v0, "androidPackageName"

    sput-object v0, Lcom/google/android/gms/auth/zzl;->zzb:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v4, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/zzl;->zzc:Landroid/content/ComponentName;

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "GoogleAuthUtil"

    aput-object v2, v0, v1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/auth/zzd;->zza([Ljava/lang/String;)Lcom/google/android/gms/common/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/auth/zzl;->zze(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static getAccountChangeEvents(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/AccountChangeEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "accountName must be provided"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    const v0, 0x802c80

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/zzl;->zzk(Landroid/content/Context;I)V

    .line 4
    new-instance v1, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {v1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;-><init>()V

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setEventIndex(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzd(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhw;->zzd()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->zzp(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    move-result-object p1

    .line 9
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/auth/zzg;->zzb(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string p2, "account change events retrieval"

    .line 10
    :try_start_34
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/zzl;->zzi(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->getEvents()Ljava/util/List;

    move-result-object p0
    :try_end_41
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_34 .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception v0

    move-object p1, v0

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/zzl;->zzl(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    .line 12
    :cond_47
    new-instance v4, Lcom/google/android/gms/auth/zzi;

    invoke-direct {v4, v1}, Lcom/google/android/gms/auth/zzi;-><init>(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)V

    sget-object v3, Lcom/google/android/gms/auth/zzl;->zzc:Landroid/content/ComponentName;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/auth/zzl;->zzh(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "accountName must be provided"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    const v0, 0x802c80

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/zzl;->zzk(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "^^_account_id_^^"

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/auth/zzl;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/zzl;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->zzo(Landroid/accounts/Account;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/auth/zzl;->zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/auth/zzl;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v0, p2, p3}, Lcom/google/android/gms/auth/zzl;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.google"

    invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->zzo(Landroid/accounts/Account;)V

    const v0, 0x802c80

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/zzl;->zzk(Landroid/content/Context;I)V

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzd(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhw;->zze()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/auth/zzg;->zzd(Landroid/accounts/Account;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "account removal"

    .line 8
    :try_start_25
    invoke-static {v0, v1}, Lcom/google/android/gms/auth/zzl;->zzi(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/auth/zzl;->zzj(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_25 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/auth/zzl;->zzl(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    .line 9
    :cond_33
    new-instance v4, Lcom/google/android/gms/auth/zzf;

    invoke-direct {v4, p1}, Lcom/google/android/gms/auth/zzf;-><init>(Landroid/accounts/Account;)V

    sget-object v3, Lcom/google/android/gms/auth/zzl;->zzc:Landroid/content/ComponentName;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 11
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/auth/zzl;->zzh(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static requestGoogleAccountsAccess(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xadf340

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/zzl;->zzk(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzd(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhw;->zze()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    move-result-object v0

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auth/zzg;->zze(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v2, "google accounts access request"

    .line 8
    :try_start_28
    invoke-static {v0, v2}, Lcom/google/android/gms/auth/zzl;->zzi(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "Error"

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userRecoveryIntent"

    .line 10
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const-string v5, "userRecoveryPendingIntent"

    .line 11
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzby;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/zzby;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/auth/zzby;->zzc:Lcom/google/android/gms/internal/auth/zzby;

    .line 13
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 17
    :cond_56
    const-string v5, "requestGoogleAccountsAccess"

    .line 15
    invoke-static {p0, v5, v3, v4, v0}, Lcom/google/android/gms/auth/zzl;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v3, "Invalid state. Shouldn\'t happen"

    .line 16
    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_63
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_28 .. :try_end_63} :catch_63

    :catch_63
    move-exception v0

    .line 17
    invoke-static {v0, v2}, Lcom/google/android/gms/auth/zzl;->zzl(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    .line 14
    :cond_67
    new-instance v5, Lcom/google/android/gms/auth/zzj;

    invoke-direct {v5, v1, p0}, Lcom/google/android/gms/auth/zzj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/auth/zzl;->zzc:Landroid/content/ComponentName;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 18
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/auth/zzl;->zzh(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1
    const-string p4, "Calling this from your main thread can lead to deadlock"

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    const-string p4, "Scope cannot be empty or null."

    .line 2
    invoke-static {p2, p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->zzo(Landroid/accounts/Account;)V

    const p4, 0x802c80

    .line 4
    invoke-static {p0, p4}, Lcom/google/android/gms/auth/zzl;->zzk(Landroid/content/Context;I)V

    if-nez p3, :cond_1b

    new-instance p3, Landroid/os/Bundle;

    .line 5
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_21

    .line 15
    :cond_1b
    new-instance p4, Landroid/os/Bundle;

    .line 5
    invoke-direct {p4, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, p4

    .line 6
    :goto_21
    invoke-static {p0, p3}, Lcom/google/android/gms/auth/zzl;->zzm(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzd(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhw;->zze()Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->zzp(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_52

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    move-result-object p4

    .line 10
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzg;->zzc(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p4

    const-string p5, "token retrieval"

    .line 11
    :try_start_3d
    invoke-static {p4, p5}, Lcom/google/android/gms/auth/zzl;->zzi(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 12
    invoke-static {p4}, Lcom/google/android/gms/auth/zzl;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "getTokenWithDetails"

    .line 13
    invoke-static {p0, p6, p4}, Lcom/google/android/gms/auth/zzl;->zzg(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0
    :try_end_4c
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_3d .. :try_end_4c} :catch_4d

    return-object p0

    :catch_4d
    move-exception v0

    move-object p4, v0

    .line 14
    invoke-static {p4, p5}, Lcom/google/android/gms/auth/zzl;->zzl(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    .line 13
    :cond_52
    new-instance v3, Lcom/google/android/gms/auth/zzg;

    invoke-direct {v3, p1, p2, p3, p0}, Lcom/google/android/gms/auth/zzg;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/auth/zzl;->zzc:Landroid/content/ComponentName;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/auth/zzl;->zzh(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    return-object p0
.end method

.method static synthetic zzb(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/google/android/gms/internal/auth/zze;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/zzf;

    move-result-object p4

    .line 2
    invoke-interface {p4, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzf;->zze(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 3
    const-string p1, "getTokenWithDetails"

    .line 4
    invoke-static {p3, p1, p0}, Lcom/google/android/gms/auth/zzl;->zzg(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    return-object p0

    .line 2
    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Service call returned null"

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .registers 5

    const-string p1, "requestGoogleAccountsAccess"

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/auth/zzl;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static zze(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string p2, "Calling this from your main thread can lead to deadlock"

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    const p2, 0x802c80

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/gms/auth/zzl;->zzk(Landroid/content/Context;I)V

    new-instance p2, Landroid/os/Bundle;

    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-static {p0, p2}, Lcom/google/android/gms/auth/zzl;->zzm(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzd(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhw;->zze()Z

    move-result p3

    if-eqz p3, :cond_3d

    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->zzp(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    move-result-object p3

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/auth/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzbw;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzbw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/zzbw;

    .line 9
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/auth/zzg;->zza(Lcom/google/android/gms/internal/auth/zzbw;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    const-string v1, "clear token"

    .line 10
    :try_start_34
    invoke-static {p3, v1}, Lcom/google/android/gms/auth/zzl;->zzi(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_37
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_34 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    move-object p3, v0

    .line 11
    invoke-static {p3, v1}, Lcom/google/android/gms/auth/zzl;->zzl(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    .line 10
    :cond_3d
    new-instance v4, Lcom/google/android/gms/auth/zzh;

    invoke-direct {v4, p1, p2}, Lcom/google/android/gms/auth/zzh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/google/android/gms/auth/zzl;->zzc:Landroid/content/ComponentName;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 12
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/auth/zzl;->zzh(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    return-void
.end method

.method static zzf(Landroid/content/Intent;)V
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_7
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    .line 2
    :catch_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter callback contains invalid data. It must be serializable using toUri() and parseUri()."

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Callback cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzg(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/gms/auth/TokenData;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class p1, Lcom/google/android/gms/auth/TokenData;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_d
    const-string v0, "tokenDetails"

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 p1, 0x0

    goto :goto_24

    :cond_17
    if-eqz p1, :cond_1c

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 11
    :cond_1c
    const-string p1, "TokenData"

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/TokenData;

    :goto_24
    if-eqz p1, :cond_27

    return-object p1

    .line 5
    :cond_27
    const-string p1, "Error"

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "userRecoveryIntent"

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "userRecoveryPendingIntent"

    .line 9
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    const-string v1, "getTokenWithDetails"

    .line 10
    invoke-static {p0, v1, p1, v0, p2}, Lcom/google/android/gms/auth/zzl;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    new-instance p0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string p1, "Invalid state. Shouldn\'t happen"

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzh(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;JLjava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1
    const-string p3, "Error on service connection."

    const-string p4, "GoogleAuthUtil"

    new-instance p5, Lcom/google/android/gms/common/BlockingServiceConnection;

    invoke-direct {p5}, Lcom/google/android/gms/common/BlockingServiceConnection;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    :try_start_e
    invoke-virtual {p0, p1, p5, p4, v0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->bindService(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_12} :catch_3c

    if-eqz v0, :cond_34

    .line 6
    :try_start_14
    invoke-virtual {p5}, Lcom/google/android/gms/common/BlockingServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/auth/zzk;->zza(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_1c} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_24
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_22
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    .line 9
    invoke-virtual {p0, p1, p5, p4}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->unbindService(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-object p2

    :catchall_20
    move-exception p2

    goto :goto_30

    :catch_22
    move-exception p2

    goto :goto_27

    :catch_24
    move-exception p2

    goto :goto_27

    :catch_26
    move-exception p2

    .line 7
    :goto_27
    :try_start_27
    invoke-static {p4, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    .line 8
    invoke-direct {v0, p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_20

    .line 9
    :goto_30
    invoke-virtual {p0, p1, p5, p4}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->unbindService(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 10
    throw p2

    .line 5
    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not bind to service."

    .line 11
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3c
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SecurityException while bind to auth service: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SecurityException while binding to Auth service."

    .line 5
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zzi(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_5} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Canceled while waiting for the task of %s to finish."

    .line 2
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 4
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1e
    move-exception p0

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Interrupted while waiting for the task of %s to finish."

    .line 5
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 7
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_36
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v2, :cond_42

    .line 10
    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    throw v1

    .line 1
    :cond_42
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unable to get a result for %s due to ExecutionException."

    .line 11
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 13
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzj(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 1
    :cond_3
    sget-object p0, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service call returned null."

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Service unavailable."

    .line 2
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzk(Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->ensurePlayServicesAvailable(Landroid/content/Context;I)V
    :try_end_7
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_7} :catch_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 3
    new-instance p1, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_13
    move-exception p0

    new-instance p1, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw p1
.end method

.method private static zzl(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    .line 2
    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static zzm(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "clientPackageName"

    .line 2
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/auth/zzl;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const-string p0, "service_connection_start_time_millis"

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private static zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/auth/zzby;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/zzby;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/zzl;->zzd:Lcom/google/android/gms/common/logging/Logger;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[GoogleAuthUtil] error status:%s with method:%s"

    .line 2
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzi:Lcom/google/android/gms/internal/auth/zzby;

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzs:Lcom/google/android/gms/internal/auth/zzby;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzw:Lcom/google/android/gms/internal/auth/zzby;

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzx:Lcom/google/android/gms/internal/auth/zzby;

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzn:Lcom/google/android/gms/internal/auth/zzby;

    .line 8
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzz:Lcom/google/android/gms/internal/auth/zzby;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzN:Lcom/google/android/gms/internal/auth/zzby;

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzF:Lcom/google/android/gms/internal/auth/zzby;

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzG:Lcom/google/android/gms/internal/auth/zzby;

    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzH:Lcom/google/android/gms/internal/auth/zzby;

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzI:Lcom/google/android/gms/internal/auth/zzby;

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzJ:Lcom/google/android/gms/internal/auth/zzby;

    .line 15
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzK:Lcom/google/android/gms/internal/auth/zzby;

    .line 16
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzM:Lcom/google/android/gms/internal/auth/zzby;

    .line 17
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzE:Lcom/google/android/gms/internal/auth/zzby;

    .line 18
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->zzL:Lcom/google/android/gms/internal/auth/zzby;

    .line 19
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    goto :goto_cc

    .line 28
    :cond_97
    sget-object p0, Lcom/google/android/gms/internal/auth/zzby;->zze:Lcom/google/android/gms/internal/auth/zzby;

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    sget-object p0, Lcom/google/android/gms/internal/auth/zzby;->zzf:Lcom/google/android/gms/internal/auth/zzby;

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    sget-object p0, Lcom/google/android/gms/internal/auth/zzby;->zzg:Lcom/google/android/gms/internal/auth/zzby;

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    sget-object p0, Lcom/google/android/gms/internal/auth/zzby;->zzaf:Lcom/google/android/gms/internal/auth/zzby;

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    .line 29
    sget-object p0, Lcom/google/android/gms/internal/auth/zzby;->zzah:Lcom/google/android/gms/internal/auth/zzby;

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c0

    goto :goto_c6

    .line 34
    :cond_c0
    new-instance p0, Lcom/google/android/gms/auth/GoogleAuthException;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c6
    :goto_c6
    new-instance p0, Ljava/io/IOException;

    .line 36
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_cc
    :goto_cc
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzd(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzht;->zzc()Z

    move-result v0

    if-eqz v0, :cond_118

    if-eqz p4, :cond_df

    if-nez p3, :cond_da

    goto :goto_df

    .line 29
    :cond_da
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zza(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object p0

    throw p0

    .line 22
    :cond_df
    :goto_df
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getApkVersion(Landroid/content/Context;)I

    move-result p0

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_101

    if-nez p4, :cond_101

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p4, "Recovery PendingIntent is missing on current Gms version: %s for method: %s. It should always be present on or above Gms version %s. This indicates a bug in Gms implementation."

    .line 24
    invoke-static {p4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p4, v3, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v1, p0, p4}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_101
    if-nez p3, :cond_112

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "no recovery Intent found with status=%s for method=%s. This shouldn\'t happen"

    .line 26
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_112
    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw p0

    .line 36
    :cond_118
    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw p0
.end method

.method private static zzo(Landroid/accounts/Account;)V
    .registers 5

    if-eqz p0, :cond_2e

    .line 2
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3
    sget-object v0, Lcom/google/android/gms/auth/zzl;->zza:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1e

    aget-object v2, v0, v1

    .line 4
    iget-object v3, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account type not supported"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account name cannot be empty!"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzp(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    const v1, 0x1110e58

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return v1

    .line 3
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhw;->zzb()Lcom/google/android/gms/internal/auth/zzhs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhs;->zzq()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_34
    const/4 p0, 0x1

    return p0
.end method
