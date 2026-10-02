.class public final Lcom/google/android/gms/internal/fido/zzhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field static final zza:Ljava/nio/charset/Charset;

.field static final zzb:Ljava/nio/charset/Charset;

.field static final zzc:Ljava/nio/charset/Charset;

.field public static final zzd:[B

.field public static final zze:Ljava/nio/ByteBuffer;

.field public static final zzf:Lcom/google/android/gms/internal/fido/zzhb;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhc;->zza:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhc;->zzb:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhc;->zzc:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v2, v0, [B

    sput-object v2, Lcom/google/android/gms/internal/fido/zzhc;->zzd:[B

    .line 4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhc;->zze:Ljava/nio/ByteBuffer;

    .line 5
    sget v1, Lcom/google/android/gms/internal/fido/zzhb;->zza:I

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/fido/zzgz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fido/zzgz;-><init>([BIIZLcom/google/android/gms/internal/fido/zzgy;)V

    .line 8
    :try_start_2e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzgz;->zza(I)I
    :try_end_31
    .catch Lcom/google/android/gms/internal/fido/zzhd; {:try_start_2e .. :try_end_31} :catch_34

    .line 9
    sput-object v1, Lcom/google/android/gms/internal/fido/zzhc;->zzf:Lcom/google/android/gms/internal/fido/zzhb;

    return-void

    :catch_34
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
