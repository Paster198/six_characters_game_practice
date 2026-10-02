.class public final synthetic Lcom/google/common/reflect/TypeToken$InterfaceSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->$r8$lambda$i9nXrNf4uxl0gnnkvBZWoNl9y1o(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
