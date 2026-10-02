.class public final Lcom/google/android/gms/internal/gtm/zzxt;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/gtm/zzvs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/gtm/zzvs;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzvs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzvs;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzxt;->zza:Lcom/google/android/gms/internal/gtm/zzvs;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzxt;)Lcom/google/android/gms/internal/gtm/zzvs;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzxt;->zza:Lcom/google/android/gms/internal/gtm/zzvs;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxt;->zza:Lcom/google/android/gms/internal/gtm/zzvs;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvr;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvr;->zzg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxs;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzxs;-><init>(Lcom/google/android/gms/internal/gtm/zzxt;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxr;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzxr;-><init>(Lcom/google/android/gms/internal/gtm/zzxt;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxt;->zza:Lcom/google/android/gms/internal/gtm/zzvs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvs;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/gtm/zzvs;
    .registers 1

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxt;->zza:Lcom/google/android/gms/internal/gtm/zzvs;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvs;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxt;->zza:Lcom/google/android/gms/internal/gtm/zzvs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvs;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/gtm/zztd;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
