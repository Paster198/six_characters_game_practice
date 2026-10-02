.class final Lcom/google/android/gms/tagmanager/zzep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzer;


# instance fields
.field final synthetic zza:Ljava/util/Map;

.field final synthetic zzb:Ljava/util/Map;

.field final synthetic zzc:Ljava/util/Map;

.field final synthetic zzd:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzeu;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzep;->zza:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzep;->zzb:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzep;->zzc:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzep;->zzd:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzrw;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzrw;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzro;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzro;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzdo;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzep;->zza:Ljava/util/Map;

    .line 1
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzep;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz p4, :cond_15

    .line 3
    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_15
    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzep;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzep;->zzd:Ljava/util/Map;

    .line 5
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p2, :cond_2a

    .line 6
    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    return-void
.end method
