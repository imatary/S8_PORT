.class public Lcom/samsung/vip/engine/shape/PrimitiveCircle;
.super Ljava/lang/Object;
.source "PrimitiveCircle.java"


# instance fields
.field public Center:Landroid/graphics/Point;

.field public Radius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->Center:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->Radius:I

    return v0
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->Center:Landroid/graphics/Point;

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveCircle;->Radius:I

    return-void
.end method
