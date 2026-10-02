.class abstract Lcom/google/android/gms/internal/fido/zzfp;
.super Lcom/google/android/gms/internal/fido/zzfr;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzfr;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzfp;->zza:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/fido/zzfv;
    .registers 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    array-length v1, p1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/fido/zzfp;->zzb([BII)V

    return-object p0
.end method

.method protected zzb([BII)V
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method
