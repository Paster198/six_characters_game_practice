.class final Lcom/google/android/gms/tagmanager/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzdg<",
        "Lcom/google/android/gms/internal/gtm/zzrl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzal;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzal;Lcom/google/android/gms/tagmanager/zzad;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzae;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzae;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzal;->zzp(Lcom/google/android/gms/tagmanager/zzal;)Z

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzae;->zza:Lcom/google/android/gms/tagmanager/zzal;

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzal;->zzi(Lcom/google/android/gms/tagmanager/zzal;J)V

    return-void
.end method
