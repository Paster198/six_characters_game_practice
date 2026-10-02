.class Llow/moe/AppActivity$3;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/AppActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llow/moe/AppActivity;


# direct methods
.method constructor <init>(Llow/moe/AppActivity;)V
    .registers 2

    .line 299
    iput-object p1, p0, Llow/moe/AppActivity$3;->this$0:Llow/moe/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    .line 303
    iget-object p1, p0, Llow/moe/AppActivity$3;->this$0:Llow/moe/AppActivity;

    # invokes: Llow/moe/AppActivity;->makeImmersive()V
    invoke-static {p1}, Llow/moe/AppActivity;->access$000(Llow/moe/AppActivity;)V

    return-void
.end method
