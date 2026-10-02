.class final Lcom/google/android/gms/measurement/internal/zzic;
.super Landroidx/collection/LruCache;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzif;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbn:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zze(Lcom/google/android/gms/measurement/internal/zzif;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzc;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1b
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzd(Lcom/google/android/gms/measurement/internal/zzif;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzc;

    move-result-object p1

    return-object p1
.end method
