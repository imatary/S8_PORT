.class public Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;
.super Ljava/lang/Object;
.source "PrimitiveEllipseArc.java"


# instance fields
.field public Center:Landroid/graphics/Point;

.field public Direction:I

.field public cosTheta:F

.field public end:Landroid/graphics/Point;

.field public longAxis:I

.field public shortAxis:I

.field public sinTheta:F

.field public start:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->Center:Landroid/graphics/Point;

    return-object v0
.end method

.method public getCosTheta()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->cosTheta:F

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->Direction:I

    return v0
.end method

.method public getEnd()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->end:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLongAxis()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->longAxis:I

    return v0
.end method

.method public getShortAxis()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->shortAxis:I

    return v0
.end method

.method public getSinTheta()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->sinTheta:F

    return v0
.end method

.method public getStart()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->start:Landroid/graphics/Point;

    return-object v0
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->Center:Landroid/graphics/Point;

    return-void
.end method

.method public setCosTheta(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->cosTheta:F

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->Direction:I

    return-void
.end method

.method public setEnd(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->end:Landroid/graphics/Point;

    return-void
.end method

.method public setLongAxis(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->longAxis:I

    return-void
.end method

.method public setShortAxis(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->shortAxis:I

    return-void
.end method

.method public setSinTheta(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->sinTheta:F

    return-void
.end method

.method public setStart(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipseArc;->start:Landroid/graphics/Point;

    return-void
.end method
