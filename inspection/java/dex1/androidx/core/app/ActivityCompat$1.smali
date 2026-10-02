.class Landroidx/core/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissionsArray:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Landroidx/core/app/ActivityCompat$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 550
    iget-object v0, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    .line 552
    iget-object v1, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 553
    iget-object v2, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 555
    iget-object v3, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_24

    .line 557
    iget-object v5, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 561
    :cond_24
    iget-object v1, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    iget v2, p0, Landroidx/core/app/ActivityCompat$1;->val$requestCode:I

    iget-object v3, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
