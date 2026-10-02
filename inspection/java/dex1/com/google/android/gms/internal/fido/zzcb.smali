.class final Lcom/google/android/gms/internal/fido/zzcb;
.super Lcom/google/android/gms/internal/fido/zzcc;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/fido/zzcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcc;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzc:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzcc;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/fido/zzcb;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/fido/zzbm;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzc:Lcom/google/android/gms/internal/fido/zzcc;

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzcb;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->zzg(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzc:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzby;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzcb;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzc:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzby;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzcb;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzc:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzby;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(II)Lcom/google/android/gms/internal/fido/zzcc;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/fido/zzbm;->zze(III)V

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcb;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcb;->zzc:Lcom/google/android/gms/internal/fido/zzcc;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->zzg(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    return-object p1
.end method
