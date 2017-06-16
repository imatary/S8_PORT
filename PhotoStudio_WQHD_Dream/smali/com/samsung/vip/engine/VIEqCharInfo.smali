.class public Lcom/samsung/vip/engine/VIEqCharInfo;
.super Ljava/lang/Object;
.source "VIEqCharInfo.java"


# instance fields
.field public StrokeIDs:[I

.field public nRect:Landroid/graphics/Rect;

.field public nStrokeNum:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->StrokeIDs:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->StrokeIDs:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->nStrokeNum:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->nRect:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->StrokeIDs:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([IILandroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->StrokeIDs:[I

    iput p2, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->nStrokeNum:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/vip/engine/VIEqCharInfo;->nRect:Landroid/graphics/Rect;

    return-void
.end method
