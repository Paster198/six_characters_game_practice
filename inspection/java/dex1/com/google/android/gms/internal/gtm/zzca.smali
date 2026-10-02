.class final Lcom/google/android/gms/internal/gtm/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/content/ComponentName;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcb;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzca;->zzb:Lcom/google/android/gms/internal/gtm/zzcb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzca;->zza:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzca;->zzb:Lcom/google/android/gms/internal/gtm/zzcb;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzca;->zza:Landroid/content/ComponentName;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzcc;->zzb(Lcom/google/android/gms/internal/gtm/zzcc;Landroid/content/ComponentName;)V

    return-void
.end method
