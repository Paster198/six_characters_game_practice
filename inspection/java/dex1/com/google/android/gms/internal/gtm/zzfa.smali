.class public final Lcom/google/android/gms/internal/gtm/zzfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/analytics/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzcu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/analytics/Logger;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfb;->zza()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :cond_a
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_41

    if-eqz p1, :cond_35

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    :cond_35
    move-object p1, p0

    .line 4
    :goto_36
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_41
    :goto_41
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    if-eqz p1, :cond_48

    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/analytics/Logger;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static zzd(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfb;->zza()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    goto :goto_1c

    :cond_a
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_23

    .line 4
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public static zze(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfb;->zza()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    goto :goto_1c

    :cond_a
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_23

    .line 4
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public static zzf(I)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/Logger;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v0

    if-gt v0, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method
