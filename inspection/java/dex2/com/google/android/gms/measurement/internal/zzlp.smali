.class final Lcom/google/android/gms/measurement/internal/zzlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/Boolean;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Boolean;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zza:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zza:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlw;->zzE(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Boolean;Z)V

    return-void
.end method
