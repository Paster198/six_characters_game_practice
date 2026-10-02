.class public final Lcom/google/android/gms/internal/measurement/zzci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcc;)Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbx;->zza()Lcom/google/android/gms/internal/measurement/zzby;

    const-string p2, ""

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzcg;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>()V

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    if-eqz p2, :cond_15

    return-object p2

    :cond_15
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 6
    :try_start_2a
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_34

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :catchall_34
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/lang/ThreadLocal;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    throw p0
.end method
