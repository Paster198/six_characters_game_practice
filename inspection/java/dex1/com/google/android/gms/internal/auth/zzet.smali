.class public Lcom/google/android/gms/internal/auth/zzet;
.super Lcom/google/android/gms/internal/auth/zzdp;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzev<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzet<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/zzdp<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/auth/zzev;

.field private final zzb:Lcom/google/android/gms/internal/auth/zzev;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/auth/zzev;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzet;->zzb:Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzev;->zzm()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzev;->zzc()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzet;->zza:Lcom/google/android/gms/internal/auth/zzev;

    return-void

    .line 1
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzet;->zzb()Lcom/google/android/gms/internal/auth/zzet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/auth/zzdp;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzet;->zzb()Lcom/google/android/gms/internal/auth/zzet;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/auth/zzet;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->zzb:Lcom/google/android/gms/internal/auth/zzev;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzev;->zzn(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzet;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzet;->zzc()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzet;->zza:Lcom/google/android/gms/internal/auth/zzev;

    return-object v0
.end method

.method public zzc()Lcom/google/android/gms/internal/auth/zzev;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->zza:Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzm()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->zza:Lcom/google/android/gms/internal/auth/zzev;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->zza:Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->zza:Lcom/google/android/gms/internal/auth/zzev;

    return-object v0
.end method

.method public bridge synthetic zzd()Lcom/google/android/gms/internal/auth/zzfx;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzet;->zzc()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/auth/zzfx;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
