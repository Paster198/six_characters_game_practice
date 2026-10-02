.class public Lcz/msebera/android/httpclient/pool/PoolStats;
.super Ljava/lang/Object;
.source "PoolStats.java"


# instance fields
.field private final available:I

.field private final leased:I

.field private final max:I

.field private final pending:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->leased:I

    .line 50
    iput p2, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->pending:I

    .line 51
    iput p3, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->available:I

    .line 52
    iput p4, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->max:I

    return-void
.end method


# virtual methods
.method public getAvailable()I
    .registers 2

    .line 87
    iget v0, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->available:I

    return v0
.end method

.method public getLeased()I
    .registers 2

    .line 65
    iget v0, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->leased:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .line 96
    iget v0, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->max:I

    return v0
.end method

.method public getPending()I
    .registers 2

    .line 75
    iget v0, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->pending:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[leased: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget v1, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->leased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "; pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->pending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "; available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->available:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "; max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcz/msebera/android/httpclient/pool/PoolStats;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
