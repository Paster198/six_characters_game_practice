.class public Lorg/cocos2dx/lib/Cocos2dxLocalStorage;
.super Ljava/lang/Object;
.source "Cocos2dxLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;
    }
.end annotation


# static fields
.field private static DATABASE_NAME:Ljava/lang/String; = "jsb.sqlite"

.field private static final DATABASE_VERSION:I = 0x1

.field private static TABLE_NAME:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "Cocos2dxLocalStorage"

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDatabaseOpenHelper:Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->DATABASE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static clear()V
    .registers 2

    .line 106
    const-string v0, "delete from "

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static destroy()V
    .registers 1

    .line 60
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    return-void
.end method

.method public static getItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "select value from "

    const/4 v1, 0x0

    .line 77
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " where key=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 79
    :goto_24
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz v1, :cond_34

    .line 83
    const-string v0, "Cocos2dxLocalStorage"

    const-string v2, "The key contains more than one value."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 86
    :cond_34
    const-string v0, "value"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 88
    :cond_3f
    :goto_3f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    return-object v1

    :catch_43
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 49
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 50
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->DATABASE_NAME:Ljava/lang/String;

    .line 51
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    .line 52
    new-instance p0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabaseOpenHelper:Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;

    .line 53
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static removeItem(Ljava/lang/String;)V
    .registers 3

    const-string v0, "delete from "

    .line 97
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where key=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static setItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "replace into "

    .line 67
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(key,value)values(?,?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
