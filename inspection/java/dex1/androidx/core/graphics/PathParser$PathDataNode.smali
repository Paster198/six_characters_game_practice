.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field private final mParams:[F

.field private mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 416
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 4

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 421
    iget-object p1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method static synthetic access$000(Landroidx/core/graphics/PathParser$PathDataNode;)C
    .registers 1

    .line 395
    iget-char p0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    return p0
.end method

.method static synthetic access$002(Landroidx/core/graphics/PathParser$PathDataNode;C)C
    .registers 2

    .line 395
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    return p1
.end method

.method static synthetic access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F
    .registers 1

    .line 395
    iget-object p0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-object p0
.end method

.method static synthetic access$200(Landroid/graphics/Path;[FCC[F)V
    .registers 5

    .line 395
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v12, 0x0

    .line 463
    aget v1, p1, v12

    const/4 v13, 0x1

    .line 464
    aget v2, p1, v13

    const/4 v14, 0x2

    .line 465
    aget v3, p1, v14

    const/4 v15, 0x3

    .line 466
    aget v4, p1, v15

    const/16 v16, 0x4

    .line 467
    aget v5, p1, v16

    const/16 v17, 0x5

    .line 468
    aget v6, p1, v17

    sparse-switch v10, :sswitch_data_33c

    :goto_1d
    :sswitch_1d
    move/from16 v18, v14

    goto :goto_36

    .line 475
    :sswitch_20
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 483
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v5

    move v3, v1

    move v2, v6

    move v4, v2

    goto :goto_1d

    :sswitch_2b
    move/from16 v18, v16

    goto :goto_36

    :sswitch_2e
    move/from16 v18, v13

    goto :goto_36

    :sswitch_31
    const/4 v7, 0x6

    goto :goto_34

    :sswitch_33
    const/4 v7, 0x7

    :goto_34
    move/from16 v18, v7

    :goto_36
    move v7, v1

    move v8, v2

    move/from16 v19, v5

    move/from16 v20, v6

    move v9, v12

    move/from16 v1, p2

    .line 515
    :goto_3f
    array-length v2, v11

    if-ge v9, v2, :cond_324

    const/16 v2, 0x41

    if-eq v10, v2, :cond_2ce

    const/16 v2, 0x43

    if-eq v10, v2, :cond_29f

    const/16 v6, 0x48

    if-eq v10, v6, :cond_28b

    const/16 v6, 0x51

    if-eq v10, v6, :cond_263

    move/from16 v21, v12

    const/16 v12, 0x56

    if-eq v10, v12, :cond_251

    const/16 v12, 0x61

    if-eq v10, v12, :cond_202

    const/16 v12, 0x63

    if-eq v10, v12, :cond_1d3

    move/from16 v22, v13

    const/16 v13, 0x68

    if-eq v10, v13, :cond_1c4

    const/16 v13, 0x71

    if-eq v10, v13, :cond_19f

    move/from16 v23, v14

    const/16 v14, 0x76

    if-eq v10, v14, :cond_193

    const/16 v14, 0x4c

    if-eq v10, v14, :cond_180

    const/16 v14, 0x4d

    if-eq v10, v14, :cond_167

    const/16 v14, 0x73

    move/from16 v24, v15

    const/16 v15, 0x53

    const/high16 v25, 0x40000000    # 2.0f

    if-eq v10, v15, :cond_135

    const/16 v5, 0x74

    const/16 v15, 0x54

    if-eq v10, v15, :cond_114

    const/16 v2, 0x6c

    if-eq v10, v2, :cond_104

    const/16 v2, 0x6d

    if-eq v10, v2, :cond_ef

    if-eq v10, v14, :cond_bb

    if-eq v10, v5, :cond_97

    :goto_94
    move v14, v9

    goto/16 :goto_315

    :cond_97
    if-eq v1, v13, :cond_a3

    if-eq v1, v5, :cond_a3

    if-eq v1, v6, :cond_a3

    if-ne v1, v15, :cond_a0

    goto :goto_a3

    :cond_a0
    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_a7

    :cond_a3
    :goto_a3
    sub-float v5, v7, v3

    sub-float v1, v8, v4

    .line 643
    :goto_a7
    aget v2, v11, v9

    add-int/lit8 v3, v9, 0x1

    aget v4, v11, v3

    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v5, v7

    add-float/2addr v1, v8

    .line 647
    aget v2, v11, v9

    add-float/2addr v7, v2

    .line 648
    aget v2, v11, v3

    add-float/2addr v8, v2

    move v4, v1

    move v3, v5

    goto :goto_94

    :cond_bb
    if-eq v1, v12, :cond_cb

    if-eq v1, v14, :cond_cb

    const/16 v2, 0x43

    if-eq v1, v2, :cond_cb

    const/16 v2, 0x53

    if-ne v1, v2, :cond_c8

    goto :goto_cb

    :cond_c8
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_d1

    :cond_cb
    :goto_cb
    sub-float v5, v7, v3

    sub-float v1, v8, v4

    move v2, v1

    move v1, v5

    .line 597
    :goto_d1
    aget v3, v11, v9

    add-int/lit8 v12, v9, 0x1

    aget v4, v11, v12

    add-int/lit8 v13, v9, 0x2

    aget v5, v11, v13

    add-int/lit8 v14, v9, 0x3

    aget v6, v11, v14

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 601
    aget v1, v11, v9

    add-float/2addr v1, v7

    .line 602
    aget v2, v11, v12

    add-float/2addr v2, v8

    .line 603
    aget v3, v11, v13

    add-float/2addr v7, v3

    .line 604
    aget v3, v11, v14

    goto/16 :goto_1bf

    .line 518
    :cond_ef
    aget v1, v11, v9

    add-float/2addr v7, v1

    add-int/lit8 v2, v9, 0x1

    .line 519
    aget v2, v11, v2

    add-float/2addr v8, v2

    if-lez v9, :cond_fd

    .line 524
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_94

    .line 526
    :cond_fd
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    move/from16 v19, v7

    goto/16 :goto_17c

    .line 546
    :cond_104
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v5, v11, v2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 547
    aget v1, v11, v9

    add-float/2addr v7, v1

    .line 548
    aget v1, v11, v2

    :goto_112
    add-float/2addr v8, v1

    goto :goto_94

    :cond_114
    if-eq v1, v13, :cond_11c

    if-eq v1, v5, :cond_11c

    if-eq v1, v6, :cond_11c

    if-ne v1, v15, :cond_122

    :cond_11c
    mul-float v7, v7, v25

    sub-float/2addr v7, v3

    mul-float v8, v8, v25

    sub-float/2addr v8, v4

    .line 658
    :cond_122
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v3, v11, v2

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 662
    aget v1, v11, v9

    .line 663
    aget v2, v11, v2

    move v3, v7

    move v4, v8

    move v14, v9

    move v7, v1

    goto/16 :goto_260

    :cond_135
    if-eq v1, v12, :cond_141

    if-eq v1, v14, :cond_141

    const/16 v2, 0x43

    if-eq v1, v2, :cond_141

    const/16 v2, 0x53

    if-ne v1, v2, :cond_147

    :cond_141
    mul-float v7, v7, v25

    sub-float/2addr v7, v3

    mul-float v8, v8, v25

    sub-float/2addr v8, v4

    :cond_147
    move v1, v7

    move v2, v8

    .line 614
    aget v3, v11, v9

    add-int/lit8 v7, v9, 0x1

    aget v4, v11, v7

    add-int/lit8 v8, v9, 0x2

    aget v5, v11, v8

    add-int/lit8 v12, v9, 0x3

    aget v6, v11, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 616
    aget v1, v11, v9

    .line 617
    aget v2, v11, v7

    .line 618
    aget v3, v11, v8

    .line 619
    aget v4, v11, v12

    move v7, v3

    move v8, v4

    move v14, v9

    goto/16 :goto_287

    :cond_167
    move/from16 v24, v15

    .line 532
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    .line 533
    aget v2, v11, v2

    if-lez v9, :cond_175

    .line 538
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_18f

    .line 540
    :cond_175
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v7, v1

    move/from16 v19, v7

    move v8, v2

    :goto_17c
    move/from16 v20, v8

    goto/16 :goto_94

    :cond_180
    move/from16 v24, v15

    .line 551
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v5, v11, v2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 552
    aget v1, v11, v9

    .line 553
    aget v2, v11, v2

    :goto_18f
    move v7, v1

    move v8, v2

    goto/16 :goto_94

    :cond_193
    move/from16 v24, v15

    .line 564
    aget v1, v11, v9

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 565
    aget v1, v11, v9

    goto/16 :goto_112

    :cond_19f
    move/from16 v23, v14

    move/from16 v24, v15

    .line 622
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v3, v11, v2

    add-int/lit8 v4, v9, 0x2

    aget v5, v11, v4

    add-int/lit8 v6, v9, 0x3

    aget v12, v11, v6

    invoke-virtual {v0, v1, v3, v5, v12}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 623
    aget v1, v11, v9

    add-float/2addr v1, v7

    .line 624
    aget v2, v11, v2

    add-float/2addr v2, v8

    .line 625
    aget v3, v11, v4

    add-float/2addr v7, v3

    .line 626
    aget v3, v11, v6

    :goto_1bf
    add-float/2addr v8, v3

    move v3, v1

    move v4, v2

    goto/16 :goto_94

    :cond_1c4
    move/from16 v23, v14

    move/from16 v24, v15

    .line 556
    aget v1, v11, v9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 557
    aget v1, v11, v9

    add-float/2addr v7, v1

    goto/16 :goto_94

    :cond_1d3
    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    .line 572
    aget v1, v11, v9

    add-int/lit8 v2, v9, 0x1

    aget v2, v11, v2

    add-int/lit8 v12, v9, 0x2

    aget v3, v11, v12

    add-int/lit8 v13, v9, 0x3

    aget v4, v11, v13

    add-int/lit8 v14, v9, 0x4

    aget v5, v11, v14

    add-int/lit8 v15, v9, 0x5

    aget v6, v11, v15

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 575
    aget v0, v11, v12

    add-float/2addr v0, v7

    .line 576
    aget v1, v11, v13

    add-float/2addr v1, v8

    .line 577
    aget v2, v11, v14

    add-float/2addr v7, v2

    .line 578
    aget v2, v11, v15

    add-float/2addr v8, v2

    move v3, v0

    move v4, v1

    goto/16 :goto_94

    :cond_202
    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    add-int/lit8 v12, v9, 0x5

    .line 667
    aget v0, v11, v12

    add-float v3, v0, v7

    add-int/lit8 v13, v9, 0x6

    aget v0, v11, v13

    add-float v4, v0, v8

    aget v5, v11, v9

    add-int/lit8 v0, v9, 0x1

    aget v6, v11, v0

    add-int/lit8 v0, v9, 0x2

    aget v0, v11, v0

    add-int/lit8 v1, v9, 0x3

    aget v1, v11, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_22c

    move v1, v2

    move v2, v8

    move/from16 v8, v22

    goto :goto_230

    :cond_22c
    move v1, v2

    move v2, v8

    move/from16 v8, v21

    :goto_230
    add-int/lit8 v14, v9, 0x4

    aget v14, v11, v14

    cmpl-float v1, v14, v1

    move v14, v9

    if-eqz v1, :cond_23c

    move/from16 v9, v22

    goto :goto_23e

    :cond_23c
    move/from16 v9, v21

    :goto_23e
    move v1, v7

    move v7, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 677
    aget v3, v11, v12

    add-float v7, v1, v3

    .line 678
    aget v1, v11, v13

    add-float v8, v2, v1

    move v3, v7

    move v4, v8

    goto/16 :goto_315

    :cond_251
    move v1, v7

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move v14, v9

    .line 568
    aget v2, v11, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 569
    aget v2, v11, v14

    :goto_260
    move v8, v2

    goto/16 :goto_315

    :cond_263
    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move v14, v9

    .line 629
    aget v1, v11, v14

    add-int/lit8 v9, v14, 0x1

    aget v2, v11, v9

    add-int/lit8 v3, v14, 0x2

    aget v4, v11, v3

    add-int/lit8 v5, v14, 0x3

    aget v6, v11, v5

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 630
    aget v1, v11, v14

    .line 631
    aget v2, v11, v9

    .line 632
    aget v3, v11, v3

    .line 633
    aget v4, v11, v5

    move v7, v3

    move v8, v4

    :goto_287
    move v3, v1

    move v4, v2

    goto/16 :goto_315

    :cond_28b
    move v2, v8

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move v14, v9

    .line 560
    aget v1, v11, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 561
    aget v1, v11, v14

    move v7, v1

    goto/16 :goto_315

    :cond_29f
    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move v14, v9

    .line 582
    aget v1, v11, v14

    add-int/lit8 v9, v14, 0x1

    aget v2, v11, v9

    add-int/lit8 v9, v14, 0x2

    aget v3, v11, v9

    add-int/lit8 v7, v14, 0x3

    aget v4, v11, v7

    add-int/lit8 v8, v14, 0x4

    aget v5, v11, v8

    add-int/lit8 v12, v14, 0x5

    aget v6, v11, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 584
    aget v0, v11, v8

    .line 585
    aget v1, v11, v12

    .line 586
    aget v2, v11, v9

    .line 587
    aget v3, v11, v7

    move v7, v0

    move v8, v1

    move v4, v3

    move v3, v2

    goto :goto_315

    :cond_2ce
    move v1, v7

    move v2, v8

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move v14, v9

    add-int/lit8 v12, v14, 0x5

    .line 683
    aget v3, v11, v12

    add-int/lit8 v13, v14, 0x6

    aget v4, v11, v13

    aget v5, v11, v14

    add-int/lit8 v9, v14, 0x1

    aget v6, v11, v9

    add-int/lit8 v9, v14, 0x2

    aget v7, v11, v9

    add-int/lit8 v9, v14, 0x3

    aget v0, v11, v9

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_2f8

    move v0, v8

    move/from16 v8, v22

    goto :goto_2fb

    :cond_2f8
    move v0, v8

    move/from16 v8, v21

    :goto_2fb
    add-int/lit8 v9, v14, 0x4

    aget v9, v11, v9

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_306

    move/from16 v9, v22

    goto :goto_308

    :cond_306
    move/from16 v9, v21

    :goto_308
    move-object/from16 v0, p0

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 693
    aget v0, v11, v12

    .line 694
    aget v1, v11, v13

    move v3, v0

    move v7, v3

    move v4, v1

    move v8, v4

    :goto_315
    add-int v9, v14, v18

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, v24

    goto/16 :goto_3f

    :cond_324
    move v1, v7

    move v2, v8

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    .line 701
    aput v1, p1, v21

    .line 702
    aput v2, p1, v22

    .line 703
    aput v3, p1, v23

    .line 704
    aput v4, p1, v24

    .line 705
    aput v19, p1, v16

    .line 706
    aput v20, p1, v17

    return-void

    nop

    :sswitch_data_33c
    .sparse-switch
        0x41 -> :sswitch_33
        0x43 -> :sswitch_31
        0x48 -> :sswitch_2e
        0x4c -> :sswitch_1d
        0x4d -> :sswitch_1d
        0x51 -> :sswitch_2b
        0x53 -> :sswitch_2b
        0x54 -> :sswitch_1d
        0x56 -> :sswitch_2e
        0x5a -> :sswitch_20
        0x61 -> :sswitch_33
        0x63 -> :sswitch_31
        0x68 -> :sswitch_2e
        0x6c -> :sswitch_1d
        0x6d -> :sswitch_1d
        0x71 -> :sswitch_2b
        0x73 -> :sswitch_2b
        0x74 -> :sswitch_1d
        0x76 -> :sswitch_2e
        0x7a -> :sswitch_20
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 65

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 814
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 817
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 818
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 819
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 820
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double/2addr v13, v7

    mul-double/2addr v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 v29, v2

    move-wide/from16 v25, v11

    move-wide/from16 v27, v17

    move/from16 v2, v23

    move-wide/from16 v11, p9

    move-wide/from16 v17, p11

    move-wide/from16 v23, p15

    :goto_4a
    if-ge v2, v4, :cond_eb

    add-double v31, v23, v9

    .line 827
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 828
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, p1, v37

    mul-double v39, v19, v33

    sub-double v0, v37, v39

    mul-double v37, p5, v7

    mul-double v37, v37, v35

    add-double v37, p3, v37

    mul-double v39, v21, v33

    move/from16 p7, v2

    add-double v2, v37, v39

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v33, v35

    sub-double v23, v31, v23

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v23, v35

    .line 833
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 835
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v41, v35, v39

    mul-double v41, v41, v35

    add-double v41, v41, v29

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v41

    mul-double v23, v23, v35

    div-double v23, v23, v39

    mul-double v27, v27, v23

    add-double v11, v11, v27

    mul-double v25, v25, v23

    move/from16 v27, v4

    move-wide/from16 v35, v5

    add-double v4, v17, v25

    mul-double v17, v23, v37

    move-wide/from16 p13, v7

    sub-double v6, v0, v17

    mul-double v23, v23, v33

    move-wide/from16 p17, v9

    sub-double v8, v2, v23

    const/4 v10, 0x0

    move-wide/from16 v17, v13

    move-object/from16 v13, p0

    .line 842
    invoke-virtual {v13, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v10, v11

    double-to-float v4, v4

    double-to-float v5, v6

    double-to-float v6, v8

    double-to-float v7, v0

    double-to-float v8, v2

    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v8

    move/from16 v40, v10

    move-object/from16 v39, v13

    .line 844
    invoke-virtual/range {v39 .. v45}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v4, p7, 0x1

    move-wide/from16 v7, p13

    move-wide/from16 v9, p17

    move-wide v11, v0

    move-wide/from16 v13, v17

    move-wide/from16 v23, v31

    move-wide/from16 v25, v33

    move-wide/from16 v5, v35

    move-wide/from16 v0, p5

    move-wide/from16 v17, v2

    move v2, v4

    move/from16 v4, v27

    move-wide/from16 v27, v37

    goto/16 :goto_4a

    :cond_eb
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 53

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    float-to-double v4, v7

    .line 721
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 723
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 724
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v1

    mul-double v12, v10, v4

    move/from16 v6, p2

    float-to-double v14, v6

    mul-double v16, v14, v8

    add-double v12, v12, v16

    move-wide/from16 v17, v14

    move-wide v15, v10

    move-wide v13, v12

    float-to-double v11, v0

    div-double/2addr v13, v11

    neg-float v10, v1

    float-to-double v0, v10

    mul-double/2addr v0, v8

    mul-double v21, v17, v4

    add-double v0, v0, v21

    move-wide/from16 v21, v13

    float-to-double v13, v2

    div-double/2addr v0, v13

    move-wide/from16 v23, v0

    float-to-double v0, v3

    mul-double/2addr v0, v4

    move/from16 v10, p4

    move-wide/from16 v25, v0

    float-to-double v0, v10

    mul-double v27, v0, v8

    add-double v25, v25, v27

    div-double v25, v25, v11

    move-wide/from16 v27, v0

    neg-float v0, v3

    float-to-double v0, v0

    mul-double/2addr v0, v8

    mul-double v27, v27, v4

    add-double v0, v0, v27

    div-double/2addr v0, v13

    sub-double v27, v21, v25

    sub-double v29, v23, v0

    add-double v31, v21, v25

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    div-double v31, v31, v33

    add-double v35, v23, v0

    div-double v35, v35, v33

    mul-double v33, v27, v27

    mul-double v37, v29, v29

    move-wide/from16 v39, v0

    add-double v0, v33, v37

    const-wide/16 v33, 0x0

    cmpl-double v37, v0, v33

    .line 739
    const-string v2, "PathParser"

    if-nez v37, :cond_6f

    .line 740
    const-string v0, " Points are coincident"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    div-double v37, v37, v0

    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    sub-double v37, v37, v41

    cmpg-double v41, v37, v33

    if-gez v41, :cond_ab

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Points are too far apart "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v4

    double-to-float v0, v0

    mul-float v5, p5, v0

    mul-float v0, v0, p6

    move/from16 v1, p1

    move/from16 v8, p8

    move/from16 v9, p9

    move v2, v6

    move v4, v10

    move v6, v0

    move-object/from16 v0, p0

    .line 747
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_ab
    move/from16 v0, p9

    .line 751
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v27, v27, v1

    mul-double v1, v1, v29

    move/from16 v3, p8

    if-ne v3, v0, :cond_be

    sub-double v31, v31, v1

    add-double v35, v35, v27

    goto :goto_c2

    :cond_be
    add-double v31, v31, v1

    sub-double v35, v35, v27

    :goto_c2
    sub-double v1, v23, v35

    sub-double v6, v21, v31

    .line 764
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v21

    sub-double v1, v39, v35

    sub-double v6, v25, v31

    .line 766
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v21

    cmpl-double v3, v1, v33

    if-ltz v3, :cond_da

    const/4 v6, 0x1

    goto :goto_db

    :cond_da
    const/4 v6, 0x0

    :goto_db
    if-eq v0, v6, :cond_e7

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v3, :cond_e6

    sub-double/2addr v1, v6

    goto :goto_e7

    :cond_e6
    add-double/2addr v1, v6

    :cond_e7
    :goto_e7
    move-wide/from16 v23, v1

    mul-double v31, v31, v11

    mul-double v35, v35, v13

    mul-double v0, v31, v4

    mul-double v2, v35, v8

    sub-double/2addr v0, v2

    mul-double v31, v31, v8

    mul-double v35, v35, v4

    add-double v9, v31, v35

    move-object/from16 v6, p0

    move-wide v7, v0

    .line 783
    invoke-static/range {v6 .. v24}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    invoke-static {p0, p1}, Landroidx/core/graphics/PathParser;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public getParams()[F
    .registers 2

    .line 411
    iget-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-object v0
.end method

.method public getType()C
    .registers 2

    .line 406
    iget-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    return v0
.end method

.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .registers 8

    .line 452
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    const/4 v0, 0x0

    .line 453
    :goto_5
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 454
    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v1, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method
