.class final Lcom/google/android/gms/tagmanager/zzen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzr<",
        "Lcom/google/android/gms/internal/gtm/zzro;",
        "Lcom/google/android/gms/tagmanager/zzds<",
        "Lcom/google/android/gms/internal/gtm/zzak;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzeu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzro;

    check-cast p2, Lcom/google/android/gms/tagmanager/zzds;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzds;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzX()I

    move-result p1

    return p1
.end method
