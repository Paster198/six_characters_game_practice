.class final Lcom/google/android/gms/measurement/internal/zzpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzpw;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzpw;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpk;->zza:Lcom/google/android/gms/measurement/internal/zzpw;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpk;->zzb:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpk;->zzb:Lcom/google/android/gms/measurement/internal/zzpv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpk;->zza:Lcom/google/android/gms/measurement/internal/zzpw;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzH(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzpw;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzam()V

    return-void
.end method
