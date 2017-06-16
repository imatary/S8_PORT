.class public Lcom/samsung/vip/engine/shape/PrimitiveArrow;
.super Ljava/lang/Object;
.source "PrimitiveArrow.java"


# instance fields
.field public end:Landroid/graphics/Point;

.field public left:Landroid/graphics/Point;

.field public right:Landroid/graphics/Point;

.field public start:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->end:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLeft()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->left:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRight()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->right:Landroid/graphics/Point;

    return-object v0
.end method

.method public getStart()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->start:Landroid/graphics/Point;

    return-object v0
.end method

.method public setEnd(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->end:Landroid/graphics/Point;

    return-void
.end method

.method public setLeft(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->left:Landroid/graphics/Point;

    return-void
.end method

.method public setRight(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->right:Landroid/graphics/Point;

    return-void
.end method

.method public setStart(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveArrow;->start:Landroid/graphics/Point;

    return-void
.end method
