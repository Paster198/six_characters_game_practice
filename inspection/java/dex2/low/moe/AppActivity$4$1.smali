.class Llow/moe/AppActivity$4$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/AppActivity$4;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llow/moe/AppActivity$4;


# direct methods
.method constructor <init>(Llow/moe/AppActivity$4;)V
    .registers 2

    .line 434
    iput-object p1, p0, Llow/moe/AppActivity$4$1;->this$0:Llow/moe/AppActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failure to create native review: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llow/moe/AppActivity;->logCrashlytics(Ljava/lang/String;)V

    return-void
.end method
