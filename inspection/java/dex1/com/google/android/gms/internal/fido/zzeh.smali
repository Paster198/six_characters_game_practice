.class public final Lcom/google/android/gms/internal/fido/zzeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public static zza()Lcom/google/android/gms/internal/fido/zzeg;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/fido/zzel;

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzeg;
    :try_end_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    :try_start_12
    const-class v1, Lcom/google/common/flogger/backend/google/GooglePlatform;

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzeg;
    :try_end_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_22} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_22} :catch_23
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_22} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_22} :catch_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    :try_start_23
    const-class v1, Lcom/google/common/flogger/backend/system/DefaultPlatform;

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzeg;
    :try_end_33
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_23 .. :try_end_33} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_33} :catch_34
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_33} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_33} :catch_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    const/4 v0, 0x0

    return-object v0
.end method
