.class final Lcom/google/android/gms/tagmanager/zzfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzff;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfa;->zza:Lcom/google/android/gms/tagmanager/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfa;->zza:Lcom/google/android/gms/tagmanager/zzff;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzff;->zze(Lcom/google/android/gms/tagmanager/zzff;)Lcom/google/android/gms/tagmanager/zzcd;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcd;->zza()V

    return-void
.end method
