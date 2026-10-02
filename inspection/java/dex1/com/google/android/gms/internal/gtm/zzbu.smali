.class final Lcom/google/android/gms/internal/gtm/zzbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbu;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbu;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzn()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, "Job execution failed"

    .line 1
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
