.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;->call()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lcom/google/firebase/crashlytics/internal/settings/Settings;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

.field final synthetic val$currentSessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->val$currentSessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/firebase/crashlytics/internal/settings/Settings;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/Settings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 234
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v1, "Received null app settings, cannot send reports at crash time."

    .line 235
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x2

    .line 240
    new-array p1, p1, [Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 241
    # invokes: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logAnalyticsAppExceptionEvents()Lcom/google/android/gms/tasks/Task;
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$800(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 242
    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 243
    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashlyticsWorkers:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$700(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-result-object v2

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->common:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;

    .line 244
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

    iget-boolean v3, v3, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;->val$isOnDemand:Z

    if-eqz v3, :cond_39

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->val$currentSessionId:Ljava/lang/String;

    .line 242
    :cond_39
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->sendReports(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 240
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/Settings;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2$1;->then(Lcom/google/firebase/crashlytics/internal/settings/Settings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
