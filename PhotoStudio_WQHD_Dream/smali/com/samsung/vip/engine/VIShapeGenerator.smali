.class public Lcom/samsung/vip/engine/VIShapeGenerator;
.super Ljava/lang/Object;
.source "VIShapeGenerator.java"


# static fields
.field private static final PI:F = 3.1415927f

.field private static final STONE_COUNT_LARGE:I = 0x80

.field private static final STONE_COUNT_SMALL:I = 0x40

.field private static final STONE_COUNT_THRES:I = 0xbb8

.field private static final STONE_COUNT_XSMALL:I = 0x20

.field private static mShapeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/vip/engine/shape/GraphPrimitive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/vip/engine/VIShapeGenerator;->mShapeList:Ljava/util/ArrayList;

    return-void
.end method

.method private CopyDataToArrow(Lcom/samsung/vip/engine/shape/PrimitiveArrow;[SI)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/4 v6, 0x2

    new-array v4, v6, [S

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v0, Landroid/graphics/Point;->y:I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v2, Landroid/graphics/Point;->y:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v7

    add-int/lit8 p3, v1, 0x1

    aget-short v6, p2, v1

    aput-short v6, v4, v8

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->setStart(Landroid/graphics/Point;)V

    invoke-virtual {p1, v0}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->setEnd(Landroid/graphics/Point;)V

    invoke-virtual {p1, v2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->setLeft(Landroid/graphics/Point;)V

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->setRight(Landroid/graphics/Point;)V

    return-void
.end method

.method private CopyDataToBezier(Lcom/samsung/vip/engine/shape/PrimitiveBezierList;[SI)V
    .locals 10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aget-short v2, p2, p3

    add-int/lit8 p3, p3, 0x2

    const/4 v7, 0x0

    move v8, p3

    :goto_0
    if-lt v7, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;->setBezierList(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/vip/engine/shape/PrimitiveBezier;

    invoke-direct {v0}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    add-int/lit8 p3, v8, 0x1

    aget-short v9, p2, v8

    iput v9, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, p3, 0x1

    aget-short v9, p2, p3

    iput v9, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 p3, v8, 0x1

    aget-short v9, p2, v8

    iput v9, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, p3, 0x1

    aget-short v9, p2, p3

    iput v9, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 p3, v8, 0x1

    aget-short v9, p2, v8

    iput v9, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, p3, 0x1

    aget-short v9, p2, p3

    iput v9, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 p3, v8, 0x1

    aget-short v9, p2, v8

    iput v9, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, p3, 0x1

    aget-short v9, p2, p3

    iput v9, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->setControl01(Landroid/graphics/Point;)V

    invoke-virtual {v0, v4}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->setControl02(Landroid/graphics/Point;)V

    invoke-virtual {v0, v5}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->setControl03(Landroid/graphics/Point;)V

    invoke-virtual {v0, v6}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->setControl04(Landroid/graphics/Point;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private CopyDataToCircle(Lcom/samsung/vip/engine/shape/PrimitiveCircle;[SI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x2

    new-array v2, v3, [S

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    aput-short v3, v2, v4

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    aput-short v3, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    aput-short v3, v2, v4

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    aput-short v3, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->setCenter(Landroid/graphics/Point;)V

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->setRadius(I)V

    return-void
.end method

.method private CopyDataToCircleArc(Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;[SI)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    aget-short v0, p2, v7

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v6, 0x2

    new-array v4, v6, [S

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v8

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    aput-short v6, v4, v7

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v8

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    aput-short v6, v4, v7

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->setCenter(Landroid/graphics/Point;)V

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v8

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    aput-short v6, v4, v7

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v8

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    aput-short v6, v4, v7

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->setStart(Landroid/graphics/Point;)V

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v8

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    aput-short v6, v4, v7

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    aput-short v6, v4, v8

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    aput-short v6, v4, v7

    invoke-direct {p0, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v6

    iput v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->setEnd(Landroid/graphics/Point;)V

    add-int/lit8 v3, p3, 0x1

    aget-short v6, p2, p3

    invoke-virtual {p1, v6}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->setRadius(I)V

    add-int/lit8 p3, v3, 0x1

    aget-short v6, p2, v3

    invoke-virtual {p1, v6}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->setDirection(I)V

    return-void
.end method

.method private CopyDataToEllipse(Lcom/samsung/vip/engine/shape/PrimitiveEllipse;[SI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x2

    new-array v2, v3, [S

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    aput-short v3, v2, v4

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    aput-short v3, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    aput-short v3, v2, v4

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    aput-short v3, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->setCenter(Landroid/graphics/Point;)V

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->setLongAxis(I)V

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->setShortAxis(I)V

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    aput-short v3, v2, v4

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    aput-short v3, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getFloat([S)F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->setCosTheta(F)V

    add-int/lit8 v1, p3, 0x1

    aget-short v3, p2, p3

    aput-short v3, v2, v4

    add-int/lit8 p3, v1, 0x1

    aget-short v3, p2, v1

    aput-short v3, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getFloat([S)F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->setSinTheta(F)V

    return-void
.end method

.method private CopyDataToEllipseArc(Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;[SI)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v5, 0x2

    new-array v3, v5, [S

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v5

    iput v5, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v5

    iput v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setCenter(Landroid/graphics/Point;)V

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v4}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setStart(Landroid/graphics/Point;)V

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v5

    iput v5, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v5

    iput v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setEnd(Landroid/graphics/Point;)V

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setLongAxis(I)V

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setShortAxis(I)V

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getFloat([S)F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setCosTheta(F)V

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    aput-short v5, v3, v6

    add-int/lit8 p3, v2, 0x1

    aget-short v5, p2, v2

    aput-short v5, v3, v7

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->getFloat([S)F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setSinTheta(F)V

    add-int/lit8 v2, p3, 0x1

    aget-short v5, p2, p3

    invoke-virtual {p1, v5}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->setDirection(I)V

    return-void
.end method

.method private CopyDataToLine(Lcom/samsung/vip/engine/shape/PrimitiveLine;[SI)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v4, 0x2

    new-array v2, v4, [S

    add-int/lit8 v1, p3, 0x1

    aget-short v4, p2, p3

    aput-short v4, v2, v5

    add-int/lit8 p3, v1, 0x1

    aget-short v4, p2, v1

    aput-short v4, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v4, p2, p3

    aput-short v4, v2, v5

    add-int/lit8 p3, v1, 0x1

    aget-short v4, p2, v1

    aput-short v4, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, p3, 0x1

    aget-short v4, p2, p3

    aput-short v4, v2, v5

    add-int/lit8 p3, v1, 0x1

    aget-short v4, p2, v1

    aput-short v4, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p3, 0x1

    aget-short v4, p2, p3

    aput-short v4, v2, v5

    add-int/lit8 p3, v1, 0x1

    aget-short v4, p2, v1

    aput-short v4, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->getInt([S)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    invoke-virtual {p1, v0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    return-void
.end method

.method private CopyDataToPolygon(Lcom/samsung/vip/engine/shape/PrimitivePolygon;[SI)V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aget-short v1, p2, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitivePolygon;->setPoints(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    add-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x0

    aget-short v4, p2, v4

    iput v4, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-short v4, p2, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private CopyDataToPolyline(Lcom/samsung/vip/engine/shape/PrimitivePolyline;[SI)V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aget-short v1, p2, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/samsung/vip/engine/shape/PrimitivePolyline;->setPoints(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    add-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x0

    aget-short v4, p2, v4

    iput v4, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-short v4, p2, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private POINT_2_POINT_F(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private Trans_PointF(Landroid/graphics/PointF;Landroid/graphics/Point;FFI)Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p4

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p4

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, p4

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method private getAngle(FF)F
    .locals 4

    const v1, 0x40490fdb    # (float)Math.PI

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-nez v2, :cond_3

    cmpl-float v1, p2, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    const v0, 0x3fc90fdb

    goto :goto_0

    :cond_2
    const v0, 0x4096cbe4

    goto :goto_0

    :cond_3
    cmpl-float v2, p1, v0

    if-lez v2, :cond_5

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_4
    const v0, 0x40c90fdb

    div-float v1, p2, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_5
    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    div-float v0, p2, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getBezierPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p4, Landroid/graphics/PointF;->x:F

    iget v5, p5, Landroid/graphics/PointF;->x:F

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/vip/engine/VIShapeGenerator;->getBezierValue(FFFFF)F

    move-result v6

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    iget v4, p4, Landroid/graphics/PointF;->y:F

    iget v5, p5, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/vip/engine/VIShapeGenerator;->getBezierValue(FFFFF)F

    move-result v7

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private getBezierValue(FFFFF)F
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    float-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    float-to-double v4, v4

    mul-double/2addr v2, v4

    float-to-double v4, p4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    float-to-double v2, p1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getFloat([S)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-short v1, p1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-short v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private getInt([S)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-short v1, p1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-short v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private get_rad_ellipse_f(Landroid/graphics/PointF;FF)F
    .locals 8

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, p2

    div-float/2addr v2, p3

    float-to-double v4, v2

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v0, v4

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    float-to-double v4, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v4, v6

    double-to-float v0, v4

    :cond_0
    return v0
.end method

.method private makeArc(Ljava/util/ArrayList;Landroid/graphics/PointF;FFFZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/PointF;",
            "FFFZ",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "I)V"
        }
    .end annotation

    new-instance v2, Lcom/samsung/vip/engine/shape/PrimitiveArc;

    invoke-direct {v2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;-><init>()V

    invoke-virtual {v2, p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setCenter(Landroid/graphics/PointF;)V

    invoke-virtual {v2, p3}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setMinRadius(F)V

    invoke-virtual {v2, p4}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setMaxRadius(F)V

    invoke-virtual {v2, p5}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setOrientation(F)V

    if-eqz p6, :cond_3

    iget v4, p7, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v5, p7, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/samsung/vip/engine/VIShapeGenerator;->getAngle(FF)F

    move-result v0

    iget v4, p8, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v5, p8, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/samsung/vip/engine/VIShapeGenerator;->getAngle(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setStartAngle(F)V

    if-lez p9, :cond_1

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    const v4, 0x40c90fdb

    sub-float v5, v0, v1

    sub-float v3, v4, v5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setSweepAngle(F)V

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveArc;)V

    return-void

    :cond_0
    sub-float v3, v1, v0

    goto :goto_0

    :cond_1
    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    sub-float v3, v1, v0

    goto :goto_0

    :cond_2
    sub-float v4, v1, v0

    const v5, 0x40c90fdb

    sub-float v3, v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setStartAngle(F)V

    const v4, 0x40c90fdb

    invoke-virtual {v2, v4}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->setSweepAngle(F)V

    goto :goto_1
.end method

.method private makeArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveArc;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveArc;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->getCenter()Landroid/graphics/PointF;

    move-result-object v6

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->getMinRadius()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->getMaxRadius()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->getOrientation()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->getStartAngle()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveArc;->getSweepAngle()F

    move-result v17

    add-float v20, v11, v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v21

    mul-float v5, v20, v21

    const v20, 0x453b8000    # 3000.0f

    cmpl-float v20, v5, v20

    if-lez v20, :cond_0

    const/16 v16, 0x80

    :goto_0
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v15, v17, v20

    add-int/lit8 v20, v16, 0x1

    move/from16 v0, v20

    new-array v13, v0, [Landroid/graphics/PointF;

    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v20, v16, 0x1

    move/from16 v0, v20

    if-lt v9, v0, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/16 v16, 0x40

    goto :goto_0

    :cond_1
    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v20, v20, v15

    add-float v4, v14, v20

    float-to-double v0, v7

    move-wide/from16 v20, v0

    float-to-double v0, v10

    move-wide/from16 v22, v0

    float-to-double v0, v4

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    float-to-double v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    float-to-double v0, v11

    move-wide/from16 v22, v0

    float-to-double v0, v4

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    float-to-double v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    float-to-double v0, v8

    move-wide/from16 v20, v0

    float-to-double v0, v10

    move-wide/from16 v22, v0

    float-to-double v0, v4

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    float-to-double v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    float-to-double v0, v11

    move-wide/from16 v22, v0

    float-to-double v0, v4

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    float-to-double v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    new-instance v20, Landroid/graphics/PointF;

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v20, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method private makeArrow(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveArrow;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveArrow;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getStart()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getLeft()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getRight()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    return-void
.end method

.method private makeBezier(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveBezierList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveBezierList;",
            ")V"
        }
    .end annotation

    const/16 v15, 0x20

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;->getBezierList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    mul-int/lit8 v13, v10, 0x21

    new-array v14, v13, [Landroid/graphics/PointF;

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;->getBezierList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/vip/engine/shape/PrimitiveBezier;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v7}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->getControl01()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v7}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->getControl02()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v7}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->getControl03()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v7}, Lcom/samsung/vip/engine/shape/PrimitiveBezier;->getControl04()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v9, 0x0

    move v12, v11

    :goto_1
    const/16 v1, 0x21

    if-lt v9, v1, :cond_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    goto :goto_0

    :cond_2
    int-to-float v1, v9

    int-to-float v0, v15

    move/from16 v16, v0

    div-float v2, v1, v16

    if-ge v12, v13, :cond_1

    if-ne v9, v15, :cond_3

    add-int/lit8 v11, v12, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/vip/engine/VIShapeGenerator;->getBezierPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    aput-object v1, v14, v12

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/vip/engine/VIShapeGenerator;->getBezierPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    aput-object v1, v14, v12

    goto :goto_2
.end method

.method private makeCircle(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveCircle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveCircle;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->getRadius()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->getRadius()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeArc(Ljava/util/ArrayList;Landroid/graphics/PointF;FFFZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    return-void
.end method

.method private makeCircleArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;",
            ")V"
        }
    .end annotation

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->getRadius()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->getRadius()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->getStart()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->getEnd()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->getDirection()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeArc(Ljava/util/ArrayList;Landroid/graphics/PointF;FFFZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    return-void
.end method

.method private makeEllipse(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveEllipse;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->getShortAxis()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->getLongAxis()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->getCosTheta()F

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->getSinTheta()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->getAngle(FF)F

    move-result v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeArc(Ljava/util/ArrayList;Landroid/graphics/PointF;FFFZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    return-void
.end method

.method private makeEllipseArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeEllipseArcDirect(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;)V

    return-void
.end method

.method private makeEllipseArcDirect(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getStart()Landroid/graphics/Point;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->POINT_2_POINT_F(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getCenter()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getCosTheta()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getSinTheta()F

    move-result v6

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/vip/engine/VIShapeGenerator;->Trans_PointF(Landroid/graphics/PointF;Landroid/graphics/Point;FFI)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getEnd()Landroid/graphics/Point;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->POINT_2_POINT_F(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getCenter()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getCosTheta()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getSinTheta()F

    move-result v6

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/vip/engine/VIShapeGenerator;->Trans_PointF(Landroid/graphics/PointF;Landroid/graphics/Point;FFI)Landroid/graphics/PointF;

    move-result-object v12

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getLongAxis()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getShortAxis()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->get_rad_ellipse_f(Landroid/graphics/PointF;FF)F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getLongAxis()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getShortAxis()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->get_rad_ellipse_f(Landroid/graphics/PointF;FF)F

    move-result v11

    move v8, v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getDirection()I

    move-result v10

    const/4 v2, 0x1

    if-ne v10, v2, :cond_1

    cmpl-float v2, v14, v11

    if-lez v2, :cond_0

    float-to-double v4, v11

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v4, v6

    double-to-float v11, v4

    :cond_0
    :goto_0
    sub-float v20, v11, v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getShortAxis()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getLongAxis()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v15, v2, v4

    const v2, 0x453b8000    # 3000.0f

    cmpl-float v2, v15, v2

    if-lez v2, :cond_2

    const/16 v19, 0x80

    :goto_1
    move/from16 v0, v19

    int-to-float v2, v0

    div-float v18, v20, v2

    add-int/lit8 v2, v19, 0x1

    new-array v0, v2, [Landroid/graphics/PointF;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v2, v19, 0x1

    move/from16 v0, v16

    if-lt v0, v2, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    cmpg-float v2, v14, v11

    if-gez v2, :cond_0

    float-to-double v4, v11

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v4, v6

    double-to-float v11, v4

    goto :goto_0

    :cond_2
    const/16 v19, 0x40

    goto :goto_1

    :cond_3
    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v2, v2, v18

    add-float v8, v14, v2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getLongAxis()I

    move-result v2

    int-to-double v4, v2

    float-to-double v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getShortAxis()I

    move-result v2

    int-to-double v4, v2

    float-to-double v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getCenter()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getCosTheta()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->getSinTheta()F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/vip/engine/VIShapeGenerator;->Trans_PointF(Landroid/graphics/PointF;Landroid/graphics/Point;FFI)Landroid/graphics/PointF;

    move-result-object v9

    new-instance v2, Landroid/graphics/PointF;

    iget v4, v9, Landroid/graphics/PointF;->x:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v17, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2
.end method

.method private makeExceptionalProcessForDoubleArrow(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/vip/engine/shape/PrimitiveArrow;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/vip/engine/shape/PrimitiveLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {p0, p1, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {p0, p1, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    new-instance v2, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v2}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vip/engine/shape/PrimitiveArrow;

    invoke-virtual {v4}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getStart()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vip/engine/shape/PrimitiveArrow;

    invoke-virtual {v4}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->getEnd()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-virtual {v3, v2, v5}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->isEqual(Lcom/samsung/vip/engine/shape/PrimitiveLine;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {p0, p1, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private makeGroupAndObject(Ljava/util/ArrayList;[SLjava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;[S",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/vip/engine/shape/PrimitiveArrow;",
            ">;)V"
        }
    .end annotation

    const/16 v16, 0x0

    aget-short v4, p2, v16

    add-int/lit8 v16, v16, 0x2

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_0
    if-lt v15, v4, :cond_1

    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeExceptionalProcessForDoubleArrow(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    aget-short v18, p2, v16

    add-int/lit8 v16, v16, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    new-instance v11, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v11}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToLine(Lcom/samsung/vip/engine/shape/PrimitiveLine;[SI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x8

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    new-instance v7, Lcom/samsung/vip/engine/shape/PrimitiveCircle;

    invoke-direct {v7}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v7, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToCircle(Lcom/samsung/vip/engine/shape/PrimitiveCircle;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeCircle(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveCircle;)V

    add-int/lit8 v16, v16, 0x6

    goto :goto_1

    :cond_4
    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    new-instance v9, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;

    invoke-direct {v9}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v9, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToEllipse(Lcom/samsung/vip/engine/shape/PrimitiveEllipse;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeEllipse(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipse;)V

    add-int/lit8 v16, v16, 0xa

    goto :goto_1

    :cond_5
    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    new-instance v8, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;

    invoke-direct {v8}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v8, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToCircleArc(Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeCircleArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;)V

    add-int/lit8 v16, v16, 0xe

    goto :goto_1

    :cond_6
    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    new-instance v10, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;

    invoke-direct {v10}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v10, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToEllipseArc(Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeEllipseArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;)V

    add-int/lit8 v16, v16, 0x14

    goto/16 :goto_1

    :cond_7
    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    new-instance v12, Lcom/samsung/vip/engine/shape/PrimitivePolygon;

    invoke-direct {v12}, Lcom/samsung/vip/engine/shape/PrimitivePolygon;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v12, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToPolygon(Lcom/samsung/vip/engine/shape/PrimitivePolygon;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/samsung/vip/engine/VIShapeGenerator;->makePolygon(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitivePolygon;)V

    invoke-virtual {v12}, Lcom/samsung/vip/engine/shape/PrimitivePolygon;->getPoints()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    mul-int/lit8 v19, v19, 0x4

    add-int/lit8 v19, v19, 0x2

    add-int v16, v16, v19

    goto/16 :goto_1

    :cond_8
    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    new-instance v13, Lcom/samsung/vip/engine/shape/PrimitivePolyline;

    invoke-direct {v13}, Lcom/samsung/vip/engine/shape/PrimitivePolyline;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v13, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToPolyline(Lcom/samsung/vip/engine/shape/PrimitivePolyline;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/samsung/vip/engine/VIShapeGenerator;->makePolyline(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitivePolyline;)V

    invoke-virtual {v13}, Lcom/samsung/vip/engine/shape/PrimitivePolyline;->getPoints()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    mul-int/lit8 v19, v19, 0x4

    add-int/lit8 v19, v19, 0x2

    add-int v16, v16, v19

    goto/16 :goto_1

    :cond_9
    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    new-instance v6, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;

    invoke-direct {v6}, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v6, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToBezier(Lcom/samsung/vip/engine/shape/PrimitiveBezierList;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeBezier(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveBezierList;)V

    invoke-virtual {v6}, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;->getBezierList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    mul-int/lit8 v19, v19, 0x4

    add-int/lit8 v19, v19, 0x2

    add-int v16, v16, v19

    goto/16 :goto_1

    :cond_a
    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    new-instance v5, Lcom/samsung/vip/engine/shape/PrimitiveArrow;

    invoke-direct {v5}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToArrow(Lcom/samsung/vip/engine/shape/PrimitiveArrow;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeArrow(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveArrow;)V

    add-int/lit8 v16, v16, 0x10

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method private makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitiveLine;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x3

    new-array v2, v3, [Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private makePolygon(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitivePolygon;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitivePolygon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitivePolygon;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method private makePolyline(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitivePolyline;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/samsung/vip/engine/shape/PrimitivePolyline;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/vip/engine/shape/PrimitivePolyline;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    new-instance v1, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private makeTable(Ljava/util/ArrayList;[S)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;[S)V"
        }
    .end annotation

    const/4 v6, 0x1

    aget-short v5, p2, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v0, p2, v5

    aget-short v5, p2, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-short v1, p2, v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    return-void

    :cond_0
    new-instance v4, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    aget-short v6, p2, v6

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v7, p2, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    aget-short v6, p2, v6

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x3

    aget-short v7, p2, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-direct {p0, p1, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v4}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x0

    aget-short v6, p2, v6

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x4

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-short v7, p2, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setStart(Landroid/graphics/Point;)V

    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    aget-short v6, p2, v6

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x4

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    aget-short v7, p2, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->setEnd(Landroid/graphics/Point;)V

    invoke-direct {p0, p1, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public addShape(Lcom/samsung/vip/engine/shape/GraphPrimitive;)V
    .locals 1

    sget-object v0, Lcom/samsung/vip/engine/VIShapeGenerator;->mShapeList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vip/engine/VIShapeGenerator;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public generate(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v16, Lcom/samsung/vip/engine/VIShapeGenerator;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/vip/engine/shape/GraphPrimitive;

    iget-short v11, v15, Lcom/samsung/vip/engine/shape/GraphPrimitive;->nType:S

    iget-object v2, v15, Lcom/samsung/vip/engine/shape/GraphPrimitive;->PrimitiveData:[S

    packed-switch v11, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Landroid/graphics/PointF;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    new-instance v10, Lcom/samsung/vip/engine/shape/PrimitiveLine;

    invoke-direct {v10}, Lcom/samsung/vip/engine/shape/PrimitiveLine;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToLine(Lcom/samsung/vip/engine/shape/PrimitiveLine;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeLine(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveLine;)V

    goto :goto_1

    :pswitch_2
    new-instance v6, Lcom/samsung/vip/engine/shape/PrimitiveCircle;

    invoke-direct {v6}, Lcom/samsung/vip/engine/shape/PrimitiveCircle;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToCircle(Lcom/samsung/vip/engine/shape/PrimitiveCircle;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeCircle(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveCircle;)V

    goto :goto_1

    :pswitch_3
    new-instance v8, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;

    invoke-direct {v8}, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToEllipse(Lcom/samsung/vip/engine/shape/PrimitiveEllipse;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeEllipse(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipse;)V

    goto :goto_1

    :pswitch_4
    new-instance v7, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;

    invoke-direct {v7}, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToCircleArc(Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeCircleArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;)V

    goto :goto_1

    :pswitch_5
    new-instance v9, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;

    invoke-direct {v9}, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToEllipseArc(Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeEllipseArc(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;)V

    goto :goto_1

    :pswitch_6
    new-instance v13, Lcom/samsung/vip/engine/shape/PrimitivePolygon;

    invoke-direct {v13}, Lcom/samsung/vip/engine/shape/PrimitivePolygon;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToPolygon(Lcom/samsung/vip/engine/shape/PrimitivePolygon;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/samsung/vip/engine/VIShapeGenerator;->makePolygon(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitivePolygon;)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v14, Lcom/samsung/vip/engine/shape/PrimitivePolyline;

    invoke-direct {v14}, Lcom/samsung/vip/engine/shape/PrimitivePolyline;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToPolyline(Lcom/samsung/vip/engine/shape/PrimitivePolyline;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/vip/engine/VIShapeGenerator;->makePolyline(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitivePolyline;)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v3, Lcom/samsung/vip/engine/shape/PrimitiveArrow;

    invoke-direct {v3}, Lcom/samsung/vip/engine/shape/PrimitiveArrow;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToArrow(Lcom/samsung/vip/engine/shape/PrimitiveArrow;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeArrow(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveArrow;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeGroupAndObject(Ljava/util/ArrayList;[SLjava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_a
    new-instance v5, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;

    invoke-direct {v5}, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v2, v1}, Lcom/samsung/vip/engine/VIShapeGenerator;->CopyDataToBezier(Lcom/samsung/vip/engine/shape/PrimitiveBezierList;[SI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeBezier(Ljava/util/ArrayList;Lcom/samsung/vip/engine/shape/PrimitiveBezierList;)V

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vip/engine/VIShapeGenerator;->makeTable(Ljava/util/ArrayList;[S)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
