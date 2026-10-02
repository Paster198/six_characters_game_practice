.class final Lcom/google/android/gms/internal/fido/zzfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzfh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzfh;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzfh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzfh;

    move-result-object v1

    if-ne v0, v1, :cond_3f

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 4
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    :cond_22
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 5
    :cond_24
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 6
    :cond_2d
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 7
    :cond_36
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    return p1

    .line 8
    :cond_3f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzfh;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
