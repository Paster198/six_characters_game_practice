.class final Lcom/google/android/gms/internal/fido/zzca;
.super Lcom/google/android/gms/internal/fido/zzcc;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/fido/zzcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcc;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzcc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    return-void
.end method

.method private final zzl(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    const-string v1, "index"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/fido/zzbm;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzca;->zzl(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzca;->zzl(I)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzca;->zzl(I)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->zzg(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/fido/zzcc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    return-object v0
.end method

.method public final zzg(II)Lcom/google/android/gms/internal/fido/zzcc;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/fido/zzbm;->zze(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzca;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->zzg(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcc;->zzf()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    return-object p1
.end method
