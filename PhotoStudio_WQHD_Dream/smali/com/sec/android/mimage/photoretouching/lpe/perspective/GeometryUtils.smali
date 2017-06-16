.class public Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# instance fields
.field INF:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x40c3880000000000L    # 10000.0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->INF:D

    return-void
.end method


# virtual methods
.method doIntersect(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->orientation(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->orientation(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)I

    move-result v1

    invoke-virtual {p0, p3, p4, p1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->orientation(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)I

    move-result v2

    invoke-virtual {p0, p3, p4, p2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->orientation(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)I

    move-result v3

    if-eq v0, v1, :cond_1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p3, p2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->onSegment(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p4, p2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->onSegment(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0, p3, p1, p4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->onSegment(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->onSegment(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isInside([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;ILcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x3

    if-ge p2, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->INF:D

    iget-wide v8, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v6, v2, 0x1

    rem-int v3, v6, p2

    aget-object v6, p1, v2

    aget-object v7, p1, v3

    invoke-virtual {p0, v6, v7, p3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->doIntersect(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, p1, v2

    aget-object v7, p1, v3

    invoke-virtual {p0, v6, p3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->orientation(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)I

    move-result v6

    if-nez v6, :cond_3

    aget-object v4, p1, v2

    aget-object v5, p1, v3

    invoke-virtual {p0, v4, p3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->onSegment(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    move v2, v3

    if-nez v2, :cond_2

    rem-int/lit8 v6, v0, 0x2

    if-ne v6, v5, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method max(DD)D
    .locals 1

    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method

.method min(DD)D
    .locals 1

    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method

.method onSegment(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z
    .locals 6

    iget-wide v0, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v4, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->max(DD)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v4, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->min(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->max(DD)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->min(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method orientation(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)I
    .locals 10

    iget-wide v2, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v6, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v4, v6

    iget-wide v6, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v8, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
