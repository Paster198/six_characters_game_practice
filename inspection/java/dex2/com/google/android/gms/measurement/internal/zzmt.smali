.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzny;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzpc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzpc;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zzd:Lcom/google/android/gms/measurement/internal/zzpc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zzd:Lcom/google/android/gms/measurement/internal/zzpc;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzq(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzpc;)V

    return-void
.end method
