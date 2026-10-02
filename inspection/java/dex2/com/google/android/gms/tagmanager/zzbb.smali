.class final Lcom/google/android/gms/tagmanager/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbe;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzb:Lcom/google/android/gms/tagmanager/zzbe;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzbb;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzb:Lcom/google/android/gms/tagmanager/zzbe;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbb;->zza:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzg(Lcom/google/android/gms/tagmanager/zzbe;Ljava/lang/String;)V

    return-void
.end method
