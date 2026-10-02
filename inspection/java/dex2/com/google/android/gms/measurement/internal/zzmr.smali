.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzny;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzag;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzag;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzc:Lcom/google/android/gms/measurement/internal/zzag;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzc:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzs(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzag;)V

    return-void
.end method
