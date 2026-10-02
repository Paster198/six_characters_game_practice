.class public abstract Lcom/google/android/gms/internal/fido/zzgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzgf;

.field private static final zzb:Lcom/google/android/gms/internal/fido/zzgf;

.field private static final zzc:Lcom/google/android/gms/internal/fido/zzgf;

.field private static final zzd:Lcom/google/android/gms/internal/fido/zzgf;

.field private static final zze:Lcom/google/android/gms/internal/fido/zzgf;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzgd;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/fido/zzgd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgf;->zza:Lcom/google/android/gms/internal/fido/zzgf;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzgd;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 2
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/fido/zzgd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgf;->zzb:Lcom/google/android/gms/internal/fido/zzgf;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzge;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/fido/zzge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgf;->zzc:Lcom/google/android/gms/internal/fido/zzgf;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzge;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/fido/zzge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgf;->zzd:Lcom/google/android/gms/internal/fido/zzgf;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzgc;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzgc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgf;->zze:Lcom/google/android/gms/internal/fido/zzgf;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/fido/zzgf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzgf;->zze:Lcom/google/android/gms/internal/fido/zzgf;

    return-object v0
.end method


# virtual methods
.method abstract zzb(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzc(I)I
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/fido/zzgf;
.end method

.method public final zzg([BII)Ljava/lang/String;
    .registers 6

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/fido/zzbm;->zze(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/fido/zzgf;->zzc(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :try_start_e
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/google/android/gms/internal/fido/zzgf;->zzb(Ljava/lang/Appendable;[BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_16

    .line 4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
