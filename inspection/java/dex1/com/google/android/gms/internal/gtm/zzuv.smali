.class public abstract Lcom/google/android/gms/internal/gtm/zzuv;
.super Lcom/google/android/gms/internal/gtm/zzuz;
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
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/gtm/zzuo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzuo<",
            "Lcom/google/android/gms/internal/gtm/zzuw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuo;->zzd()Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/gtm/zzux;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzux<",
            "TMessageType;*>;)V"
        }
    .end annotation

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzux;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuz;

    if-ne p1, v0, :cond_d

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final zzU()Lcom/google/android/gms/internal/gtm/zzuo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzuo<",
            "Lcom/google/android/gms/internal/gtm/zzuw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzj()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzc()Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    return-object v0
.end method

.method public final zzV(Lcom/google/android/gms/internal/gtm/zzuh;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzuh<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzux;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuv;->zzc(Lcom/google/android/gms/internal/gtm/zzux;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(Lcom/google/android/gms/internal/gtm/zzun;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzux;->zzb:Ljava/lang/Object;

    return-object p1

    :cond_12
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzuw;->zzc:Lcom/google/android/gms/internal/gtm/zzye;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzye;->zza()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzyf;->zzh:Lcom/google/android/gms/internal/gtm/zzyf;

    if-ne v1, v2, :cond_2d

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuw;->zza:Lcom/google/android/gms/internal/gtm/zzvc;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzyl;->zzc(I)Lcom/google/android/gms/internal/gtm/zzyl;

    move-result-object p1

    return-object p1

    :cond_2d
    return-object v0
.end method

.method public final zzW(Lcom/google/android/gms/internal/gtm/zzuh;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzuh<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzux;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuv;->zzc(Lcom/google/android/gms/internal/gtm/zzux;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuv;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
