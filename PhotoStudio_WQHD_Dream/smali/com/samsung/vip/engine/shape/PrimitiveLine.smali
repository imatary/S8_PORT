.class public Lcom/samsung/vip/engine/shape/PrimitiveLine;
.super Ljava/lang/Object;
.source "PrimitiveLine.java"


# instance fields
.field public end:Landroid/graphics/Point;

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

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveLine;->end:Landroid/graphics/Point;

    return-object v0
.end method

.method public getStart()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveLine;->start:Landroid/graphics/Point;

    return-object v0
.end method

.method public isEqual(Lcom/samsung/vip/engine/shape/PrimitiveLine;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getStart()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vip/engine/shape/PrimitiveLine;->getEnd()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public setEnd(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveLine;->end:Landroid/graphics/Point;

    return-void
.end method

.method public setStart(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveLine;->start:Landroid/graphics/Point;

    return-void
.end method
