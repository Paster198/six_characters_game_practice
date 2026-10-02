.class public final Lcom/google/android/gms/internal/fido/zzfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzfl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfm;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzfm;->zzb:I

    return-void
.end method

.method public static zza()I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzfm;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzfm;

    iget v0, v0, Lcom/google/android/gms/internal/fido/zzfm;->zzb:I

    return v0
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzfm;->zzb:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzfm;->zzb:I

    return-void

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Mismatched calls to RecursionDepth (possible error in core library)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
