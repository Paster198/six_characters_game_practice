.class public Lcom/jaredrummler/android/device/DeviceName;
.super Ljava/lang/Object;
.source "DeviceName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;,
        Lcom/jaredrummler/android/device/DeviceName$Callback;,
        Lcom/jaredrummler/android/device/DeviceName$Request;
    }
.end annotation


# static fields
.field private static final DEVICE_JSON_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/jaredrummler/AndroidDeviceNames/master/json/devices/%s.json"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "device_names"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 90
    invoke-static {p0}, Lcom/jaredrummler/android/device/DeviceName;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1917
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1920
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1923
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    move v4, v1

    move v5, v2

    :goto_12
    if-ge v4, v0, :cond_50

    aget-char v6, p0, v4

    if-eqz v5, :cond_35

    .line 1924
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v1

    goto :goto_4d

    .line 1928
    :cond_35
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3c

    move v5, v2

    .line 1931
    :cond_3c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_50
    return-object v3
.end method

.method private static downloadJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1942
    :try_start_6
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 1944
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x3a98

    .line 1945
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1946
    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1947
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1948
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1949
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_52

    .line 1950
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_5c

    .line 1952
    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 1953
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4f

    goto :goto_3d

    :cond_4d
    move-object v1, v2

    goto :goto_52

    :catchall_4f
    move-exception p0

    move-object v1, v2

    goto :goto_5d

    .line 1956
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_5c

    if-eqz v1, :cond_5b

    .line 1959
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_5b
    return-object p0

    :catchall_5c
    move-exception p0

    :goto_5d
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_62
    throw p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
    .registers 3

    .line 1815
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
    .registers 3

    const/4 v0, 0x0

    .line 1831
    invoke-static {p0, p1, v0}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
    .registers 11

    .line 1849
    const-string v0, "device_names"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1850
    const-string v2, "%s:%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1851
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 1854
    :try_start_18
    new-instance v5, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v3}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Lorg/json/JSONObject;Lcom/jaredrummler/android/device/DeviceName$1;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_22} :catch_23

    return-object v5

    :catch_23
    move-exception v4

    .line 1856
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 1861
    :cond_27
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_43

    .line 1864
    const-string v4, "connectivity"

    .line 1865
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1867
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 1868
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_9b

    .line 1879
    :cond_43
    :try_start_43
    const-string p0, "https://raw.githubusercontent.com/jaredrummler/AndroidDeviceNames/master/json/devices/%s.json"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1880
    invoke-static {p0}, Lcom/jaredrummler/android/device/DeviceName;->downloadJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1881
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_60
    if-ge v1, p0, :cond_9b

    .line 1883
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1884
    new-instance v6, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    invoke-direct {v6, v5, v3}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Lorg/json/JSONObject;Lcom/jaredrummler/android/device/DeviceName$1;)V

    .line 1885
    iget-object v7, v6, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->codename:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    if-eqz p2, :cond_85

    :cond_75
    iget-object v7, v6, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->codename:Ljava/lang/String;

    .line 1886
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    iget-object v7, v6, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 1888
    :cond_85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1889
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1890
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_93} :catch_97

    return-object v6

    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :catch_97
    move-exception p0

    .line 1895
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1899
    :cond_9b
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b7

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b7

    .line 1900
    new-instance p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 1903
    :cond_b7
    new-instance p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    invoke-direct {p0, v3, v3, p1, p2}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 3

    .line 120
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/jaredrummler/android/device/DeviceName;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p0, p0, p1}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_a

    .line 154
    const-string v0, "acer_S57"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    if-eqz p1, :cond_17

    const-string v0, "S57"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 156
    :cond_14
    const-string p0, "Liquid Jade Z"

    return-object p0

    :cond_17
    if-eqz p0, :cond_21

    .line 158
    const-string v0, "acer_t08"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_21
    if-eqz p1, :cond_2e

    const-string v0, "T08"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 160
    :cond_2b
    const-string p0, "Liquid Zest Plus"

    return-object p0

    :cond_2e
    if-eqz p0, :cond_43

    .line 164
    const-string v0, "grouper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "tilapia"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 166
    :cond_40
    const-string p0, "Nexus 7 (2012)"

    return-object p0

    :cond_43
    if-eqz p0, :cond_58

    .line 168
    const-string v0, "deb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "flo"

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 170
    :cond_55
    const-string p0, "Nexus 7 (2013)"

    return-object p0

    :cond_58
    if-eqz p0, :cond_65

    .line 174
    const-string v0, "sailfish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 175
    const-string p0, "Pixel"

    return-object p0

    :cond_65
    if-eqz p0, :cond_72

    .line 177
    const-string v0, "walleye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 178
    const-string p0, "Pixel 2"

    return-object p0

    :cond_72
    if-eqz p0, :cond_7f

    .line 180
    const-string v0, "taimen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 181
    const-string p0, "Pixel 2 XL"

    return-object p0

    :cond_7f
    if-eqz p0, :cond_8c

    .line 183
    const-string v0, "blueline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 184
    const-string p0, "Pixel 3"

    return-object p0

    :cond_8c
    if-eqz p0, :cond_99

    .line 186
    const-string v0, "crosshatch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 187
    const-string p0, "Pixel 3 XL"

    return-object p0

    :cond_99
    if-eqz p0, :cond_a6

    .line 189
    const-string v0, "dragon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 190
    const-string p0, "Pixel C"

    return-object p0

    :cond_a6
    if-eqz p0, :cond_b3

    .line 192
    const-string v0, "marlin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 193
    const-string p0, "Pixel XL"

    return-object p0

    :cond_b3
    if-eqz p0, :cond_c0

    .line 197
    const-string v0, "flounder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 198
    const-string p0, "Nexus 9"

    return-object p0

    :cond_c0
    if-eqz p0, :cond_ca

    .line 202
    const-string v0, "HWBND-H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    :cond_ca
    if-eqz p1, :cond_e7

    const-string v0, "BND-L21"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    const-string v0, "BND-L24"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    const-string v0, "BND-L31"

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 206
    :cond_e4
    const-string p0, "Honor 7X"

    return-object p0

    :cond_e7
    if-eqz p0, :cond_f1

    .line 208
    const-string v0, "HWBKL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_103

    :cond_f1
    if-eqz p1, :cond_106

    const-string v0, "BKL-L04"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_103

    const-string v0, "BKL-L09"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 211
    :cond_103
    const-string p0, "Honor View 10"

    return-object p0

    :cond_106
    if-eqz p0, :cond_110

    .line 213
    const-string v0, "HWALP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    :cond_110
    if-eqz p1, :cond_135

    const-string v0, "ALP-AL00"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "ALP-L09"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "ALP-L29"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "ALP-TL00"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 218
    :cond_132
    const-string p0, "Mate 10"

    return-object p0

    :cond_135
    if-eqz p0, :cond_13f

    .line 220
    const-string v0, "HWMHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    :cond_13f
    if-eqz p1, :cond_164

    const-string v0, "MHA-AL00"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "MHA-L09"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "MHA-L29"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "MHA-TL00"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 225
    :cond_161
    const-string p0, "Mate 9"

    return-object p0

    :cond_164
    if-eqz p0, :cond_171

    .line 227
    const-string v0, "angler"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 228
    const-string p0, "Nexus 6P"

    return-object p0

    :cond_171
    if-eqz p0, :cond_17b

    .line 232
    const-string v0, "g2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    :cond_17b
    if-eqz p1, :cond_1e8

    const-string v0, "LG-D800"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D801"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D802"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D802T"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D802TR"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D803"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D805"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-D806"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-F320K"

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-F320L"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-F320S"

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "LG-LS980"

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    const-string v0, "VS980 4G"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 246
    :cond_1e5
    const-string p0, "LG G2"

    return-object p0

    :cond_1e8
    if-eqz p0, :cond_1f2

    .line 248
    const-string v0, "g3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    :cond_1f2
    if-eqz p1, :cond_297

    const-string v0, "AS985"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-AS990"

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D850"

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D851"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D852"

    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D852G"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D855"

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D856"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D857"

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D858"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D858HK"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-D859"

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-F400K"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-F400L"

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LG-F400S"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LGL24"

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LGLS990"

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LGUS990"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "LGV31"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "VS985 4G"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    .line 269
    :cond_294
    const-string p0, "LG G3"

    return-object p0

    :cond_297
    if-eqz p0, :cond_2a1

    .line 271
    const-string v0, "p1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    :cond_2a1
    if-eqz p1, :cond_326

    const-string v0, "AS986"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-AS811"

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-AS991"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-F500K"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-F500L"

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-F500S"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-H810"

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-H811"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-H812"

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-H815"

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-H818"

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LG-H819"

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LGLS991"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LGUS991"

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "LGV32"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_323

    const-string v0, "VS986"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_326

    .line 288
    :cond_323
    const-string p0, "LG G4"

    return-object p0

    :cond_326
    if-eqz p0, :cond_330

    .line 290
    const-string v0, "h1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    :cond_330
    if-eqz p1, :cond_3b5

    const-string v0, "LG-F700K"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-F700L"

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-F700S"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H820"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H820PR"

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H830"

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H831"

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H850"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H858"

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H860"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LG-H868"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LGAS992"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LGLS992"

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "LGUS992"

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "RS988"

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b2

    const-string v0, "VS987"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b5

    .line 307
    :cond_3b2
    const-string p0, "LG G5"

    return-object p0

    :cond_3b5
    if-eqz p0, :cond_3bf

    .line 309
    const-string v0, "lucye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    :cond_3bf
    if-eqz p1, :cond_44c

    const-string v0, "LG-AS993"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H870"

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H870AR"

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H870DS"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H870I"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H870S"

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H871"

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H871S"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H872"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H872PR"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-H873"

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LG-LS993"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LGM-G600K"

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LGM-G600L"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LGM-G600S"

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "LGUS997"

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_449

    const-string v0, "VS988"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    .line 327
    :cond_449
    const-string p0, "LG G6"

    return-object p0

    :cond_44c
    if-eqz p0, :cond_459

    .line 329
    const-string v0, "mako"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_459

    .line 330
    const-string p0, "Nexus 4"

    return-object p0

    :cond_459
    if-eqz p0, :cond_466

    .line 332
    const-string v0, "hammerhead"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_466

    .line 333
    const-string p0, "Nexus 5"

    return-object p0

    :cond_466
    if-eqz p0, :cond_473

    .line 335
    const-string v0, "bullhead"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_473

    .line 336
    const-string p0, "Nexus 5X"

    return-object p0

    :cond_473
    if-eqz p0, :cond_480

    .line 340
    const-string v0, "shamu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_480

    .line 341
    const-string p0, "Nexus 6"

    return-object p0

    .line 345
    :cond_480
    const-string v0, "OnePlus3"

    if-eqz p0, :cond_48a

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_494

    :cond_48a
    const-string v1, "ONEPLUS A3000"

    if-eqz p1, :cond_495

    .line 346
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_495

    :cond_494
    return-object v0

    .line 349
    :cond_495
    const-string v0, "OnePlus3T"

    if-eqz p0, :cond_49f

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a7

    :cond_49f
    if-eqz p1, :cond_4a8

    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a8

    :cond_4a7
    return-object v0

    .line 353
    :cond_4a8
    const-string v0, "OnePlus5"

    if-eqz p0, :cond_4b2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4bc

    :cond_4b2
    if-eqz p1, :cond_4bd

    const-string v1, "ONEPLUS A5000"

    .line 354
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4bd

    :cond_4bc
    return-object v0

    .line 357
    :cond_4bd
    const-string v0, "OnePlus5T"

    if-eqz p0, :cond_4c7

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d1

    :cond_4c7
    if-eqz p1, :cond_4d2

    const-string v1, "ONEPLUS A5010"

    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d2

    :cond_4d1
    return-object v0

    :cond_4d2
    if-eqz p0, :cond_52c

    .line 363
    const-string v0, "a53g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5lte"

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ltechn"

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ltectc"

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ltezh"

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ltezt"

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ulte"

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ultebmc"

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ultektt"

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ultelgt"

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "a5ulteskt"

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    :cond_52c
    if-eqz p1, :cond_5b1

    const-string v0, "SM-A5000"

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A5009"

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500F"

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500F1"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500FU"

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500G"

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500H"

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500K"

    .line 381
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500L"

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500M"

    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500S"

    .line 384
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500W"

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500X"

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500XZ"

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500Y"

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "SM-A500YZ"

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b1

    .line 390
    :cond_5ae
    const-string p0, "Galaxy A5"

    return-object p0

    :cond_5b1
    if-eqz p0, :cond_5bb

    .line 392
    const-string v0, "vivaltods5m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5dd

    :cond_5bb
    if-eqz p1, :cond_5e0

    const-string v0, "SM-G313HU"

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5dd

    const-string v0, "SM-G313HY"

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5dd

    const-string v0, "SM-G313M"

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5dd

    const-string v0, "SM-G313MY"

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e0

    .line 397
    :cond_5dd
    const-string p0, "Galaxy Ace 4"

    return-object p0

    .line 399
    :cond_5e0
    const-string v0, "SCH-i589"

    const-string v1, "SCH-i579"

    const-string v2, "SCH-I589"

    const-string v3, "GT-S6802B"

    const-string v4, "GT-S6802"

    const-string v5, "GT-S6352"

    if-eqz p0, :cond_61a

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    .line 400
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    .line 401
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    const-string v6, "SCH-I579"

    .line 402
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    .line 403
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    .line 404
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    .line 405
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_640

    :cond_61a
    if-eqz p1, :cond_643

    .line 406
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_640

    .line 407
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_640

    .line 408
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_640

    .line 409
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_640

    .line 410
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_640

    .line 411
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_643

    .line 412
    :cond_640
    const-string p0, "Galaxy Ace Duos"

    return-object p0

    .line 414
    :cond_643
    const-string v0, "GT-S7508"

    const-string v1, "GT-S7500W"

    const-string v2, "GT-S7500T"

    const-string v3, "GT-S7500L"

    const-string v4, "GT-S7500"

    if-eqz p0, :cond_66d

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68d

    .line 415
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68d

    .line 416
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68d

    .line 417
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68d

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68d

    :cond_66d
    if-eqz p1, :cond_690

    .line 419
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68d

    .line 420
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68d

    .line 421
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68d

    .line 422
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68d

    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_690

    .line 424
    :cond_68d
    const-string p0, "Galaxy Ace Plus"

    return-object p0

    :cond_690
    if-eqz p0, :cond_6aa

    .line 426
    const-string v0, "heat3gtfnvzw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    const-string v0, "heatnfc3g"

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    const-string v0, "heatqlte"

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    :cond_6aa
    if-eqz p1, :cond_6cf

    const-string v0, "SM-G310HN"

    .line 429
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    const-string v0, "SM-G357FZ"

    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    const-string v0, "SM-S765C"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    const-string v0, "SM-S766C"

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6cf

    .line 433
    :cond_6cc
    const-string p0, "Galaxy Ace Style"

    return-object p0

    :cond_6cf
    if-eqz p0, :cond_6f9

    .line 435
    const-string v0, "vivalto3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "vivalto3mve3g"

    .line 436
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "vivalto5mve3g"

    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "vivaltolte"

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "vivaltonfc3g"

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    :cond_6f9
    if-eqz p1, :cond_73e

    const-string v0, "SM-G313F"

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G313HN"

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G313ML"

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G313MU"

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G316H"

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G316HU"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G316M"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "SM-G316MY"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73e

    .line 448
    :cond_73b
    const-string p0, "Galaxy Ace4"

    return-object p0

    :cond_73e
    if-eqz p0, :cond_7b0

    .line 450
    const-string v0, "core33g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimelte"

    .line 451
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimelteaio"

    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimeltelra"

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimeltespr"

    .line 454
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimeltetfnvzw"

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimeltevzw"

    .line 456
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimeve3g"

    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "coreprimevelte"

    .line 458
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "cprimeltemtr"

    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "cprimeltetmo"

    .line 460
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "rossalte"

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "rossaltectc"

    .line 462
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "rossaltexsa"

    .line 463
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    :cond_7b0
    if-eqz p1, :cond_855

    const-string v0, "SAMSUNG-SM-G360AZ"

    .line 464
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G3606"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G3608"

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G3609"

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360F"

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360FY"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360GY"

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360H"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360HU"

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360M"

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360P"

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360R6"

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360T"

    .line 476
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360T1"

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G360V"

    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G361F"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G361H"

    .line 480
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G361HU"

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-G361M"

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_852

    const-string v0, "SM-S820L"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_855

    .line 484
    :cond_852
    const-string p0, "Galaxy Core Prime"

    return-object p0

    :cond_855
    if-eqz p0, :cond_87f

    .line 486
    const-string v0, "kanas"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "kanas3g"

    .line 487
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "kanas3gcmcc"

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "kanas3gctc"

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "kanas3gnfc"

    .line 490
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    :cond_87f
    if-eqz p1, :cond_8bc

    const-string v0, "SM-G3556D"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "SM-G3558"

    .line 492
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "SM-G3559"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "SM-G355H"

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "SM-G355HN"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "SM-G355HQ"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b9

    const-string v0, "SM-G355M"

    .line 497
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8bc

    .line 498
    :cond_8b9
    const-string p0, "Galaxy Core2"

    return-object p0

    :cond_8bc
    if-eqz p0, :cond_8de

    .line 500
    const-string v0, "e53g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "e5lte"

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "e5ltetfnvzw"

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "e5ltetw"

    .line 503
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    :cond_8de
    if-eqz p1, :cond_90b

    const-string v0, "SM-E500F"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "SM-E500H"

    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "SM-E500M"

    .line 506
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "SM-E500YZ"

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_908

    const-string v0, "SM-S978L"

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90b

    .line 509
    :cond_908
    const-string p0, "Galaxy E5"

    return-object p0

    :cond_90b
    if-eqz p0, :cond_935

    .line 511
    const-string v0, "e73g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "e7lte"

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "e7ltechn"

    .line 513
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "e7ltectc"

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "e7ltehktw"

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    :cond_935
    if-eqz p1, :cond_962

    const-string v0, "SM-E7000"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "SM-E7009"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "SM-E700F"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "SM-E700H"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95f

    const-string v0, "SM-E700M"

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_962

    .line 521
    :cond_95f
    const-string p0, "Galaxy E7"

    return-object p0

    .line 523
    :cond_962
    const-string v0, "SCH-I629"

    if-eqz p0, :cond_9ac

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevis"

    .line 524
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevis3g"

    .line 525
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevis3gcmcc"

    .line 526
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevisds"

    .line 527
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevisnvess"

    .line 528
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevisp"

    .line 529
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevisvess"

    .line 530
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "nevisw"

    .line 531
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    :cond_9ac
    if-eqz p1, :cond_a37

    const-string v1, "GT-S6790"

    .line 532
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6790E"

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6790L"

    .line 534
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6790N"

    .line 535
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6810"

    .line 536
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6810B"

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6810E"

    .line 538
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6810L"

    .line 539
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6810M"

    .line 540
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6810P"

    .line 541
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6812"

    .line 542
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6812B"

    .line 543
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6812C"

    .line 544
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6812i"

    .line 545
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6818"

    .line 546
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    const-string v1, "GT-S6818V"

    .line 547
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a34

    .line 548
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a37

    .line 549
    :cond_a34
    const-string p0, "Galaxy Fame"

    return-object p0

    :cond_a37
    if-eqz p0, :cond_a41

    .line 551
    const-string v0, "grandprimelteatt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4b

    :cond_a41
    if-eqz p1, :cond_a4e

    const-string v0, "SAMSUNG-SM-G530A"

    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4e

    .line 553
    :cond_a4b
    const-string p0, "Galaxy Go Prime"

    return-object p0

    :cond_a4e
    if-eqz p0, :cond_a68

    .line 555
    const-string v0, "baffinlite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "baffinlitedtv"

    .line 556
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "baffinq3g"

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    :cond_a68
    if-eqz p1, :cond_a9d

    const-string v0, "GT-I9060"

    .line 558
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "GT-I9060L"

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "GT-I9063T"

    .line 560
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "GT-I9082C"

    .line 561
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "GT-I9168"

    .line 562
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9a

    const-string v0, "GT-I9168I"

    .line 563
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9d

    .line 564
    :cond_a9a
    const-string p0, "Galaxy Grand Neo"

    return-object p0

    .line 566
    :cond_a9d
    const-string v0, "gprimelteacg"

    if-eqz p0, :cond_b47

    const-string v1, "fortuna3g"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "fortuna3gdtv"

    .line 567
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "fortunalte"

    .line 568
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "fortunaltectc"

    .line 569
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "fortunaltezh"

    .line 570
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "fortunaltezt"

    .line 571
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "fortunave3g"

    .line 572
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    .line 573
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "gprimeltecan"

    .line 574
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "gprimeltemtr"

    .line 575
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "gprimeltespr"

    .line 576
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "gprimeltetfnvzw"

    .line 577
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "gprimeltetmo"

    .line 578
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "gprimelteusc"

    .line 579
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimelte"

    .line 580
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimelteaio"

    .line 581
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimeve3g"

    .line 582
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimeve3gdtv"

    .line 583
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimevelte"

    .line 584
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimevelteltn"

    .line 585
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "grandprimeveltezt"

    .line 586
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    :cond_b47
    if-eqz p1, :cond_c0a

    const-string v1, "SAMSUNG-SM-G530AZ"

    .line 587
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G5306W"

    .line 588
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G5308W"

    .line 589
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G5309W"

    .line 590
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530BT"

    .line 591
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530F"

    .line 592
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530FZ"

    .line 593
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530H"

    .line 594
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530M"

    .line 595
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530MU"

    .line 596
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530P"

    .line 597
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530R4"

    .line 598
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530R7"

    .line 599
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530T"

    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530T1"

    .line 601
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530W"

    .line 602
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G530Y"

    .line 603
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G531BT"

    .line 604
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G531F"

    .line 605
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G531H"

    .line 606
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G531M"

    .line 607
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-G531Y"

    .line 608
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    const-string v1, "SM-S920L"

    .line 609
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c07

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0a

    .line 611
    :cond_c07
    const-string p0, "Galaxy Grand Prime"

    return-object p0

    :cond_c0a
    if-eqz p0, :cond_c44

    .line 613
    const-string v0, "ms013g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "ms013gdtv"

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "ms013gss"

    .line 615
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "ms01lte"

    .line 616
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "ms01ltektt"

    .line 617
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "ms01ltelgt"

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "ms01lteskt"

    .line 619
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    :cond_c44
    if-eqz p1, :cond_ca9

    const-string v0, "SM-G710"

    .line 620
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7102"

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7102T"

    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7105"

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7105H"

    .line 624
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7105L"

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7106"

    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7108"

    .line 627
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G7109"

    .line 628
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G710K"

    .line 629
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G710L"

    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca6

    const-string v0, "SM-G710S"

    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca9

    .line 632
    :cond_ca6
    const-string p0, "Galaxy Grand2"

    return-object p0

    :cond_ca9
    if-eqz p0, :cond_d03

    .line 634
    const-string v0, "j13g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j13gtfnvzw"

    .line 635
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1lte"

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1nlte"

    .line 637
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1qltevzw"

    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1xlte"

    .line 639
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1xlteaio"

    .line 640
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1xlteatt"

    .line 641
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1xltecan"

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1xqltespr"

    .line 643
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "j1xqltetfnvzw"

    .line 644
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    :cond_d03
    if-eqz p1, :cond_d98

    const-string v0, "SAMSUNG-SM-J120A"

    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SAMSUNG-SM-J120AZ"

    .line 646
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100F"

    .line 647
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100FN"

    .line 648
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100G"

    .line 649
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100H"

    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100M"

    .line 651
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100ML"

    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100MU"

    .line 653
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100VPP"

    .line 654
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J100Y"

    .line 655
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J120F"

    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J120FN"

    .line 657
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J120M"

    .line 658
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J120P"

    .line 659
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-J120W"

    .line 660
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-S120VL"

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d95

    const-string v0, "SM-S777C"

    .line 662
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d98

    .line 663
    :cond_d95
    const-string p0, "Galaxy J1"

    return-object p0

    :cond_d98
    if-eqz p0, :cond_dba

    .line 665
    const-string v0, "j1acelte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "j1acelteltn"

    .line 666
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "j1acevelte"

    .line 667
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "j1pop3g"

    .line 668
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    :cond_dba
    if-eqz p1, :cond_df7

    const-string v0, "SM-J110F"

    .line 669
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "SM-J110G"

    .line 670
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "SM-J110H"

    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "SM-J110L"

    .line 672
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "SM-J110M"

    .line 673
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "SM-J111F"

    .line 674
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df4

    const-string v0, "SM-J111M"

    .line 675
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df7

    .line 676
    :cond_df4
    const-string p0, "Galaxy J1 Ace"

    return-object p0

    :cond_df7
    if-eqz p0, :cond_e49

    .line 678
    const-string v0, "j53g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5lte"

    .line 679
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5ltechn"

    .line 680
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5ltekx"

    .line 681
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5nlte"

    .line 682
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5y17lte"

    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5y17ltektt"

    .line 684
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5y17ltelgt"

    .line 685
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5y17lteskt"

    .line 686
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "j5ylte"

    .line 687
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    :cond_e49
    if-eqz p1, :cond_ebe

    const-string v0, "SM-J5007"

    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J5008"

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500F"

    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500FN"

    .line 691
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500G"

    .line 692
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500H"

    .line 693
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500M"

    .line 694
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500N0"

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J500Y"

    .line 696
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J530F"

    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J530FM"

    .line 698
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J530K"

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J530L"

    .line 700
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ebb

    const-string v0, "SM-J530S"

    .line 701
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ebe

    .line 702
    :cond_ebb
    const-string p0, "Galaxy J5"

    return-object p0

    :cond_ebe
    if-eqz p0, :cond_f18

    .line 704
    const-string v0, "j75ltektt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7e3g"

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7elte"

    .line 706
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7ltechn"

    .line 707
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7popelteue"

    .line 708
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7poplteusc"

    .line 709
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7popltevzw"

    .line 710
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7topeltevzw"

    .line 711
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7toplteatt"

    .line 712
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7toplteue"

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "j7y17lte"

    .line 714
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    :cond_f18
    if-eqz p1, :cond_f85

    const-string v0, "SM-J7008"

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J700F"

    .line 716
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J700H"

    .line 717
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J700K"

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J700M"

    .line 719
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J727R4"

    .line 720
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J727U"

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J727VPP"

    .line 722
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J730F"

    .line 723
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J730FM"

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J737A"

    .line 725
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J737U"

    .line 726
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f82

    const-string v0, "SM-J737VPP"

    .line 727
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f85

    .line 728
    :cond_f82
    const-string p0, "Galaxy J7"

    return-object p0

    :cond_f85
    if-eqz p0, :cond_f9f

    .line 730
    const-string v0, "maguro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa9

    const-string v0, "toro"

    .line 731
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa9

    const-string v0, "toroplus"

    .line 732
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa9

    :cond_f9f
    if-eqz p1, :cond_fac

    const-string v0, "Galaxy X"

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fac

    .line 734
    :cond_fa9
    const-string p0, "Galaxy Nexus"

    return-object p0

    :cond_fac
    if-eqz p0, :cond_103e

    .line 736
    const-string v0, "lt033g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "lt03ltektt"

    .line 737
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "lt03ltelgt"

    .line 738
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "lt03lteskt"

    .line 739
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notelte"

    .line 740
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4noteltektt"

    .line 741
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4noteltelgt"

    .line 742
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notelteskt"

    .line 743
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4noteltespr"

    .line 744
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notelteusc"

    .line 745
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4noteltevzw"

    .line 746
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4noterf"

    .line 747
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4noterfktt"

    .line 748
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notewifi"

    .line 749
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notewifi43241any"

    .line 750
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notewifiany"

    .line 751
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notewifiktt"

    .line 752
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "p4notewifiww"

    .line 753
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    :cond_103e
    if-eqz p1, :cond_10e3

    const-string v0, "GT-N8000"

    .line 754
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "GT-N8005"

    .line 755
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "GT-N8010"

    .line 756
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "GT-N8013"

    .line 757
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "GT-N8020"

    .line 758
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SCH-I925"

    .line 759
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SCH-I925U"

    .line 760
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHV-E230K"

    .line 761
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHV-E230L"

    .line 762
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHV-E230S"

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHW-M480K"

    .line 764
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHW-M480W"

    .line 765
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHW-M485W"

    .line 766
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SHW-M486W"

    .line 767
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SM-P601"

    .line 768
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SM-P602"

    .line 769
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SM-P605K"

    .line 770
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SM-P605L"

    .line 771
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SM-P605S"

    .line 772
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e0

    const-string v0, "SPH-P600"

    .line 773
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e3

    .line 774
    :cond_10e0
    const-string p0, "Galaxy Note 10.1"

    return-object p0

    .line 776
    :cond_10e3
    const-string v0, "SC-01G"

    if-eqz p0, :cond_114d

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "SCL24"

    .line 777
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbeltektt"

    .line 778
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbeltelgt"

    .line 779
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbelteskt"

    .line 780
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tblte"

    .line 781
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tblteatt"

    .line 782
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbltecan"

    .line 783
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbltechn"

    .line 784
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbltespr"

    .line 785
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbltetmo"

    .line 786
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tblteusc"

    .line 787
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    const-string v1, "tbltevzw"

    .line 788
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    :cond_114d
    if-eqz p1, :cond_11d8

    const-string v1, "SAMSUNG-SM-N915A"

    .line 789
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d5

    .line 790
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SCL24"

    .line 791
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N9150"

    .line 792
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915F"

    .line 793
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915FY"

    .line 794
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915G"

    .line 795
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915K"

    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915L"

    .line 797
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915P"

    .line 798
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915R4"

    .line 799
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915S"

    .line 800
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915T"

    .line 801
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915T3"

    .line 802
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915V"

    .line 803
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915W8"

    .line 804
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d5

    const-string v0, "SM-N915X"

    .line 805
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d8

    .line 806
    :cond_11d5
    const-string p0, "Galaxy Note Edge"

    return-object p0

    :cond_11d8
    if-eqz p0, :cond_1212

    .line 808
    const-string v0, "v1a3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "v1awifi"

    .line 809
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "v1awifikx"

    .line 810
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "viennalte"

    .line 811
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "viennalteatt"

    .line 812
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "viennaltekx"

    .line 813
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "viennaltevzw"

    .line 814
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    :cond_1212
    if-eqz p1, :cond_124f

    const-string v0, "SAMSUNG-SM-P907A"

    .line 815
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "SM-P900"

    .line 816
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "SM-P901"

    .line 817
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "SM-P905"

    .line 818
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "SM-P905F0"

    .line 819
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "SM-P905M"

    .line 820
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124c

    const-string v0, "SM-P905V"

    .line 821
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124f

    .line 822
    :cond_124c
    const-string p0, "Galaxy Note Pro 12.2"

    return-object p0

    :cond_124f
    if-eqz p0, :cond_12e1

    .line 824
    const-string v0, "tre3caltektt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "tre3caltelgt"

    .line 825
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "tre3calteskt"

    .line 826
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "tre3g"

    .line 827
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trelte"

    .line 828
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "treltektt"

    .line 829
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "treltelgt"

    .line 830
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trelteskt"

    .line 831
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trhplte"

    .line 832
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trlte"

    .line 833
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trlteatt"

    .line 834
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trltecan"

    .line 835
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trltechn"

    .line 836
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trltechnzh"

    .line 837
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trltespr"

    .line 838
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trltetmo"

    .line 839
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trlteusc"

    .line 840
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "trltevzw"

    .line 841
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    :cond_12e1
    if-eqz p1, :cond_13a6

    const-string v0, "SAMSUNG-SM-N910A"

    .line 842
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N9100"

    .line 843
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N9106W"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N9108V"

    .line 845
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N9109W"

    .line 846
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910C"

    .line 847
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910F"

    .line 848
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910G"

    .line 849
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910H"

    .line 850
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910K"

    .line 851
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910L"

    .line 852
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910P"

    .line 853
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910R4"

    .line 854
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910S"

    .line 855
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910T"

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910T2"

    .line 857
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910T3"

    .line 858
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910U"

    .line 859
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910V"

    .line 860
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910W8"

    .line 861
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N910X"

    .line 862
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N916K"

    .line 863
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N916L"

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a3

    const-string v0, "SM-N916S"

    .line 865
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a6

    .line 866
    :cond_13a3
    const-string p0, "Galaxy Note4"

    return-object p0

    :cond_13a6
    if-eqz p0, :cond_1420

    .line 868
    const-string v0, "noblelte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "noblelteacg"

    .line 869
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "noblelteatt"

    .line 870
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltebmc"

    .line 871
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltechn"

    .line 872
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltecmcc"

    .line 873
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltehk"

    .line 874
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltektt"

    .line 875
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltelgt"

    .line 876
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltelra"

    .line 877
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "noblelteskt"

    .line 878
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltespr"

    .line 879
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltetmo"

    .line 880
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "noblelteusc"

    .line 881
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "nobleltevzw"

    .line 882
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    :cond_1420
    if-eqz p1, :cond_14b5

    const-string v0, "SAMSUNG-SM-N920A"

    .line 883
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N9200"

    .line 884
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N9208"

    .line 885
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920C"

    .line 886
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920F"

    .line 887
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920G"

    .line 888
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920I"

    .line 889
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920K"

    .line 890
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920L"

    .line 891
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920P"

    .line 892
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920R4"

    .line 893
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920R6"

    .line 894
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920R7"

    .line 895
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920S"

    .line 896
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920T"

    .line 897
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920V"

    .line 898
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920W8"

    .line 899
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b2

    const-string v0, "SM-N920X"

    .line 900
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b5

    .line 901
    :cond_14b2
    const-string p0, "Galaxy Note5"

    return-object p0

    :cond_14b5
    if-eqz p0, :cond_1547

    .line 903
    const-string v0, "SC-01J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SCV34"

    .line 904
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "gracelte"

    .line 905
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceltektt"

    .line 906
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceltelgt"

    .line 907
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "gracelteskt"

    .line 908
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqlteacg"

    .line 909
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqlteatt"

    .line 910
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltebmc"

    .line 911
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltechn"

    .line 912
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltedcm"

    .line 913
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltelra"

    .line 914
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltespr"

    .line 915
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltetfnvzw"

    .line 916
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltetmo"

    .line 917
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqlteue"

    .line 918
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqlteusc"

    .line 919
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "graceqltevzw"

    .line 920
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    :cond_1547
    if-eqz p1, :cond_15e4

    const-string v0, "SAMSUNG-SM-N930A"

    .line 921
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SC-01J"

    .line 922
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SCV34"

    .line 923
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SGH-N037"

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N9300"

    .line 925
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930F"

    .line 926
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930K"

    .line 927
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930L"

    .line 928
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930P"

    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930R4"

    .line 930
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930R6"

    .line 931
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930R7"

    .line 932
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930S"

    .line 933
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930T"

    .line 934
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930U"

    .line 935
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930V"

    .line 936
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930VL"

    .line 937
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930W8"

    .line 938
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e1

    const-string v0, "SM-N930X"

    .line 939
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e4

    .line 940
    :cond_15e1
    const-string p0, "Galaxy Note7"

    return-object p0

    :cond_15e4
    if-eqz p0, :cond_162e

    .line 942
    const-string v0, "SC-01K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SCV37"

    .line 943
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatlte"

    .line 944
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatlteks"

    .line 945
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatqlte"

    .line 946
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatqltechn"

    .line 947
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatqltecmcc"

    .line 948
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatqltecs"

    .line 949
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "greatqlteue"

    .line 950
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    :cond_162e
    if-eqz p1, :cond_1683

    const-string v0, "SC-01K"

    .line 951
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SCV37"

    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N9500"

    .line 953
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N9508"

    .line 954
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N950F"

    .line 955
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N950N"

    .line 956
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N950U"

    .line 957
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N950U1"

    .line 958
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N950W"

    .line 959
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1680

    const-string v0, "SM-N950XN"

    .line 960
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1683

    .line 961
    :cond_1680
    const-string p0, "Galaxy Note8"

    return-object p0

    :cond_1683
    if-eqz p0, :cond_16ad

    .line 963
    const-string v0, "o5lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "o5ltechn"

    .line 964
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "on5ltemtr"

    .line 965
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "on5ltetfntmo"

    .line 966
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "on5ltetmo"

    .line 967
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    :cond_16ad
    if-eqz p1, :cond_16e2

    const-string v0, "SM-G5500"

    .line 968
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "SM-G550FY"

    .line 969
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "SM-G550T"

    .line 970
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "SM-G550T1"

    .line 971
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "SM-G550T2"

    .line 972
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16df

    const-string v0, "SM-S550TL"

    .line 973
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e2

    .line 974
    :cond_16df
    const-string p0, "Galaxy On5"

    return-object p0

    :cond_16e2
    if-eqz p0, :cond_16fc

    .line 976
    const-string v0, "o7lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1716

    const-string v0, "o7ltechn"

    .line 977
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1716

    const-string v0, "on7elte"

    .line 978
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1716

    :cond_16fc
    if-eqz p1, :cond_1719

    const-string v0, "SM-G6000"

    .line 979
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1716

    const-string v0, "SM-G600F"

    .line 980
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1716

    const-string v0, "SM-G600FY"

    .line 981
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1719

    .line 982
    :cond_1716
    const-string p0, "Galaxy On7"

    return-object p0

    :cond_1719
    if-eqz p0, :cond_17c3

    .line 984
    const-string v0, "GT-I9000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9000B"

    .line 985
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9000M"

    .line 986
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9000T"

    .line 987
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9003"

    .line 988
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9003L"

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9008L"

    .line 990
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9010"

    .line 991
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9018"

    .line 992
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9050"

    .line 993
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SC-02B"

    .line 994
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SCH-I500"

    .line 995
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SCH-S950C"

    .line 996
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SCH-i909"

    .line 997
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SGH-I897"

    .line 998
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SGH-T959V"

    .line 999
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SGH-T959W"

    .line 1000
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SHW-M110S"

    .line 1001
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SHW-M190S"

    .line 1002
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SPH-D700"

    .line 1003
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "loganlte"

    .line 1004
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    :cond_17c3
    if-eqz p1, :cond_1870

    const-string v0, "GT-I9000"

    .line 1005
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9000B"

    .line 1006
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9000M"

    .line 1007
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9000T"

    .line 1008
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9003"

    .line 1009
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9003L"

    .line 1010
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9008L"

    .line 1011
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9010"

    .line 1012
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9018"

    .line 1013
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-I9050"

    .line 1014
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "GT-S7275"

    .line 1015
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SAMSUNG-SGH-I897"

    .line 1016
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SC-02B"

    .line 1017
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SCH-I500"

    .line 1018
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SCH-S950C"

    .line 1019
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SCH-i909"

    .line 1020
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SGH-T959V"

    .line 1021
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SGH-T959W"

    .line 1022
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SHW-M110S"

    .line 1023
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SHW-M190S"

    .line 1024
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186d

    const-string v0, "SPH-D700"

    .line 1025
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1870

    .line 1026
    :cond_186d
    const-string p0, "Galaxy S"

    return-object p0

    :cond_1870
    if-eqz p0, :cond_188a

    .line 1028
    const-string v0, "kylechn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189c

    const-string v0, "kyleopen"

    .line 1029
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189c

    const-string v0, "kyletdcmcc"

    .line 1030
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189c

    :cond_188a
    if-eqz p1, :cond_189f

    const-string v0, "GT-S7562"

    .line 1031
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189c

    const-string v0, "GT-S7568"

    .line 1032
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189f

    .line 1033
    :cond_189c
    const-string p0, "Galaxy S Duos"

    return-object p0

    :cond_189f
    if-eqz p0, :cond_18a9

    .line 1035
    const-string v0, "kyleprods"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18bb

    :cond_18a9
    if-eqz p1, :cond_18be

    const-string v0, "GT-S7582"

    .line 1036
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18bb

    const-string v0, "GT-S7582L"

    .line 1037
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18be

    .line 1038
    :cond_18bb
    const-string p0, "Galaxy S Duos2"

    return-object p0

    :cond_18be
    if-eqz p0, :cond_18c8

    .line 1040
    const-string v0, "vivalto3gvn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18d2

    :cond_18c8
    if-eqz p1, :cond_18d5

    const-string v0, "SM-G313HZ"

    .line 1041
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d5

    .line 1042
    :cond_18d2
    const-string p0, "Galaxy S Duos3"

    return-object p0

    :cond_18d5
    if-eqz p0, :cond_19cf

    .line 1044
    const-string v0, "SC-03E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "c1att"

    .line 1045
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "c1ktt"

    .line 1046
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "c1lgt"

    .line 1047
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "c1skt"

    .line 1048
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2att"

    .line 1049
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2can"

    .line 1050
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2cri"

    .line 1051
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2dcm"

    .line 1052
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2lteMetroPCS"

    .line 1053
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2lterefreshspr"

    .line 1054
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2ltetmo"

    .line 1055
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2mtr"

    .line 1056
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2spi"

    .line 1057
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2spr"

    .line 1058
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2tfnspr"

    .line 1059
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2tfnvzw"

    .line 1060
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2tmo"

    .line 1061
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2usc"

    .line 1062
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2vmu"

    .line 1063
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2vzw"

    .line 1064
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "d2xar"

    .line 1065
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0"

    .line 1066
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0apt"

    .line 1067
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0chn"

    .line 1068
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0cmcc"

    .line 1069
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0ctc"

    .line 1070
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0ctcduos"

    .line 1071
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m0skt"

    .line 1072
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m3"

    .line 1073
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "m3dcm"

    .line 1074
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    :cond_19cf
    if-eqz p1, :cond_1ae4

    const-string v0, "GT-I9300"

    .line 1075
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "GT-I9300T"

    .line 1076
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "GT-I9305"

    .line 1077
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "GT-I9305N"

    .line 1078
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "GT-I9305T"

    .line 1079
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "GT-I9308"

    .line 1080
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "Gravity"

    .line 1081
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "GravityQuad"

    .line 1082
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SAMSUNG-SGH-I747"

    .line 1083
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SC-03E"

    .line 1084
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SC-06D"

    .line 1085
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-I535"

    .line 1086
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-I535PP"

    .line 1087
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-I939"

    .line 1088
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-I939D"

    .line 1089
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-L710"

    .line 1090
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-R530C"

    .line 1091
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-R530M"

    .line 1092
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-R530U"

    .line 1093
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-R530X"

    .line 1094
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-S960L"

    .line 1095
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SCH-S968C"

    .line 1096
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SGH-I747M"

    .line 1097
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SGH-I748"

    .line 1098
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SGH-T999"

    .line 1099
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SGH-T999L"

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SGH-T999N"

    .line 1101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SGH-T999V"

    .line 1102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SHV-E210K"

    .line 1103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SHV-E210L"

    .line 1104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SHV-E210S"

    .line 1105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SHW-M440S"

    .line 1106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SPH-L710"

    .line 1107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae1

    const-string v0, "SPH-L710T"

    .line 1108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae4

    .line 1109
    :cond_1ae1
    const-string p0, "Galaxy S3"

    return-object p0

    :cond_1ae4
    if-eqz p0, :cond_1b0e

    .line 1111
    const-string v0, "golden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "goldenlteatt"

    .line 1112
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "goldenltebmc"

    .line 1113
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "goldenltevzw"

    .line 1114
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "goldenve3g"

    .line 1115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    :cond_1b0e
    if-eqz p1, :cond_1b53

    const-string v0, "GT-I8190"

    .line 1116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "GT-I8190L"

    .line 1117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "GT-I8190N"

    .line 1118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "GT-I8190T"

    .line 1119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "GT-I8200L"

    .line 1120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "SAMSUNG-SM-G730A"

    .line 1121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "SM-G730V"

    .line 1122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b50

    const-string v0, "SM-G730W8"

    .line 1123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b53

    .line 1124
    :cond_1b50
    const-string p0, "Galaxy S3 Mini"

    return-object p0

    :cond_1b53
    if-eqz p0, :cond_1b65

    .line 1126
    const-string v0, "goldenve3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7f

    const-string v0, "goldenvess3g"

    .line 1127
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7f

    :cond_1b65
    if-eqz p1, :cond_1b82

    const-string v0, "GT-I8200"

    .line 1128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7f

    const-string v0, "GT-I8200N"

    .line 1129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7f

    const-string v0, "GT-I8200Q"

    .line 1130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b82

    .line 1131
    :cond_1b7f
    const-string p0, "Galaxy S3 Mini Value Edition"

    return-object p0

    :cond_1b82
    if-eqz p0, :cond_1ba4

    .line 1133
    const-string v0, "s3ve3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbe

    const-string v0, "s3ve3gdd"

    .line 1134
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbe

    const-string v0, "s3ve3gds"

    .line 1135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbe

    const-string v0, "s3ve3gdsdd"

    .line 1136
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbe

    :cond_1ba4
    if-eqz p1, :cond_1bc1

    const-string v0, "GT-I9300I"

    .line 1137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbe

    const-string v0, "GT-I9301I"

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbe

    const-string v0, "GT-I9301Q"

    .line 1139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc1

    .line 1140
    :cond_1bbe
    const-string p0, "Galaxy S3 Neo"

    return-object p0

    :cond_1bc1
    if-eqz p0, :cond_1cab

    .line 1142
    const-string v0, "SC-04E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "ja3g"

    .line 1143
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "ja3gduosctc"

    .line 1144
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jaltektt"

    .line 1145
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jaltelgt"

    .line 1146
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jalteskt"

    .line 1147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jflte"

    .line 1148
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jflteMetroPCS"

    .line 1149
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jflteaio"

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jflteatt"

    .line 1151
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltecan"

    .line 1152
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltecri"

    .line 1153
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltecsp"

    .line 1154
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltelra"

    .line 1155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jflterefreshspr"

    .line 1156
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltespr"

    .line 1157
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltetfnatt"

    .line 1158
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltetfntmo"

    .line 1159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltetmo"

    .line 1160
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jflteusc"

    .line 1161
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltevzw"

    .line 1162
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfltevzwpp"

    .line 1163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jftdd"

    .line 1164
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfvelte"

    .line 1165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jfwifi"

    .line 1166
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "jsglte"

    .line 1167
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "ks01lte"

    .line 1168
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "ks01ltektt"

    .line 1169
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "ks01ltelgt"

    .line 1170
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    :cond_1cab
    if-eqz p1, :cond_1dc0

    const-string v0, "GT-I9500"

    .line 1171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9505"

    .line 1172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9505X"

    .line 1173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9506"

    .line 1174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9507"

    .line 1175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9507V"

    .line 1176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9508"

    .line 1177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9508C"

    .line 1178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9508V"

    .line 1179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9515"

    .line 1180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "GT-I9515L"

    .line 1181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SAMSUNG-SGH-I337"

    .line 1182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SAMSUNG-SGH-I337Z"

    .line 1183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SC-04E"

    .line 1184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-I545"

    .line 1185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-I545L"

    .line 1186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-I545PP"

    .line 1187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-I959"

    .line 1188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-R970"

    .line 1189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-R970C"

    .line 1190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SCH-R970X"

    .line 1191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SGH-I337M"

    .line 1192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SGH-M919"

    .line 1193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SGH-M919N"

    .line 1194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SGH-M919V"

    .line 1195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SGH-S970G"

    .line 1196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SHV-E300K"

    .line 1197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SHV-E300L"

    .line 1198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SHV-E300S"

    .line 1199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SHV-E330K"

    .line 1200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SHV-E330L"

    .line 1201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SM-S975L"

    .line 1202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SPH-L720"

    .line 1203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dbd

    const-string v0, "SPH-L720T"

    .line 1204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc0

    .line 1205
    :cond_1dbd
    const-string p0, "Galaxy S4"

    return-object p0

    :cond_1dc0
    if-eqz p0, :cond_1e2a

    .line 1207
    const-string v0, "serrano3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranods"

    .line 1208
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranolte"

    .line 1209
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranoltebmc"

    .line 1210
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranoltektt"

    .line 1211
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranoltekx"

    .line 1212
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranoltelra"

    .line 1213
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranoltespr"

    .line 1214
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranolteusc"

    .line 1215
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranoltevzw"

    .line 1216
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranove3g"

    .line 1217
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranovelte"

    .line 1218
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "serranovolteatt"

    .line 1219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    :cond_1e2a
    if-eqz p1, :cond_1eb7

    const-string v0, "GT-I9190"

    .line 1220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9192"

    .line 1221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9192I"

    .line 1222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9195"

    .line 1223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9195I"

    .line 1224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9195L"

    .line 1225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9195T"

    .line 1226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9195X"

    .line 1227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "GT-I9197"

    .line 1228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SAMSUNG-SGH-I257"

    .line 1229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SCH-I435"

    .line 1230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SCH-I435L"

    .line 1231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SCH-R890"

    .line 1232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SGH-I257M"

    .line 1233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SHV-E370D"

    .line 1234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SHV-E370K"

    .line 1235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb4

    const-string v0, "SPH-L520"

    .line 1236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb7

    .line 1237
    :cond_1eb4
    const-string p0, "Galaxy S4 Mini"

    return-object p0

    :cond_1eb7
    if-eqz p0, :cond_1f71

    .line 1239
    const-string v0, "SC-04F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SCL23"

    .line 1240
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "k3g"

    .line 1241
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klte"

    .line 1242
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteMetroPCS"

    .line 1243
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteacg"

    .line 1244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteaio"

    .line 1245
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteatt"

    .line 1246
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltecan"

    .line 1247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteduoszn"

    .line 1248
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltektt"

    .line 1249
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltelgt"

    .line 1250
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltelra"

    .line 1251
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteskt"

    .line 1252
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltespr"

    .line 1253
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltetfnvzw"

    .line 1254
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltetmo"

    .line 1255
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "klteusc"

    .line 1256
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kltevzw"

    .line 1257
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "kwifi"

    .line 1258
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "lentisltektt"

    .line 1259
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "lentisltelgt"

    .line 1260
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "lentislteskt"

    .line 1261
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    :cond_1f71
    if-eqz p1, :cond_206e

    const-string v0, "SAMSUNG-SM-G900A"

    .line 1262
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SAMSUNG-SM-G900AZ"

    .line 1263
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SC-04F"

    .line 1264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SCL23"

    .line 1265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G9006W"

    .line 1266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G9008W"

    .line 1267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G9009W"

    .line 1268
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900F"

    .line 1269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900FQ"

    .line 1270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900H"

    .line 1271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900I"

    .line 1272
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900K"

    .line 1273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900L"

    .line 1274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900M"

    .line 1275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900MD"

    .line 1276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900P"

    .line 1277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900R4"

    .line 1278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900R6"

    .line 1279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900R7"

    .line 1280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900S"

    .line 1281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900T"

    .line 1282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900T1"

    .line 1283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900T3"

    .line 1284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900T4"

    .line 1285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900V"

    .line 1286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900W8"

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G900X"

    .line 1288
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G906K"

    .line 1289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G906L"

    .line 1290
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-G906S"

    .line 1291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206b

    const-string v0, "SM-S903VL"

    .line 1292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206e

    .line 1293
    :cond_206b
    const-string p0, "Galaxy S5"

    return-object p0

    :cond_206e
    if-eqz p0, :cond_2080

    .line 1295
    const-string v0, "s5neolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209a

    const-string v0, "s5neoltecan"

    .line 1296
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209a

    :cond_2080
    if-eqz p1, :cond_209d

    const-string v0, "SM-G903F"

    .line 1297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209a

    const-string v0, "SM-G903M"

    .line 1298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209a

    const-string v0, "SM-G903W"

    .line 1299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209d

    .line 1300
    :cond_209a
    const-string p0, "Galaxy S5 Neo"

    return-object p0

    :cond_209d
    if-eqz p0, :cond_212f

    .line 1302
    const-string v0, "SC-05G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zeroflte"

    .line 1303
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zeroflteacg"

    .line 1304
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zeroflteaio"

    .line 1305
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zeroflteatt"

    .line 1306
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltebmc"

    .line 1307
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltechn"

    .line 1308
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltectc"

    .line 1309
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltektt"

    .line 1310
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltelgt"

    .line 1311
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltelra"

    .line 1312
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltemtr"

    .line 1313
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zeroflteskt"

    .line 1314
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltespr"

    .line 1315
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltetfnvzw"

    .line 1316
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltetmo"

    .line 1317
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zeroflteusc"

    .line 1318
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "zerofltevzw"

    .line 1319
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    :cond_212f
    if-eqz p1, :cond_21e4

    const-string v0, "SAMSUNG-SM-G920A"

    .line 1320
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SAMSUNG-SM-G920AZ"

    .line 1321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SC-05G"

    .line 1322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G9200"

    .line 1323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G9208"

    .line 1324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G9209"

    .line 1325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920F"

    .line 1326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920I"

    .line 1327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920K"

    .line 1328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920L"

    .line 1329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920P"

    .line 1330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920R4"

    .line 1331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920R6"

    .line 1332
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920R7"

    .line 1333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920S"

    .line 1334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920T"

    .line 1335
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920T1"

    .line 1336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920V"

    .line 1337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920W8"

    .line 1338
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-G920X"

    .line 1339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-S906L"

    .line 1340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e1

    const-string v0, "SM-S907VL"

    .line 1341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e4

    .line 1342
    :cond_21e1
    const-string p0, "Galaxy S6"

    return-object p0

    :cond_21e4
    if-eqz p0, :cond_225e

    .line 1344
    const-string v0, "404SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SC-04G"

    .line 1345
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SCV31"

    .line 1346
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zerolte"

    .line 1347
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zerolteacg"

    .line 1348
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zerolteatt"

    .line 1349
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltebmc"

    .line 1350
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltechn"

    .line 1351
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltektt"

    .line 1352
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltelra"

    .line 1353
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zerolteskt"

    .line 1354
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltespr"

    .line 1355
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltetmo"

    .line 1356
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zerolteusc"

    .line 1357
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "zeroltevzw"

    .line 1358
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    :cond_225e
    if-eqz p1, :cond_22e3

    const-string v0, "404SC"

    .line 1359
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SAMSUNG-SM-G925A"

    .line 1360
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SC-04G"

    .line 1361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SCV31"

    .line 1362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G9250"

    .line 1363
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925I"

    .line 1364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925K"

    .line 1365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925P"

    .line 1366
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925R4"

    .line 1367
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925R6"

    .line 1368
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925R7"

    .line 1369
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925S"

    .line 1370
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925T"

    .line 1371
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925V"

    .line 1372
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925W8"

    .line 1373
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e0

    const-string v0, "SM-G925X"

    .line 1374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22e3

    .line 1375
    :cond_22e0
    const-string p0, "Galaxy S6 Edge"

    return-object p0

    :cond_22e3
    if-eqz p0, :cond_2345

    .line 1377
    const-string v0, "zenlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenlteatt"

    .line 1378
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltebmc"

    .line 1379
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltechn"

    .line 1380
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltektt"

    .line 1381
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltekx"

    .line 1382
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltelgt"

    .line 1383
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenlteskt"

    .line 1384
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltespr"

    .line 1385
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltetmo"

    .line 1386
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenlteusc"

    .line 1387
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "zenltevzw"

    .line 1388
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    :cond_2345
    if-eqz p1, :cond_23ca

    const-string v0, "SAMSUNG-SM-G928A"

    .line 1389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G9280"

    .line 1390
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G9287C"

    .line 1391
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928C"

    .line 1392
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928G"

    .line 1393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928I"

    .line 1394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928K"

    .line 1395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928L"

    .line 1396
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928N0"

    .line 1397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928P"

    .line 1398
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928R4"

    .line 1399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928S"

    .line 1400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928T"

    .line 1401
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928V"

    .line 1402
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928W8"

    .line 1403
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c7

    const-string v0, "SM-G928X"

    .line 1404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23ca

    .line 1405
    :cond_23c7
    const-string p0, "Galaxy S6 Edge+"

    return-object p0

    :cond_23ca
    if-eqz p0, :cond_245c

    .line 1407
    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroltebmc"

    .line 1408
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroltektt"

    .line 1409
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroltelgt"

    .line 1410
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "herolteskt"

    .line 1411
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqlteacg"

    .line 1412
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqlteaio"

    .line 1413
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqlteatt"

    .line 1414
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltecctvzw"

    .line 1415
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltechn"

    .line 1416
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltelra"

    .line 1417
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltemtr"

    .line 1418
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltespr"

    .line 1419
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltetfnvzw"

    .line 1420
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltetmo"

    .line 1421
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqlteue"

    .line 1422
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqlteusc"

    .line 1423
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "heroqltevzw"

    .line 1424
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    :cond_245c
    if-eqz p1, :cond_2501

    const-string v0, "SAMSUNG-SM-G930A"

    .line 1425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SAMSUNG-SM-G930AZ"

    .line 1426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G9300"

    .line 1427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G9308"

    .line 1428
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930F"

    .line 1429
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930K"

    .line 1430
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930L"

    .line 1431
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930P"

    .line 1432
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930R4"

    .line 1433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930R6"

    .line 1434
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930R7"

    .line 1435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930S"

    .line 1436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930T"

    .line 1437
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930T1"

    .line 1438
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930U"

    .line 1439
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930V"

    .line 1440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930VC"

    .line 1441
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930VL"

    .line 1442
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930W8"

    .line 1443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24fe

    const-string v0, "SM-G930X"

    .line 1444
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2501

    .line 1445
    :cond_24fe
    const-string p0, "Galaxy S7"

    return-object p0

    :cond_2501
    if-eqz p0, :cond_2563

    .line 1447
    const-string v0, "SC-02H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SCV33"

    .line 1448
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2lte"

    .line 1449
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2ltebmc"

    .line 1450
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2ltektt"

    .line 1451
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2lteskt"

    .line 1452
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2qlteatt"

    .line 1453
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2qltecctvzw"

    .line 1454
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2qltespr"

    .line 1455
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2qltetmo"

    .line 1456
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2qlteusc"

    .line 1457
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "hero2qltevzw"

    .line 1458
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    :cond_2563
    if-eqz p1, :cond_25c8

    const-string v0, "SAMSUNG-SM-G935A"

    .line 1459
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SC-02H"

    .line 1460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SCV33"

    .line 1461
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935K"

    .line 1462
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935P"

    .line 1463
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935R4"

    .line 1464
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935S"

    .line 1465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935T"

    .line 1466
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935V"

    .line 1467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935VC"

    .line 1468
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935W8"

    .line 1469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c5

    const-string v0, "SM-G935X"

    .line 1470
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c8

    .line 1471
    :cond_25c5
    const-string p0, "Galaxy S7 Edge"

    return-object p0

    :cond_25c8
    if-eqz p0, :cond_2612

    .line 1473
    const-string v0, "SC-02J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SCV36"

    .line 1474
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamlte"

    .line 1475
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamlteks"

    .line 1476
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamqltecan"

    .line 1477
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamqltechn"

    .line 1478
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamqltecmcc"

    .line 1479
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamqltesq"

    .line 1480
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "dreamqlteue"

    .line 1481
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    :cond_2612
    if-eqz p1, :cond_265f

    const-string v0, "SC-02J"

    .line 1482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SCV36"

    .line 1483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G9500"

    .line 1484
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G9508"

    .line 1485
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G950F"

    .line 1486
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G950N"

    .line 1487
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G950U"

    .line 1488
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G950U1"

    .line 1489
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265c

    const-string v0, "SM-G950W"

    .line 1490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_265f

    .line 1491
    :cond_265c
    const-string p0, "Galaxy S8"

    return-object p0

    :cond_265f
    if-eqz p0, :cond_26a1

    .line 1493
    const-string v0, "SC-03J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SCV35"

    .line 1494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "dream2lte"

    .line 1495
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "dream2lteks"

    .line 1496
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "dream2qltecan"

    .line 1497
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "dream2qltechn"

    .line 1498
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "dream2qltesq"

    .line 1499
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "dream2qlteue"

    .line 1500
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    :cond_26a1
    if-eqz p1, :cond_26e6

    const-string v0, "SC-03J"

    .line 1501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SCV35"

    .line 1502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SM-G9550"

    .line 1503
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SM-G955F"

    .line 1504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SM-G955N"

    .line 1505
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SM-G955U"

    .line 1506
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SM-G955U1"

    .line 1507
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26e3

    const-string v0, "SM-G955W"

    .line 1508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e6

    .line 1509
    :cond_26e3
    const-string p0, "Galaxy S8+"

    return-object p0

    :cond_26e6
    if-eqz p0, :cond_2730

    .line 1511
    const-string v0, "SC-02K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SCV38"

    .line 1512
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starlte"

    .line 1513
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starlteks"

    .line 1514
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starqltechn"

    .line 1515
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starqltecmcc"

    .line 1516
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starqltecs"

    .line 1517
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starqltesq"

    .line 1518
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "starqlteue"

    .line 1519
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    :cond_2730
    if-eqz p1, :cond_277d

    const-string v0, "SC-02K"

    .line 1520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SCV38"

    .line 1521
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G9600"

    .line 1522
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G9608"

    .line 1523
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G960F"

    .line 1524
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G960N"

    .line 1525
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G960U"

    .line 1526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G960U1"

    .line 1527
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277a

    const-string v0, "SM-G960W"

    .line 1528
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_277d

    .line 1529
    :cond_277a
    const-string p0, "Galaxy S9"

    return-object p0

    :cond_277d
    if-eqz p0, :cond_27bf

    .line 1531
    const-string v0, "SC-03K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SCV39"

    .line 1532
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "star2lte"

    .line 1533
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "star2lteks"

    .line 1534
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "star2qltechn"

    .line 1535
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "star2qltecs"

    .line 1536
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "star2qltesq"

    .line 1537
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "star2qlteue"

    .line 1538
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    :cond_27bf
    if-eqz p1, :cond_2804

    const-string v0, "SC-03K"

    .line 1539
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SCV39"

    .line 1540
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SM-G9650"

    .line 1541
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SM-G965F"

    .line 1542
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SM-G965N"

    .line 1543
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SM-G965U"

    .line 1544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SM-G965U1"

    .line 1545
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2801

    const-string v0, "SM-G965W"

    .line 1546
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2804

    .line 1547
    :cond_2801
    const-string p0, "Galaxy S9+"

    return-object p0

    :cond_2804
    if-eqz p0, :cond_285e

    .line 1549
    const-string v0, "GT-P7500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "GT-P7500D"

    .line 1550
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "GT-P7503"

    .line 1551
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "GT-P7510"

    .line 1552
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SC-01D"

    .line 1553
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SCH-I905"

    .line 1554
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SGH-T859"

    .line 1555
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M300W"

    .line 1556
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M380K"

    .line 1557
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M380S"

    .line 1558
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M380W"

    .line 1559
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    :cond_285e
    if-eqz p1, :cond_28bb

    const-string v0, "GT-P7500"

    .line 1560
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "GT-P7500D"

    .line 1561
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "GT-P7503"

    .line 1562
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "GT-P7510"

    .line 1563
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SC-01D"

    .line 1564
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SCH-I905"

    .line 1565
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SGH-T859"

    .line 1566
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M300W"

    .line 1567
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M380K"

    .line 1568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M380S"

    .line 1569
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b8

    const-string v0, "SHW-M380W"

    .line 1570
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28bb

    .line 1571
    :cond_28b8
    const-string p0, "Galaxy Tab 10.1"

    return-object p0

    :cond_28bb
    if-eqz p0, :cond_28fd

    .line 1573
    const-string v0, "GT-P6200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6200L"

    .line 1574
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6201"

    .line 1575
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6210"

    .line 1576
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6211"

    .line 1577
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "SC-02D"

    .line 1578
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "SGH-T869"

    .line 1579
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "SHW-M430W"

    .line 1580
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    :cond_28fd
    if-eqz p1, :cond_2942

    const-string v0, "GT-P6200"

    .line 1581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6200L"

    .line 1582
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6201"

    .line 1583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6210"

    .line 1584
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "GT-P6211"

    .line 1585
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "SC-02D"

    .line 1586
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "SGH-T869"

    .line 1587
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293f

    const-string v0, "SHW-M430W"

    .line 1588
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2942

    .line 1589
    :cond_293f
    const-string p0, "Galaxy Tab 7.0 Plus"

    return-object p0

    :cond_2942
    if-eqz p0, :cond_298c

    .line 1591
    const-string v0, "gteslteatt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesltebmc"

    .line 1592
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesltelgt"

    .line 1593
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gteslteskt"

    .line 1594
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesltetmo"

    .line 1595
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesltetw"

    .line 1596
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesltevzw"

    .line 1597
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesqltespr"

    .line 1598
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "gtesqlteusc"

    .line 1599
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    :cond_298c
    if-eqz p1, :cond_29d9

    const-string v0, "SAMSUNG-SM-T377A"

    .line 1600
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T375L"

    .line 1601
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T375S"

    .line 1602
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T3777"

    .line 1603
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T377P"

    .line 1604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T377R4"

    .line 1605
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T377T"

    .line 1606
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T377V"

    .line 1607
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d6

    const-string v0, "SM-T377W"

    .line 1608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d9

    .line 1609
    :cond_29d6
    const-string p0, "Galaxy Tab E 8.0"

    return-object p0

    :cond_29d9
    if-eqz p0, :cond_2a03

    .line 1611
    const-string v0, "gtel3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "gtelltevzw"

    .line 1612
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "gtelwifi"

    .line 1613
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "gtelwifichn"

    .line 1614
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "gtelwifiue"

    .line 1615
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    :cond_2a03
    if-eqz p1, :cond_2a40

    const-string v0, "SM-T560"

    .line 1616
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "SM-T560NU"

    .line 1617
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "SM-T561"

    .line 1618
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "SM-T561M"

    .line 1619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "SM-T561Y"

    .line 1620
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "SM-T562"

    .line 1621
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3d

    const-string v0, "SM-T567V"

    .line 1622
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a40

    .line 1623
    :cond_2a3d
    const-string p0, "Galaxy Tab E 9.6"

    return-object p0

    :cond_2a40
    if-eqz p0, :cond_2ab2

    .line 1625
    const-string v0, "403SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degas2wifi"

    .line 1626
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degas2wifibmwchn"

    .line 1627
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degas3g"

    .line 1628
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degaslte"

    .line 1629
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degasltespr"

    .line 1630
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degasltevzw"

    .line 1631
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degasvelte"

    .line 1632
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degasveltechn"

    .line 1633
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degaswifi"

    .line 1634
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degaswifibmwzc"

    .line 1635
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degaswifidtv"

    .line 1636
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degaswifiopenbnn"

    .line 1637
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "degaswifiue"

    .line 1638
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    :cond_2ab2
    if-eqz p1, :cond_2b3f

    const-string v0, "403SC"

    .line 1639
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T230"

    .line 1640
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T230NT"

    .line 1641
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T230NU"

    .line 1642
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T230NW"

    .line 1643
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T230NY"

    .line 1644
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T230X"

    .line 1645
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T231"

    .line 1646
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T232"

    .line 1647
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T235"

    .line 1648
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T235Y"

    .line 1649
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T237P"

    .line 1650
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T237V"

    .line 1651
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T239"

    .line 1652
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T2397"

    .line 1653
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T239C"

    .line 1654
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b3c

    const-string v0, "SM-T239M"

    .line 1655
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3f

    .line 1656
    :cond_2b3c
    const-string p0, "Galaxy Tab4 7.0"

    return-object p0

    :cond_2b3f
    if-eqz p0, :cond_2b71

    .line 1658
    const-string v0, "gvlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "gvlteatt"

    .line 1659
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "gvltevzw"

    .line 1660
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "gvltexsp"

    .line 1661
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "gvwifijpn"

    .line 1662
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "gvwifiue"

    .line 1663
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    :cond_2b71
    if-eqz p1, :cond_2b96

    const-string v0, "SAMSUNG-SM-T677A"

    .line 1664
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "SM-T670"

    .line 1665
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "SM-T677"

    .line 1666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b93

    const-string v0, "SM-T677V"

    .line 1667
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b96

    .line 1668
    :cond_2b93
    const-string p0, "Galaxy View"

    return-object p0

    :cond_2b96
    if-eqz p0, :cond_2ba3

    .line 1670
    const-string v0, "manta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ba3

    .line 1671
    const-string p0, "Nexus 10"

    return-object p0

    :cond_2ba3
    if-eqz p0, :cond_2bb5

    .line 1675
    const-string v0, "D2104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bc7

    const-string v0, "D2105"

    .line 1676
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bc7

    :cond_2bb5
    if-eqz p1, :cond_2bca

    const-string v0, "D2104"

    .line 1677
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bc7

    const-string v0, "D2105"

    .line 1678
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bca

    .line 1679
    :cond_2bc7
    const-string p0, "Xperia E1 dual"

    return-object p0

    :cond_2bca
    if-eqz p0, :cond_2bec

    .line 1681
    const-string v0, "D2202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    const-string v0, "D2203"

    .line 1682
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    const-string v0, "D2206"

    .line 1683
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    const-string v0, "D2243"

    .line 1684
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    :cond_2bec
    if-eqz p1, :cond_2c11

    const-string v0, "D2202"

    .line 1685
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    const-string v0, "D2203"

    .line 1686
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    const-string v0, "D2206"

    .line 1687
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0e

    const-string v0, "D2243"

    .line 1688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c11

    .line 1689
    :cond_2c0e
    const-string p0, "Xperia E3"

    return-object p0

    :cond_2c11
    if-eqz p0, :cond_2c2b

    .line 1691
    const-string v0, "E5603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c45

    const-string v0, "E5606"

    .line 1692
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c45

    const-string v0, "E5653"

    .line 1693
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c45

    :cond_2c2b
    if-eqz p1, :cond_2c48

    const-string v0, "E5603"

    .line 1694
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c45

    const-string v0, "E5606"

    .line 1695
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c45

    const-string v0, "E5653"

    .line 1696
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c48

    .line 1697
    :cond_2c45
    const-string p0, "Xperia M5"

    return-object p0

    :cond_2c48
    if-eqz p0, :cond_2c62

    .line 1699
    const-string v0, "E5633"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c7c

    const-string v0, "E5643"

    .line 1700
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c7c

    const-string v0, "E5663"

    .line 1701
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c7c

    :cond_2c62
    if-eqz p1, :cond_2c7f

    const-string v0, "E5633"

    .line 1702
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c7c

    const-string v0, "E5643"

    .line 1703
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c7c

    const-string v0, "E5663"

    .line 1704
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7f

    .line 1705
    :cond_2c7c
    const-string p0, "Xperia M5 Dual"

    return-object p0

    .line 1707
    :cond_2c7f
    const-string v0, "LT26i"

    if-eqz p0, :cond_2c89

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c91

    :cond_2c89
    if-eqz p1, :cond_2c94

    .line 1708
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c94

    .line 1709
    :cond_2c91
    const-string p0, "Xperia S"

    return-object p0

    :cond_2c94
    if-eqz p0, :cond_2cbe

    .line 1711
    const-string v1, "D5303"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5306"

    .line 1712
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5316"

    .line 1713
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5316N"

    .line 1714
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5322"

    .line 1715
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    :cond_2cbe
    if-eqz p1, :cond_2ceb

    const-string v1, "D5303"

    .line 1716
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5306"

    .line 1717
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5316"

    .line 1718
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5316N"

    .line 1719
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ce8

    const-string v1, "D5322"

    .line 1720
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ceb

    .line 1721
    :cond_2ce8
    const-string p0, "Xperia T2 Ultra"

    return-object p0

    :cond_2ceb
    if-eqz p0, :cond_2cf5

    .line 1723
    const-string v1, "txs03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d07

    :cond_2cf5
    if-eqz p1, :cond_2d0a

    const-string v1, "SGPT12"

    .line 1724
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d07

    const-string v1, "SGPT13"

    .line 1725
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d0a

    .line 1726
    :cond_2d07
    const-string p0, "Xperia Tablet S"

    return-object p0

    .line 1728
    :cond_2d0a
    const-string v1, "SGP321"

    const-string v2, "SGP311"

    if-eqz p0, :cond_2d2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    const-string v3, "SGP312"

    .line 1729
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    .line 1730
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    const-string v3, "SGP351"

    .line 1731
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    :cond_2d2c
    if-eqz p1, :cond_2d4d

    .line 1732
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    const-string v3, "SGP312"

    .line 1733
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    .line 1734
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d4a

    const-string v3, "SGP351"

    .line 1735
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d4d

    .line 1736
    :cond_2d4a
    const-string p0, "Xperia Tablet Z"

    return-object p0

    :cond_2d4d
    if-eqz p0, :cond_2d6f

    .line 1738
    const-string v3, "D6502"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    const-string v3, "D6503"

    .line 1739
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    const-string v3, "D6543"

    .line 1740
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    const-string v3, "SO-03F"

    .line 1741
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    :cond_2d6f
    if-eqz p1, :cond_2d94

    const-string v3, "D6502"

    .line 1742
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    const-string v3, "D6503"

    .line 1743
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    const-string v3, "D6543"

    .line 1744
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d91

    const-string v3, "SO-03F"

    .line 1745
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d94

    .line 1746
    :cond_2d91
    const-string p0, "Xperia Z2"

    return-object p0

    :cond_2d94
    if-eqz p0, :cond_2dde

    .line 1748
    const-string v3, "401SO"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6603"

    .line 1749
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6616"

    .line 1750
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6643"

    .line 1751
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6646"

    .line 1752
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6653"

    .line 1753
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "SO-01G"

    .line 1754
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "SOL26"

    .line 1755
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "leo"

    .line 1756
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    :cond_2dde
    if-eqz p1, :cond_2e23

    const-string v3, "401SO"

    .line 1757
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6603"

    .line 1758
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6616"

    .line 1759
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6643"

    .line 1760
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6646"

    .line 1761
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "D6653"

    .line 1762
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "SO-01G"

    .line 1763
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e20

    const-string v3, "SOL26"

    .line 1764
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e23

    .line 1765
    :cond_2e20
    const-string p0, "Xperia Z3"

    return-object p0

    :cond_2e23
    if-eqz p0, :cond_2e3d

    .line 1767
    const-string v3, "402SO"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e57

    const-string v3, "SO-03G"

    .line 1768
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e57

    const-string v3, "SOV31"

    .line 1769
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e57

    :cond_2e3d
    if-eqz p1, :cond_2e5a

    const-string v3, "402SO"

    .line 1770
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e57

    const-string v3, "SO-03G"

    .line 1771
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e57

    const-string v3, "SOV31"

    .line 1772
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e5a

    .line 1773
    :cond_2e57
    const-string p0, "Xperia Z4"

    return-object p0

    :cond_2e5a
    if-eqz p0, :cond_2e74

    .line 1775
    const-string v3, "E5803"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e8e

    const-string v3, "E5823"

    .line 1776
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e8e

    const-string v3, "SO-02H"

    .line 1777
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e8e

    :cond_2e74
    if-eqz p1, :cond_2e91

    const-string v3, "E5803"

    .line 1778
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e8e

    const-string v3, "E5823"

    .line 1779
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e8e

    const-string v3, "SO-02H"

    .line 1780
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e91

    .line 1781
    :cond_2e8e
    const-string p0, "Xperia Z5 Compact"

    return-object p0

    :cond_2e91
    if-eqz p0, :cond_2ea1

    .line 1785
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2eb1

    const-string v3, "SO-02D"

    .line 1786
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2eb1

    :cond_2ea1
    if-eqz p1, :cond_2eb4

    .line 1787
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2eb1

    const-string v0, "SO-02D"

    .line 1788
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2eb4

    .line 1789
    :cond_2eb1
    const-string p0, "Xperia S"

    return-object p0

    :cond_2eb4
    if-eqz p0, :cond_2ed2

    .line 1791
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ef0

    .line 1792
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ef0

    const-string v0, "SGP341"

    .line 1793
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ef0

    const-string v0, "SO-03E"

    .line 1794
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ef0

    :cond_2ed2
    if-eqz p1, :cond_2ef3

    .line 1795
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ef0

    .line 1796
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ef0

    const-string p0, "SGP341"

    .line 1797
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ef0

    const-string p0, "SO-03E"

    .line 1798
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2ef3

    .line 1799
    :cond_2ef0
    const-string p0, "Xperia Tablet Z"

    return-object p0

    :cond_2ef3
    return-object p2
.end method

.method public static with(Landroid/content/Context;)Lcom/jaredrummler/android/device/DeviceName$Request;
    .registers 3

    .line 110
    new-instance v0, Lcom/jaredrummler/android/device/DeviceName$Request;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaredrummler/android/device/DeviceName$Request;-><init>(Landroid/content/Context;Lcom/jaredrummler/android/device/DeviceName$1;)V

    return-object v0
.end method
