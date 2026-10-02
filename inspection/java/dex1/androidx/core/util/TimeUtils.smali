.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    .line 39
    new-array v0, v0, [C

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 6

    const/16 v0, 0x63

    const/4 v1, 0x3

    if-gt p0, v0, :cond_20

    if-eqz p2, :cond_a

    if-lt p3, v1, :cond_a

    goto :goto_20

    :cond_a
    const/16 v0, 0x9

    const/4 v1, 0x2

    if-gt p0, v0, :cond_1e

    if-eqz p2, :cond_14

    if-lt p3, v1, :cond_14

    goto :goto_1e

    :cond_14
    if-nez p2, :cond_1b

    if-lez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1e
    :goto_1e
    add-int/2addr p1, v1

    return p1

    :cond_20
    :goto_20
    add-int/2addr p1, v1

    return p1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 173
    const-string p0, "--"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_c
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    .line 176
    invoke-static {p0, p1, p4, p2}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, p2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 6

    .line 159
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    invoke-static {p0, p1, p3}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 161
    new-instance p1, Ljava/lang/String;

    sget-object p3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 5

    .line 151
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 152
    :try_start_4
    invoke-static {p0, p1, v1}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 153
    sget-object p1, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 154
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static formatDurationLocked(JI)I
    .registers 19

    move-wide/from16 v0, p0

    move/from16 v2, p2

    .line 79
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_d

    .line 80
    new-array v3, v2, [C

    sput-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    .line 83
    :cond_d
    sget-object v4, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    const/16 v5, 0x20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_25

    add-int/lit8 v0, v2, -0x1

    :goto_1b
    if-lez v0, :cond_20

    .line 89
    aput-char v5, v4, v11

    goto :goto_1b

    :cond_20
    const/16 v0, 0x30

    .line 91
    aput-char v0, v4, v11

    return v10

    :cond_25
    if-lez v3, :cond_2a

    const/16 v3, 0x2b

    goto :goto_2d

    :cond_2a
    neg-long v0, v0

    const/16 v3, 0x2d

    :goto_2d
    const-wide/16 v6, 0x3e8

    .line 103
    rem-long v8, v0, v6

    long-to-int v12, v8

    .line 104
    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const v1, 0x15180

    if-le v0, v1, :cond_43

    .line 108
    div-int v6, v0, v1

    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    goto :goto_44

    :cond_43
    move v6, v11

    :goto_44
    const/16 v1, 0xe10

    if-le v0, v1, :cond_4e

    .line 112
    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v7, v1, 0xe10

    sub-int/2addr v0, v7

    goto :goto_4f

    :cond_4e
    move v1, v11

    :goto_4f
    const/16 v7, 0x3c

    if-le v0, v7, :cond_5a

    .line 116
    div-int/lit8 v7, v0, 0x3c

    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v0, v8

    move v13, v7

    goto :goto_5b

    :cond_5a
    move v13, v11

    :goto_5b
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_96

    .line 123
    invoke-static {v6, v10, v11, v11}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    if-lez v7, :cond_67

    move v8, v10

    goto :goto_68

    :cond_67
    move v8, v11

    .line 124
    :goto_68
    invoke-static {v1, v10, v8, v15}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_71

    move v8, v10

    goto :goto_72

    :cond_71
    move v8, v11

    .line 125
    :goto_72
    invoke-static {v13, v10, v8, v15}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_7b

    move v8, v10

    goto :goto_7c

    :cond_7b
    move v8, v11

    .line 126
    :goto_7c
    invoke-static {v0, v10, v8, v15}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_85

    move v8, v14

    goto :goto_86

    :cond_85
    move v8, v11

    .line 127
    :goto_86
    invoke-static {v12, v15, v10, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    move v8, v11

    :goto_8d
    if-ge v7, v2, :cond_97

    .line 129
    aput-char v5, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    :cond_96
    move v8, v11

    .line 135
    :cond_97
    aput-char v3, v4, v8

    add-int/lit8 v7, v8, 0x1

    if-eqz v2, :cond_9f

    move v2, v10

    goto :goto_a0

    :cond_9f
    move v2, v11

    :goto_a0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v6

    const/16 v6, 0x64

    .line 140
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v3

    move v5, v7

    if-eq v3, v5, :cond_ae

    move v8, v10

    goto :goto_af

    :cond_ae
    move v8, v11

    :goto_af
    if-eqz v2, :cond_b3

    move v9, v15

    goto :goto_b4

    :cond_b3
    move v9, v11

    :goto_b4
    const/16 v6, 0x68

    move v7, v5

    move v5, v1

    move v1, v7

    move v7, v3

    .line 141
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    if-eq v7, v1, :cond_c2

    move v8, v10

    goto :goto_c3

    :cond_c2
    move v8, v11

    :goto_c3
    if-eqz v2, :cond_c7

    move v9, v15

    goto :goto_c8

    :cond_c7
    move v9, v11

    :goto_c8
    const/16 v6, 0x6d

    move v5, v13

    .line 142
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    if-eq v7, v1, :cond_d3

    move v8, v10

    goto :goto_d4

    :cond_d3
    move v8, v11

    :goto_d4
    if-eqz v2, :cond_d8

    move v9, v15

    goto :goto_d9

    :cond_d8
    move v9, v11

    :goto_d9
    const/16 v6, 0x73

    move v5, v0

    .line 143
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    if-eqz v2, :cond_e6

    if-eq v7, v1, :cond_e6

    move v9, v14

    goto :goto_e7

    :cond_e6
    move v9, v11

    :goto_e7
    const/16 v6, 0x6d

    const/4 v8, 0x1

    move v5, v12

    .line 144
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v0

    const/16 v1, 0x73

    .line 145
    aput-char v1, v4, v0

    add-int/2addr v0, v10

    return v0
.end method

.method private static printField([CICIZI)I
    .registers 8

    if-nez p4, :cond_6

    if-lez p1, :cond_5

    goto :goto_6

    :cond_5
    return p3

    :cond_6
    :goto_6
    if-eqz p4, :cond_b

    const/4 v0, 0x3

    if-ge p5, v0, :cond_f

    :cond_b
    const/16 v0, 0x63

    if-le p1, v0, :cond_1c

    .line 59
    :cond_f
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 60
    aput-char v1, p0, p3

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_1d

    :cond_1c
    move v1, p3

    :goto_1d
    const/4 v0, 0x2

    if-eqz p4, :cond_22

    if-ge p5, v0, :cond_28

    :cond_22
    const/16 p4, 0x9

    if-gt p1, p4, :cond_28

    if-eq p3, v1, :cond_34

    .line 65
    :cond_28
    div-int/lit8 p3, p1, 0xa

    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    .line 66
    aput-char p4, p0, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    :cond_34
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 70
    aput-char p1, p0, v1

    add-int/lit8 p1, v1, 0x1

    .line 72
    aput-char p2, p0, p1

    add-int/2addr v1, v0

    return v1
.end method
