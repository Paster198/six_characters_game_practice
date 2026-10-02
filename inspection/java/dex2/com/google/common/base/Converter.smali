.class public abstract Lcom/google/common/base/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Converter$IdentityConverter;,
        Lcom/google/common/base/Converter$FunctionBasedConverter;,
        Lcom/google/common/base/Converter$ConverterComposition;,
        Lcom/google/common/base/Converter$ReverseConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final handleNullAutomatically:Z

.field private transient reverse:Lcom/google/common/base/Converter;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, v0}, Lcom/google/common/base/Converter;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean p1, p0, Lcom/google/common/base/Converter;->handleNullAutomatically:Z

    return-void
.end method

.method public static from(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Lcom/google/common/base/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TA;+TB;>;",
            "Lcom/google/common/base/Function<",
            "-TB;+TA;>;)",
            "Lcom/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 537
    new-instance v0, Lcom/google/common/base/Converter$FunctionBasedConverter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Converter$FunctionBasedConverter;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Converter$1;)V

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Converter<",
            "TT;TT;>;"
        }
    .end annotation

    .line 586
    sget-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    return-object v0
.end method

.method private unsafeDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 253
    invoke-static {p1}, Lcom/google/common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private unsafeDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 248
    invoke-static {p1}, Lcom/google/common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final andThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter<",
            "TB;TC;>;)",
            "Lcom/google/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TA;>;)",
            "Ljava/lang/Iterable<",
            "TB;>;"
        }
    .end annotation

    .line 276
    const-string v0, "fromIterable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/google/common/base/Converter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Converter$1;-><init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/google/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_11

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 216
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/common/base/Converter;->unsafeDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcom/google/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_11

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 206
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/common/base/Converter;->unsafeDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter<",
            "TB;TC;>;)",
            "Lcom/google/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 395
    new-instance v0, Lcom/google/common/base/Converter$ConverterComposition;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Converter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Converter$ConverterComposition;-><init>(Lcom/google/common/base/Converter;Lcom/google/common/base/Converter;)V

    return-object v0
.end method

.method protected abstract doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method protected abstract doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 515
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .registers 2
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/common/base/Converter;->reverse:Lcom/google/common/base/Converter;

    if-nez v0, :cond_b

    .line 315
    new-instance v0, Lcom/google/common/base/Converter$ReverseConverter;

    invoke-direct {v0, p0}, Lcom/google/common/base/Converter$ReverseConverter;-><init>(Lcom/google/common/base/Converter;)V

    iput-object v0, p0, Lcom/google/common/base/Converter;->reverse:Lcom/google/common/base/Converter;

    :cond_b
    return-object v0
.end method
