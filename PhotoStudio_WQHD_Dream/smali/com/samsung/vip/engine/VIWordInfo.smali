.class public Lcom/samsung/vip/engine/VIWordInfo;
.super Ljava/lang/Object;
.source "VIWordInfo.java"


# instance fields
.field private mPointData:[I

.field private mPointNum:I

.field private mWordRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/vip/engine/VIWordInfo;->mWordRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/samsung/vip/engine/VIWordInfo;->mPointNum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vip/engine/VIWordInfo;->mPointData:[I

    return-void
.end method


# virtual methods
.method public getPointData()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/VIWordInfo;->mPointData:[I

    return-object v0
.end method

.method public getPointNum()I
    .locals 1

    iget v0, p0, Lcom/samsung/vip/engine/VIWordInfo;->mPointNum:I

    return v0
.end method

.method public getWordRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/VIWordInfo;->mWordRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setPointData([II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vip/engine/VIWordInfo;->mPointData:[I

    iput p2, p0, Lcom/samsung/vip/engine/VIWordInfo;->mPointNum:I

    return-void
.end method

.method public setWordRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/VIWordInfo;->mWordRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
