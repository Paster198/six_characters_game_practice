.class final Lcom/google/android/gms/internal/fido/zzfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/fido/zzfu;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzga;

    const-string v1, "SHA-256"

    const-string v2, "Hashing.sha256()"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzga;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfw;->zza:Lcom/google/android/gms/internal/fido/zzfu;

    return-void
.end method
