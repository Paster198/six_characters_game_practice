.class final enum Lcom/google/android/gms/internal/fido/zzgk;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/fido/zzgk;

.field private static final synthetic zzb:[Lcom/google/android/gms/internal/fido/zzgk;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzgk;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzgk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgk;->zza:Lcom/google/android/gms/internal/fido/zzgk;

    filled-new-array {v0}, [Lcom/google/android/gms/internal/fido/zzgk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgk;->zzb:[Lcom/google/android/gms/internal/fido/zzgk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/fido/zzgk;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzgk;->zzb:[Lcom/google/android/gms/internal/fido/zzgk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/fido/zzgk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/fido/zzgk;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    .line 1
    check-cast p1, [B

    check-cast p2, [B

    .line 2
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1c

    .line 3
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4
    :cond_1c
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "UnsignedBytes.lexicographicalComparator() (pure Java version)"

    return-object v0
.end method
