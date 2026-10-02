.class public final synthetic Llow/moe/MultiplayerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/net/DatagramSocket;


# direct methods
.method public synthetic constructor <init>(Ljava/net/DatagramSocket;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llow/moe/MultiplayerManager$$ExternalSyntheticLambda0;->f$0:Ljava/net/DatagramSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Llow/moe/MultiplayerManager$$ExternalSyntheticLambda0;->f$0:Ljava/net/DatagramSocket;

    invoke-static {v0}, Llow/moe/MultiplayerManager;->lambda$startListening$0(Ljava/net/DatagramSocket;)V

    return-void
.end method
