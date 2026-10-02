.class final Lcom/google/android/gms/internal/common/zzs;
.super Lcom/google/android/gms/internal/common/zzv;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/common/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/common/zzp;)V
    .registers 4

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/common/zzs;->zza:Lcom/google/android/gms/internal/common/zzp;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzv;-><init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final zzc(I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzs;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "index"

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/common/zzr;->zzc(IILjava/lang/String;)I

    :goto_b
    if-ge p1, v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzs;->zza:Lcom/google/android/gms/internal/common/zzp;

    .line 3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/common/zzp;->zza(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    return p1

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method final zzd(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
