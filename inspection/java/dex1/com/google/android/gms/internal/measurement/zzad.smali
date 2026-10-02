.class final Lcom/google/android/gms/internal/measurement/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzae;

.field private zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzae;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzad;->zza:Lcom/google/android/gms/internal/measurement/zzae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzad;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzad;->zza:Lcom/google/android/gms/internal/measurement/zzae;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzad;->zzb:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v0

    if-ge v1, v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzad;->zza:Lcom/google/android/gms/internal/measurement/zzae;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzad;->zzb:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzad;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzad;->zzb:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    return-object v0

    .line 1
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzad;->zzb:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Out of bounds index: "

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
