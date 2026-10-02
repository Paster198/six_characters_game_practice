.class final Lcom/google/android/gms/internal/fido/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzbp;


# instance fields
.field private volatile zzb:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzbq;->zza:Lcom/google/android/gms/internal/fido/zzbq;

    sput-object v0, Lcom/google/android/gms/internal/fido/zzbr;->zza:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/fido/zzbp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzbr;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbr;->zzb:Lcom/google/android/gms/internal/fido/zzbp;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzbr;->zza:Lcom/google/android/gms/internal/fido/zzbp;

    if-ne v0, v1, :cond_8

    const-string v0, "<supplier that returned null>"

    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppliers.memoize("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
