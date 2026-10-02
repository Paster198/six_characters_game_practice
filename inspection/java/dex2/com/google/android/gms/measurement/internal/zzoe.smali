.class final Lcom/google/android/gms/measurement/internal/zzoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzpv;

.field final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzog;Lcom/google/android/gms/measurement/internal/zzpv;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzoe;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzoe;->zzb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoe;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzL()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzoe;->zzb:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzK(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzat()V

    return-void
.end method
