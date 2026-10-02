.class public Lcom/google/android/gms/internal/gtm/zzuu;
.super Lcom/google/android/gms/internal/gtm/zzut;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzuv<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzuu<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/gtm/zzut<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzuv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzut;-><init>(Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzB()Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuu;->zzH()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzD()Lcom/google/android/gms/internal/gtm/zzwk;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuu;->zzH()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzF()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuu;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuv;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzc()Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    return-void
.end method

.method public final zzH()Lcom/google/android/gms/internal/gtm/zzuv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzuu;->zzb:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuu;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuv;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuu;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuv;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzg()V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzB()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuv;

    return-object v0
.end method
