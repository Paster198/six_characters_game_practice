.class abstract Lcom/google/android/gms/internal/gtm/zzur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/gtm/zzuj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzur;->zza:Ljava/util/logging/Logger;

    const-string v0, "com.google.android.gms.internal.gtm.zzsq"

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzur;->zzb:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzuj;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v1, Lcom/google/android/gms/internal/gtm/zzur;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v0, Lcom/google/android/gms/internal/gtm/zzuj;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzur;->zzb:Ljava/lang/String;

    goto :goto_35

    .line 3
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%s.BlazeGenerated%sLoader"

    .line 8
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9
    :try_start_37
    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3b} :catch_70

    :try_start_3b
    new-array v5, v4, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzur;
    :try_end_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_49} :catch_69
    .catch Ljava/lang/InstantiationException; {:try_start_3b .. :try_end_49} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_49} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_49} :catch_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_49} :catch_70

    .line 15
    :try_start_49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzur;->zza()Lcom/google/android/gms/internal/gtm/zzuj;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuj;

    return-object v0

    :catch_54
    move-exception v0

    .line 12
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_5b
    move-exception v0

    .line 13
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_62
    move-exception v0

    .line 14
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 13
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_69
    move-exception v0

    .line 25
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_49 .. :try_end_70} :catch_70

    .line 16
    :catch_70
    invoke-static {v1, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 20
    :try_start_83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzur;->zza()Lcom/google/android/gms/internal/gtm/zzuj;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/util/ServiceConfigurationError; {:try_start_83 .. :try_end_94} :catch_95

    goto :goto_7d

    :catch_95
    move-exception v0

    move-object v10, v0

    .line 11
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzur;->zza:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "Unable to load "

    if-eqz v7, :cond_b0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    .line 26
    :cond_b0
    new-instance v0, Ljava/lang/String;

    .line 21
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b5
    move-object v9, v0

    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v8, "load"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7d

    .line 22
    :cond_be
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_cb

    .line 23
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzuj;

    return-object p0

    .line 24
    :cond_cb
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d3

    return-object v1

    :cond_d3
    :try_start_d3
    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Ljava/util/Collection;

    aput-object v3, v0, v4

    const-string v3, "combine"

    .line 25
    invoke-virtual {p0, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzuj;
    :try_end_e9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d3 .. :try_end_e9} :catch_fa
    .catch Ljava/lang/IllegalAccessException; {:try_start_d3 .. :try_end_e9} :catch_f2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d3 .. :try_end_e9} :catch_ea

    return-object p0

    :catch_ea
    move-exception v0

    move-object p0, v0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_f2
    move-exception v0

    move-object p0, v0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_fa
    move-exception v0

    move-object p0, v0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/gms/internal/gtm/zzuj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
