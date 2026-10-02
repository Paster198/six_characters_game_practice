.class final Lcom/google/android/gms/internal/gtm/zzbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzex;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbq;Lcom/google/android/gms/internal/gtm/zzex;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zzb:Lcom/google/android/gms/internal/gtm/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zza:Lcom/google/android/gms/internal/gtm/zzex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zzb:Lcom/google/android/gms/internal/gtm/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzb(Lcom/google/android/gms/internal/gtm/zzbq;)Lcom/google/android/gms/internal/gtm/zzck;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zza:Lcom/google/android/gms/internal/gtm/zzex;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzck;->zzj(Lcom/google/android/gms/internal/gtm/zzex;)V

    return-void
.end method
