.class public final Lim/delight/android/commons/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountry(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lim/delight/android/commons/Phone;->getCountry(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountry(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 68
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 69
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_16

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    return-object p0

    :catch_16
    :cond_16
    return-object p1
.end method

.method public static getNumber(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .registers 2

    .line 41
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 42
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method
