.class public final Lcom/google/android/gms/internal/fido/zzfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/fido/zzfn;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.common.flogger.util.StackWalkerStackGetter"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    aput-object v4, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/fido/zzfj;->zza:[Ljava/lang/String;

    move v1, v2

    :goto_10
    if-ge v1, v0, :cond_36

    sget-object v3, Lcom/google/android/gms/internal/fido/zzfj;->zza:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 1
    :try_start_16
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/fido/zzfn;

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/fido/zzfn;
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_2f

    goto :goto_30

    :catchall_2f
    const/4 v3, 0x0

    :goto_30
    if-eqz v3, :cond_33

    goto :goto_3b

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_36
    new-instance v3, Lcom/google/android/gms/internal/fido/zzfo;

    invoke-direct {v3}, Lcom/google/android/gms/internal/fido/zzfo;-><init>()V

    :goto_3b
    sput-object v3, Lcom/google/android/gms/internal/fido/zzfj;->zzb:Lcom/google/android/gms/internal/fido/zzfn;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzfk;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/fido/zzfj;->zzb:Lcom/google/android/gms/internal/fido/zzfn;

    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/fido/zzfn;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
