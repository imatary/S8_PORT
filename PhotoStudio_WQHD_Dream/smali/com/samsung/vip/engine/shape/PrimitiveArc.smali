.class public Lcom/samsung/vip/engine/shape/PrimitiveArc;
.super Ljava/lang/Object;
.source "PrimitiveArc.java"


# instance fields
.field private mCenter:Landroid/graphics/PointF;

.field private mMaxRadius:F

.field private mMinRadius:F

.field private mOrientation:F

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMaxRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mMaxRadius:F

    return v0
.end method

.method public getMinRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mMinRadius:F

    return v0
.end method

.method public getOrientation()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mOrientation:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mSweepAngle:F

    return v0
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mCenter:Landroid/graphics/PointF;

    return-void
.end method

.method public setMaxRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mMaxRadius:F

    return-void
.end method

.method public setMinRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mMinRadius:F

    return-void
.end method

.method public setOrientation(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mOrientation:F

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mStartAngle:F

    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArc;->mSweepAngle:F

    return-void
.end method
