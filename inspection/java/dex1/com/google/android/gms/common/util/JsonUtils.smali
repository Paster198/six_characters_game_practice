.class public final Lcom/google/android/gms/common/util/JsonUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zza:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzb:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_7

    :cond_6
    return v0

    :cond_7
    :goto_7
    const/4 v1, 0x0

    if-eqz p0, :cond_87

    if-nez p1, :cond_e

    goto/16 :goto_87

    .line 1
    :cond_e
    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_51

    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_51

    .line 11
    check-cast p0, Lorg/json/JSONObject;

    .line 12
    check-cast p1, Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eq v2, v3, :cond_25

    return v1

    .line 14
    :cond_25
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 15
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 18
    :try_start_3b
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    invoke-static {v4, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_4d} :catch_4f

    if-nez v3, :cond_29

    :catch_4f
    :cond_4f
    return v1

    :cond_50
    return v0

    .line 2
    :cond_51
    instance-of v2, p0, Lorg/json/JSONArray;

    if-eqz v2, :cond_82

    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_82

    .line 4
    check-cast p0, Lorg/json/JSONArray;

    .line 5
    check-cast p1, Lorg/json/JSONArray;

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v2, v3, :cond_81

    move v2, v1

    .line 7
    :goto_68
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 8
    :try_start_6e
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_7a} :catch_7f

    if-eqz v3, :cond_7f

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :catch_7f
    :cond_7f
    return v1

    :cond_80
    return v0

    :cond_81
    return v1

    .line 3
    :cond_82
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_87
    :goto_87
    return v1
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzb:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6b

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuffer;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    :cond_1a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_65

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5f

    const/16 v3, 0x22

    if-eq v2, v3, :cond_59

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_53

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_4d

    packed-switch v2, :pswitch_data_76

    goto :goto_d

    .line 10
    :pswitch_3b
    const-string v2, "\\\\n"

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :pswitch_41
    const-string v2, "\\\\t"

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :pswitch_47
    const-string v2, "\\\\b"

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    .line 5
    :cond_4d
    const-string v2, "\\\\\\\\"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :cond_53
    const-string v2, "\\\\/"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :cond_59
    const-string v2, "\\\\\\\""

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :cond_5f
    const-string v2, "\\\\r"

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :cond_65
    const-string v2, "\\\\f"

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :cond_6b
    if-nez v1, :cond_6e

    goto :goto_75

    .line 14
    :cond_6e
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_75
    :goto_75
    return-object p0

    :pswitch_data_76
    .packed-switch 0x8
        :pswitch_47
        :pswitch_41
        :pswitch_3b
    .end packed-switch
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zza:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7f

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    :cond_1e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_79

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_73

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x62

    if-eq v2, v3, :cond_67

    const/16 v3, 0x66

    if-eq v2, v3, :cond_61

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x72

    if-eq v2, v3, :cond_55

    const/16 v3, 0x74

    if-ne v2, v3, :cond_4d

    const-string v2, "\t"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    .line 16
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Found an escaped character that should never be."

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_55
    const-string v2, "\r"

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_5b
    const-string v2, "\n"

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_61
    const-string v2, "\u000c"

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_67
    const-string v2, "\u0008"

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_6d
    const-string v2, "\\\\"

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_73
    const-string v2, "/"

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_79
    const-string v2, "\""

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_7f
    if-nez v1, :cond_82

    return-object p0

    .line 16
    :cond_82
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_89
    return-object p0
.end method
