.class public final synthetic Lcom/google/android/gms/measurement/internal/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzha;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgz;->zza:Lcom/google/android/gms/measurement/internal/zzha;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgz;->zzb:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgz;->zza:Lcom/google/android/gms/measurement/internal/zzha;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgz;->zzb:J

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzha;->zzb(Lcom/google/android/gms/measurement/internal/zzha;JLjava/lang/Exception;)V

    return-void
.end method
