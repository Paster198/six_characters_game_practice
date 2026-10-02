.class final Lcom/google/android/gms/internal/fido/zzey;
.super Lcom/google/android/gms/internal/fido/zzev;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzev;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/fido/zzez;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzey;->zza:Lcom/google/android/gms/internal/fido/zzev;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzev;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzex;-><init>(Lcom/google/android/gms/internal/fido/zzew;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzey;->zzb:Lcom/google/android/gms/internal/fido/zzez;

    return-void
.end method

.method static final zzb()Lcom/google/android/gms/internal/fido/zzev;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzey;->zza:Lcom/google/android/gms/internal/fido/zzev;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "No-op Provider"

    return-object v0
.end method
