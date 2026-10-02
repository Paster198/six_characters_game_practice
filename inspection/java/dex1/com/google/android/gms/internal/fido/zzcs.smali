.class public abstract Lcom/google/android/gms/internal/fido/zzcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public zza()Lcom/google/android/gms/internal/fido/zzcs;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzcx;-><init>(Lcom/google/android/gms/internal/fido/zzcs;)V

    return-object v0
.end method
