.class public final Lcom/google/android/gms/internal/auth/zzhe;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/zzff;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth/zzff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzff;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzhe;->zza:Lcom/google/android/gms/internal/auth/zzff;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/auth/zzhe;)Lcom/google/android/gms/internal/auth/zzff;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzhe;->zza:Lcom/google/android/gms/internal/auth/zzff;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhe;->zza:Lcom/google/android/gms/internal/auth/zzff;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzfe;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzfe;->zzf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzhd;-><init>(Lcom/google/android/gms/internal/auth/zzhe;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzhc;-><init>(Lcom/google/android/gms/internal/auth/zzhe;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhe;->zza:Lcom/google/android/gms/internal/auth/zzff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzff;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/auth/zzff;
    .registers 1

    return-object p0
.end method

.method public final zzg()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhe;->zza:Lcom/google/android/gms/internal/auth/zzff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzff;->zzg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
