.class public Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;
.super Ljava/lang/Object;
.source "PrimitiveCircleARC.java"


# instance fields
.field public Center:Landroid/graphics/Point;

.field public Direction:I

.field public Radius:I

.field public end:Landroid/graphics/Point;

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

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->Center:Landroid/graphics/Point;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->Direction:I

    return v0
.end method

.method public getEnd()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->end:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->Radius:I

    return v0
.end method

.method public getStart()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->start:Landroid/graphics/Point;

    return-object v0
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->Center:Landroid/graphics/Point;

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->Direction:I

    return-void
.end method

.method public setEnd(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->end:Landroid/graphics/Point;

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->Radius:I

    return-void
.end method

.method public setStart(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircleARC;->start:Landroid/graphics/Point;

    return-void
.end method
