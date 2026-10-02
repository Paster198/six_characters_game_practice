.class public final Lcom/google/android/play/core/review/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.1"


# static fields
.field private static final zza:Lcom/google/android/play/core/review/internal/zzi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/review/internal/zzi;

    const-string v1, "PhoneskyVerificationUtils"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/internal/zzi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .registers 7

    .line 1
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_60

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_1b} :catch_60

    if-eqz p0, :cond_57

    array-length v0, p0

    if-nez v0, :cond_21

    goto :goto_57

    :cond_21
    move v2, v1

    :goto_22
    if-ge v2, v0, :cond_60

    .line 4
    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/play/core/review/internal/zzv;->zza([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "dev-keys"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_4a
    const-string v4, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_55
    const/4 p0, 0x1

    return p0

    .line 3
    :cond_57
    :goto_57
    sget-object p0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    const-string v0, "Phonesky package is not signed -- possibly self-built package. Could not verify."

    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0, v2}, Lcom/google/android/play/core/review/internal/zzi;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    :catch_60
    :cond_60
    return v1
.end method
