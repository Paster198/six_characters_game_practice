.class Lcom/google/common/reflect/TypeToken$Bounds;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final bounds:[Ljava/lang/reflect/Type;

.field private final target:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .registers 3

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .line 1075
    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    return-void
.end method


# virtual methods
.method isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .registers 7

    .line 1079
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 1080
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v3, v4, :cond_15

    return v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1084
    :cond_18
    iget-boolean p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .registers 7

    .line 1088
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    .line 1089
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 1090
    invoke-virtual {p1, v3}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v3, v4, :cond_15

    return v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1094
    :cond_18
    iget-boolean p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
