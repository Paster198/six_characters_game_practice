.class final Lcom/google/android/gms/internal/gtm/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcz;


# instance fields
.field final synthetic zza:Ljava/lang/Runnable;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzfn;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zzb:Lcom/google/android/gms/internal/gtm/zzfn;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zza:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zzb:Lcom/google/android/gms/internal/gtm/zzfn;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfn;->zzb(Lcom/google/android/gms/internal/gtm/zzfn;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zza:Ljava/lang/Runnable;

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
