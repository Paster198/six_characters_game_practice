.class final Lcom/google/android/gms/internal/gtm/zzci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzck;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzci;->zza:Lcom/google/android/gms/internal/gtm/zzck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzci;->zza:Lcom/google/android/gms/internal/gtm/zzck;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzck;->zzab()V

    return-void
.end method
