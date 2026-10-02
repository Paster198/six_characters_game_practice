.class public final synthetic Lcom/google/android/gms/measurement/internal/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzw;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    return-void
.end method
