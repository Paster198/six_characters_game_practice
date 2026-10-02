.class final Lcom/google/android/gms/internal/fido/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzfn;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .registers 8

    .line 1
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_10
    array-length v3, p2

    const/4 v4, -0x1

    if-ge v0, v3, :cond_29

    .line 4
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    goto :goto_26

    :cond_22
    if-eqz v2, :cond_25

    goto :goto_2a

    :cond_25
    move v2, v1

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    move v0, v4

    :goto_2a
    if-eq v0, v4, :cond_2f

    .line 5
    aget-object p1, p2, v0

    return-object p1

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method
