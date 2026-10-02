.class final synthetic Lcom/google/android/gms/internal/games_v2/zzcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcz;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/games_v2/zzcz;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzcz;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    sget-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->EMAIL:Lcom/google/android/gms/games/gamessignin/AuthScope;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcz;->zzc:Ljava/util/List;

    const-string v1, "Input scopes list cannot be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/gamessignin/AuthScope;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/games/gamessignin/AuthScope;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzcz;->zzb:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzcz;->zza:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzi(Ljava/util/Collection;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v1

    .line 8
    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/google/android/gms/games/internal/zzah;->zzX(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method
