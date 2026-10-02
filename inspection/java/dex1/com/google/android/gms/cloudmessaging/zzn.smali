.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cloudmessaging/zzp;

.field public final synthetic zzb:Lcom/google/android/gms/cloudmessaging/zzs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzp;Lcom/google/android/gms/cloudmessaging/zzs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzn;->zza:Lcom/google/android/gms/cloudmessaging/zzp;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzn;->zzb:Lcom/google/android/gms/cloudmessaging/zzs;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzn;->zza:Lcom/google/android/gms/cloudmessaging/zzp;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzn;->zzb:Lcom/google/android/gms/cloudmessaging/zzs;

    iget v1, v1, Lcom/google/android/gms/cloudmessaging/zzs;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/zzp;->zze(I)V

    return-void
.end method
