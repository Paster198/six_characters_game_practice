.class public final Lcom/google/android/gms/analytics/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/analytics/zzt;


# static fields
.field private static final zza:Landroid/net/Uri;


# instance fields
.field private final zzb:Landroid/util/LogPrinter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/net/Uri$Builder;

    .line 1
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "local"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/zzg;->zza:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x4

    const-string v2, "GA/LogCatTransport"

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzb:Landroid/util/LogPrinter;

    return-void
.end method


# virtual methods
.method public final zzb()Landroid/net/Uri;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/zzg;->zza:Landroid/net/Uri;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/analytics/zzh;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzh;->zze()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/google/android/gms/analytics/zzf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/analytics/zzf;-><init>(Lcom/google/android/gms/analytics/zzg;)V

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_3f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/google/android/gms/analytics/zzj;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_3c

    .line 7
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzb:Landroid/util/LogPrinter;

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    return-void
.end method
