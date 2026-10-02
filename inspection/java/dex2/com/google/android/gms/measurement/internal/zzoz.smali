.class Lcom/google/android/gms/measurement/internal/zzoz;
.super Lcom/google/android/gms/measurement/internal/zzjq;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjs;


# instance fields
.field protected final zzg:Lcom/google/android/gms/measurement/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzt()Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjq;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    return-void
.end method
