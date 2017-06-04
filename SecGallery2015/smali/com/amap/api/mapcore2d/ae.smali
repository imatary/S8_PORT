.class public Lcom/amap/api/mapcore2d/ae;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# instance fields
.field private a:J

.field private b:J

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    return-void
.end method

.method private constructor <init>(DDJJ)V
    .locals 5

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    iput-wide p1, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iput-wide p3, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    iput-wide p5, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iput-wide p7, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    return-void
.end method

.method constructor <init>(DDZ)V
    .locals 7

    const-wide/high16 v4, -0x8000000000000000L

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    mul-double v0, p1, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    mul-double v0, p3, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iput-wide p3, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    return-void
.end method

.method public b()I
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public b(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    return-wide v0
.end method

.method public e()D
    .locals 4

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(J)D

    move-result-wide v0

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/api/mapcore2d/ae;

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/ae;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/ae;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/ae;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/ae;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()D
    .locals 4

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(J)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v2

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    return-wide v0
.end method

.method public g()Lcom/amap/api/mapcore2d/ae;
    .locals 10

    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iget-wide v8, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore2d/ae;-><init>(DDJJ)V

    return-object v1
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/ae;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/ae;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method
