.class public Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public titile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    return-void
.end method
