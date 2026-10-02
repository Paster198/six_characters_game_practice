.class final Lcom/google/android/gms/tagmanager/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzb;->zza:Lcom/google/android/gms/tagmanager/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzb;->zza:Lcom/google/android/gms/tagmanager/zzd;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzd;->zzd(Lcom/google/android/gms/tagmanager/zzd;)V

    return-void
.end method
