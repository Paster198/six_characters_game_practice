.class final Lcom/google/android/gms/internal/fido/zzbz;
.super Lcom/google/android/gms/internal/fido/zzbu;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fido/zzcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcc;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/fido/zzbu;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzbz;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbz;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
