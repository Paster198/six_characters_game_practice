.class final Lcom/google/android/gms/measurement/internal/zzmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzmo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zza:Lcom/google/android/gms/measurement/internal/zzmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zza:Lcom/google/android/gms/measurement/internal/zzmo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzh(Lcom/google/android/gms/measurement/internal/zzmo;)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    return-void
.end method
