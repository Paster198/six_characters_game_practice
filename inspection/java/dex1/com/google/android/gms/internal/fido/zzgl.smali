.class final Lcom/google/android/gms/internal/fido/zzgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field static final zza:Ljava/lang/String;

.field static final zzb:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/fido/zzgl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$UnsafeComparator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgl;->zza:Ljava/lang/String;

    .line 2
    :try_start_12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    check-cast v0, Ljava/util/Comparator;
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_26

    goto :goto_28

    .line 5
    :catchall_26
    sget-object v0, Lcom/google/android/gms/internal/fido/zzgk;->zza:Lcom/google/android/gms/internal/fido/zzgk;

    .line 4
    :goto_28
    sput-object v0, Lcom/google/android/gms/internal/fido/zzgl;->zzb:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
