.class public final synthetic Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {v0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->$r8$lambda$U-5sWomJCMWgLesGf2T6PiR8-A4(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I

    move-result p1

    return p1
.end method
