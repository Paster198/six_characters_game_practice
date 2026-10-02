.class public final Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# static fields
.field private static final HORIZONTAL_ALIGN_CENTER:I = 0x3

.field private static final HORIZONTAL_ALIGN_LEFT:I = 0x1

.field private static final HORIZONTAL_ALIGN_RIGHT:I = 0x2

.field private static final VERTICAL_ALIGN_BOTTOM:I = 0x2

.field private static final VERTICAL_ALIGN_CENTER:I = 0x3

.field private static final VERTICAL_ALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;
    .registers 19

    move/from16 v0, p4

    move-object/from16 v3, p5

    if-eqz p1, :cond_7c

    if-nez p2, :cond_a

    goto/16 :goto_7c

    :cond_a
    add-int/lit8 v1, p1, 0x1

    int-to-float v1, v1

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    add-float v4, v0, v9

    const/4 v10, 0x0

    if-nez p6, :cond_42

    :cond_17
    int-to-float p3, p1

    cmpl-float p3, v1, p3

    if-gtz p3, :cond_21

    int-to-float p3, p2

    cmpl-float p3, v2, p3

    if-lez p3, :cond_72

    :cond_21
    sub-float/2addr v4, v9

    .line 116
    invoke-static {p0, v3}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p3

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p3, v1

    int-to-float v1, p3

    float-to-int p3, v1

    .line 117
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p0, p3, v4, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I

    move-result p3

    int-to-float v2, p3

    .line 119
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    cmpg-float p3, v4, v10

    if-gtz p3, :cond_17

    .line 121
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_72

    :cond_42
    :goto_42
    int-to-float v5, p2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_4c

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_72

    :cond_4c
    sub-float v11, v4, v9

    .line 129
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 130
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 131
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    .line 133
    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    cmpg-float v4, v11, v10

    if-gtz v4, :cond_77

    .line 136
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 142
    :cond_72
    :goto_72
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_77
    move v4, v2

    move v2, v1

    move v1, v4

    move v4, v11

    goto :goto_42

    .line 106
    :cond_7c
    :goto_7c
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static createTextBitmapShadowStroke([BLjava/lang/String;IIIIIIIIZFFFFZIIIIFZI)Z
    .registers 40

    move-object/from16 v0, p0

    move/from16 v7, p22

    const/4 v8, 0x0

    if-eqz v0, :cond_10c

    .line 151
    array-length v1, v0

    if-nez v1, :cond_c

    goto/16 :goto_10c

    .line 154
    :cond_c
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 157
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    and-int/lit8 v1, p7, 0xf

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_20

    if-eq v1, v2, :cond_1d

    :goto_1b
    move-object v13, v0

    goto :goto_23

    .line 161
    :cond_1d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1b

    .line 164
    :cond_20
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1b

    .line 172
    :goto_23
    invoke-static/range {p1 .. p2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;

    move-result-object v11

    if-eqz p15, :cond_33

    .line 175
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p20

    .line 176
    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :cond_33
    if-gtz p8, :cond_41

    .line 182
    invoke-static {v10, v11}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move v12, v0

    goto :goto_43

    :cond_41
    move/from16 v12, p8

    :goto_43
    const/4 v0, 0x1

    if-ne v7, v0, :cond_62

    if-nez p21, :cond_62

    .line 191
    invoke-static {v10, v11}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v12, v4

    .line 192
    new-instance v9, Landroid/text/StaticLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, p8

    goto :goto_97

    :cond_62
    if-ne v7, v3, :cond_7a

    move/from16 v4, p2

    int-to-float v4, v4

    move-object v5, v10

    move v10, v0

    move-object v0, v5

    move-object v5, v13

    move v13, v3

    move-object v3, v5

    move/from16 v6, p21

    move v9, v1

    move-object v5, v11

    move/from16 v1, p8

    move v11, v2

    move/from16 v2, p9

    .line 195
    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;

    goto :goto_85

    :cond_7a
    move-object v5, v10

    move v10, v0

    move-object v0, v5

    move-object v5, v13

    move v13, v3

    move-object v3, v5

    move v9, v1

    move-object v5, v11

    move/from16 v1, p8

    move v11, v2

    :goto_85
    move v2, v9

    .line 197
    new-instance v9, Landroid/text/StaticLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move v4, v10

    move-object v10, v0

    move v0, v4

    move v4, v13

    move-object v13, v3

    move v3, v11

    move-object v11, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 200
    :goto_97
    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v5

    .line 201
    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 203
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-lez p9, :cond_ac

    move/from16 v12, p9

    goto :goto_ad

    :cond_ac
    move v12, v6

    :goto_ad
    if-ne v7, v0, :cond_b4

    if-nez p21, :cond_b4

    if-lez v1, :cond_b4

    move v10, v1

    :cond_b4
    if-eqz v10, :cond_10c

    if-nez v12, :cond_b9

    goto :goto_10c

    :cond_b9
    if-ne v2, v3, :cond_bf

    sub-int v1, v10, v5

    .line 221
    div-int/2addr v1, v4

    goto :goto_c5

    :cond_bf
    if-ne v2, v4, :cond_c4

    sub-int v1, v10, v5

    goto :goto_c5

    :cond_c4
    move v1, v8

    :goto_c5
    shr-int/lit8 v2, p7, 0x4

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v4, :cond_d3

    if-eq v2, v3, :cond_ce

    goto :goto_d5

    :cond_ce
    sub-int v2, v12, v6

    .line 232
    div-int/lit8 v8, v2, 0x2

    goto :goto_d5

    :cond_d3
    sub-int v8, v12, v6

    .line 241
    :goto_d5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 242
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v1, v1

    int-to-float v4, v8

    .line 243
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p15, :cond_f5

    move/from16 v1, p16

    move/from16 v4, p17

    move/from16 v5, p18

    move/from16 v6, p19

    .line 246
    invoke-virtual {v11, v6, v1, v4, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 247
    invoke-virtual {v9, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 249
    :cond_f5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v1, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 250
    invoke-virtual {v11, v6, v1, v4, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 251
    invoke-virtual {v9, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    return v0

    :cond_10c
    :goto_10c
    return v8
.end method

.method public static getFontSizeAccordingHeight(I)I
    .registers 9

    .line 306
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 307
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 309
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :cond_13
    :goto_13
    if-nez v4, :cond_2f

    int-to-float v6, v5

    .line 314
    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 316
    const-string v6, "SghMNy"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v3, v7, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v5, v5, 0x1

    .line 320
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p0, v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_13

    move v4, v2

    goto :goto_13

    :cond_2f
    return v5
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .registers 4

    if-eqz p0, :cond_1e

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 296
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .registers 5

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 330
    const-string p0, ""

    return-object p0

    .line 333
    :cond_9
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 334
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 335
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 337
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I
    .registers 11

    .line 84
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 85
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 p2, 0x0

    move v2, p2

    :goto_13
    if-ge v2, v3, :cond_22

    int-to-float v5, p1

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p0

    add-int/2addr v2, p0

    add-int/lit8 p2, p2, 0x1

    move-object p0, v1

    goto :goto_13

    .line 98
    :cond_22
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 100
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 283
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 288
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 288
    invoke-static {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    return-void
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;
    .registers 5

    .line 258
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    .line 259
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 260
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 263
    const-string p1, ".ttf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    .line 265
    :try_start_16
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 267
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    return-object v0

    .line 269
    :catch_20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "error to create ttf type face: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Cocos2dxBitmap"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0

    .line 276
    :cond_3c
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    .line 68
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    return-void
.end method
