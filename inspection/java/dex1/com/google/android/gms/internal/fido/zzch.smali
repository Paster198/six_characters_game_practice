.class final Lcom/google/android/gms/internal/fido/zzch;
.super Lcom/google/android/gms/internal/fido/zzcc;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/fido/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzci;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzch;->zza:Lcom/google/android/gms/internal/fido/zzci;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzcc;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzch;->zza:Lcom/google/android/gms/internal/fido/zzci;

    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzci;->zza:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzcj;->zzk(Lcom/google/android/gms/internal/fido/zzcj;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzch;->zza:Lcom/google/android/gms/internal/fido/zzci;

    iget-object v2, v2, Lcom/google/android/gms/internal/fido/zzci;->zza:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-static {v2}, Lcom/google/android/gms/internal/fido/zzcj;->zze(Lcom/google/android/gms/internal/fido/zzcj;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzch;->zza:Lcom/google/android/gms/internal/fido/zzci;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzci;->zza:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcj;->size()I

    move-result v0

    return v0
.end method
