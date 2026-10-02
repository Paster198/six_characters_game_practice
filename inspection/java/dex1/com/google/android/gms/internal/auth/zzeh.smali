.class final Lcom/google/android/gms/internal/auth/zzeh;
.super Lcom/google/android/gms/internal/auth/zzej;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field private final zzb:[B

.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/auth/zzeg;)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzej;-><init>(Lcom/google/android/gms/internal/auth/zzei;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/auth/zzeh;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzb:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfb;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/auth/zzeh;->zze:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzeh;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzc:I

    if-lez v1, :cond_13

    iput v1, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzc:I

    return p1

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/auth/zzeh;->zzd:I

    return p1
.end method
