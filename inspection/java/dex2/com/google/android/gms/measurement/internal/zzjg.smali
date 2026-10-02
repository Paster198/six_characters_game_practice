.class final Lcom/google/android/gms/measurement/internal/zzjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzL()V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzah(Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method
