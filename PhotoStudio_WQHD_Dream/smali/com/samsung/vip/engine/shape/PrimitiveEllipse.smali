.class public Lcom/samsung/vip/engine/shape/PrimitiveEllipse;
.super Ljava/lang/Object;
.source "PrimitiveEllipse.java"


# instance fields
.field public Center:Landroid/graphics/Point;

.field public CosTheta:F

.field public LongAxis:I

.field public ShortAxis:I

.field public SinTheta:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->Center:Landroid/graphics/Point;

    return-object v0
.end method

.method public getCosTheta()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->CosTheta:F

    return v0
.end method

.method public getLongAxis()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->LongAxis:I

    return v0
.end method

.method public getShortAxis()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->ShortAxis:I

    return v0
.end method

.method public getSinTheta()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->SinTheta:F

    return v0
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->Center:Landroid/graphics/Point;

    return-void
.end method

.method public setCosTheta(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->CosTheta:F

    return-void
.end method

.method public setLongAxis(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->LongAxis:I

    return-void
.end method

.method public setShortAxis(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->ShortAxis:I

    return-void
.end method

.method public setSinTheta(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveEllipse;->SinTheta:F

    return-void
.end method
