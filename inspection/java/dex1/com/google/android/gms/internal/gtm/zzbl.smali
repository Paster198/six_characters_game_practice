.class final Lcom/google/android/gms/internal/gtm/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbq;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbl;->zzb:Lcom/google/android/gms/internal/gtm/zzbq;

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzbl;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbl;->zzb:Lcom/google/android/gms/internal/gtm/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzb(Lcom/google/android/gms/internal/gtm/zzbq;)Lcom/google/android/gms/internal/gtm/zzck;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzbl;->zza:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzck;->zzZ(J)V

    return-void
.end method
