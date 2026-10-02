.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setFont(ILjava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fontName:Ljava/lang/String;

.field final synthetic val$fontSize:F

.field final synthetic val$index:I


# direct methods
.method constructor <init>(ILjava/lang/String;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontSize:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 240
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$400()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_74

    .line 243
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 244
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 246
    :try_start_21
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_55

    .line 248
    :catch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "error to create ttf type face: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cocos2dxEditBoxHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_55

    .line 254
    :cond_4c
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_55

    .line 258
    :cond_53
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 261
    :goto_55
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_71

    .line 262
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 264
    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontSize:F

    div-float/2addr v3, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextSize(IF)V

    .line 267
    :cond_71
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_74
    return-void
.end method
