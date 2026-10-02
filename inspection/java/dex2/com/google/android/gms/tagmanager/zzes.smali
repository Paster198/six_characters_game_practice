.class final Lcom/google/android/gms/tagmanager/zzes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/tagmanager/zzds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzds<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzds;Lcom/google/android/gms/internal/gtm/zzak;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzds<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzes;->zza:Lcom/google/android/gms/tagmanager/zzds;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzes;->zzb:Lcom/google/android/gms/internal/gtm/zzak;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzes;->zza:Lcom/google/android/gms/tagmanager/zzds;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzds;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzes;->zzb:Lcom/google/android/gms/internal/gtm/zzak;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    .line 2
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzX()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/gtm/zzak;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzes;->zzb:Lcom/google/android/gms/internal/gtm/zzak;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/tagmanager/zzds;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/zzds<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzes;->zza:Lcom/google/android/gms/tagmanager/zzds;

    return-object v0
.end method
