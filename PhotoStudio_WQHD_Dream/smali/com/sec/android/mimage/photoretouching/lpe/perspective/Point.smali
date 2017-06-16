.class public Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iput-wide p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v0, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->set([D)V

    return-void
.end method


# virtual methods
.method public dot(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)D
    .locals 6

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    const/16 v8, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long v6, v4, v8

    xor-long/2addr v6, v4

    long-to-int v3, v6

    add-int/lit8 v2, v3, 0x1f

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v3, v2, 0x1f

    ushr-long v6, v4, v8

    xor-long/2addr v6, v4

    long-to-int v6, v6

    add-int v2, v3, v6

    return v2
.end method

.method public set([D)V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    array-length v0, p1

    if-le v0, v4, :cond_0

    aget-wide v2, p1, v4

    :cond_0
    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
