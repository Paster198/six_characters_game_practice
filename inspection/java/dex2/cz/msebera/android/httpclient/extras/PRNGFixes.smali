.class public final Lcz/msebera/android/httpclient/extras/PRNGFixes;
.super Ljava/lang/Object;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/extras/PRNGFixes$LinuxPRNGSecureRandom;,
        Lcz/msebera/android/httpclient/extras/PRNGFixes$LinuxPRNGSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

.field private static final VERSION_CODE_JELLY_BEAN:I = 0x10

.field private static final VERSION_CODE_JELLY_BEAN_MR2:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Lcz/msebera/android/httpclient/extras/PRNGFixes;->getBuildFingerprintAndDeviceSerial()[B

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/extras/PRNGFixes;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 41
    invoke-static {}, Lcz/msebera/android/httpclient/extras/PRNGFixes;->generateSeed()[B

    move-result-object v0

    return-object v0
.end method

.method public static apply()V
    .registers 0

    .line 57
    invoke-static {}, Lcz/msebera/android/httpclient/extras/PRNGFixes;->applyOpenSSLFix()V

    .line 58
    invoke-static {}, Lcz/msebera/android/httpclient/extras/PRNGFixes;->installLinuxPRNGSecureRandom()V

    return-void
.end method

.method private static applyOpenSSLFix()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    return-void
.end method

.method private static generateSeed()[B
    .registers 4

    .line 292
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 297
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 298
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 299
    sget-object v2, Lcz/msebera/android/httpclient/extras/PRNGFixes;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 300
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception v0

    .line 303
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getBuildFingerprintAndDeviceSerial()[B
    .registers 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_c
    invoke-static {}, Lcz/msebera/android/httpclient/extras/PRNGFixes;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_20

    return-object v0

    .line 335
    :catch_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDeviceSerialNumber()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 316
    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    return-object v0
.end method

.method private static installLinuxPRNGSecureRandom()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    return-void
.end method
