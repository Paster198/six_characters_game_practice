.class Lcom/google/android/gms/internal/gtm/zzcs;
.super Lcom/google/android/gms/internal/gtm/zzbr;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/gtm/zzcq;",
        ">",
        "Lcom/google/android/gms/internal/gtm/zzbr;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/gtm/zzcr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzcr<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzcr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzbv;",
            "Lcom/google/android/gms/internal/gtm/zzcr<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Lcom/google/android/gms/internal/gtm/zzcr;

    return-void
.end method

.method private final zzb(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/internal/gtm/zzcq;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Error parsing tracker configuration file"

    .line 1
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_9
    const/4 v2, 0x1

    if-eq v1, v2, :cond_d9

    .line 3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ca

    .line 4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenname"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_23} :catch_d5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_d0

    const-string v3, "name"

    const/4 v4, 0x0

    if-eqz v2, :cond_47

    .line 6
    :try_start_28
    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Lcom/google/android/gms/internal/gtm/zzcr;

    .line 9
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcr;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 29
    :cond_47
    const-string v2, "string"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 11
    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    if-eqz v2, :cond_ca

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Lcom/google/android/gms/internal/gtm/zzcr;

    .line 14
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcr;->zze(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    :cond_69
    const-string v2, "bool"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 16
    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_87} :catch_d5
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_87} :catch_d0

    if-nez v3, :cond_ca

    .line 19
    :try_start_89
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Lcom/google/android/gms/internal/gtm/zzcr;

    .line 20
    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/gtm/zzcr;->zzc(Ljava/lang/String;Z)V
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_92} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_92} :catch_d5
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_92} :catch_d0

    goto :goto_ca

    :catch_93
    move-exception v1

    .line 30
    :try_start_94
    const-string v3, "Error parsing bool configuration value"

    .line 21
    invoke-virtual {p0, v3, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ca

    .line 20
    :cond_9a
    const-string v2, "integer"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 23
    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_b8} :catch_d5
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_b8} :catch_d0

    if-nez v3, :cond_ca

    .line 26
    :try_start_ba
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Lcom/google/android/gms/internal/gtm/zzcr;

    .line 27
    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/gtm/zzcr;->zzd(Ljava/lang/String;I)V
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_c3} :catch_c4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_c3} :catch_d5
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c3} :catch_d0

    goto :goto_ca

    :catch_c4
    move-exception v1

    .line 21
    :try_start_c5
    const-string v3, "Error parsing int configuration value"

    .line 28
    invoke-virtual {p0, v3, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_ca
    :goto_ca
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_ce} :catch_d5
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ce} :catch_d0

    goto/16 :goto_9

    :catch_d0
    move-exception p1

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d9

    :catch_d5
    move-exception p1

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Lcom/google/android/gms/internal/gtm/zzcr;

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzcr;->zza()Lcom/google/android/gms/internal/gtm/zzcq;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/gtm/zzcq;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzt()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzb()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzcs;->zzb(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/internal/gtm/zzcq;

    move-result-object p1
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    const-string v0, "inflate() called with unknown resourceId"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
