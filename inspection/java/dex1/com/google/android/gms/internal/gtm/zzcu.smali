.class final Lcom/google/android/gms/internal/gtm/zzcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# instance fields
.field private zza:I

.field private zzb:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcu;->zza:I

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final getLogLevel()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzcu;->zza:I

    return v0
.end method

.method public final info(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final setLogLevel(I)V
    .registers 5

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzcu;->zza:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzcu;->zzb:Z

    if-nez p1, :cond_38

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x5b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DEBUG"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzcu;->zzb:Z

    :cond_38
    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
