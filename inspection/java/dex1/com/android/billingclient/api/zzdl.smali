.class final Lcom/android/billingclient/api/zzdl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method static zza(Lcom/google/android/gms/internal/play_billing/zzes;Lcom/google/android/gms/internal/play_billing/zzim;)Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "REQUEST_METADATA"

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "REQUEST_PARAMS"

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method static zzb(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzes;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzes;->zza()Lcom/google/android/gms/internal/play_billing/zzer;

    move-result-object p0

    const-string p1, "9.1.0"

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzer;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzer;

    const/16 p1, 0x18

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzer;->zze(I)Lcom/google/android/gms/internal/play_billing/zzer;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzer;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzer;

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzer;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzer;

    .line 6
    :try_start_18
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 8
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2b} :catch_2c

    goto :goto_34

    .line 11
    :catch_2c
    const-string p1, "DelegationApiParamsBuilder"

    const-string p2, "No version code is found!"

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_34
    if-eqz p1, :cond_39

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzer;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzer;

    .line 11
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzes;

    return-object p0
.end method
