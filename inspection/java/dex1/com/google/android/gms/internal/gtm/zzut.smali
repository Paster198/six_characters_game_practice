.class public Lcom/google/android/gms/internal/gtm/zzut;
.super Lcom/google/android/gms/internal/gtm/zzsg;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzut<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/gtm/zzsg<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/gtm/zzuz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzuz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzuz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzc:Lcom/google/android/gms/internal/gtm/zzuz;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/gtm/zzuz;Lcom/google/android/gms/internal/gtm/zzuz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzy()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    return-object v0
.end method

.method public final zzA()Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzB()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzas()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzxn;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gtm/zzxn;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;)V

    .line 4
    throw v1
.end method

.method public zzB()Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    return-object v0
.end method

.method public bridge synthetic zzC()Lcom/google/android/gms/internal/gtm/zzwk;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzD()Lcom/google/android/gms/internal/gtm/zzwk;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzB()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    return-object v0
.end method

.method protected zzF()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuz;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzut;->zza(Lcom/google/android/gms/internal/gtm/zzuz;Lcom/google/android/gms/internal/gtm/zzuz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    return-void
.end method

.method public final bridge synthetic zzar()Lcom/google/android/gms/internal/gtm/zzwk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzc:Lcom/google/android/gms/internal/gtm/zzuz;

    return-object v0
.end method

.method public final zzas()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic zzv()Lcom/google/android/gms/internal/gtm/zzsg;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzy()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic zzw(Lcom/google/android/gms/internal/gtm/zzsh;)Lcom/google/android/gms/internal/gtm/zzsg;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzut;->zzz(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzut;

    return-object p0
.end method

.method public final zzy()Lcom/google/android/gms/internal/gtm/zzut;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzc:Lcom/google/android/gms/internal/gtm/zzuz;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzut;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzB()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzz(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzut;

    return-object v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzut;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzut;->zza(Lcom/google/android/gms/internal/gtm/zzuz;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-object p0
.end method
