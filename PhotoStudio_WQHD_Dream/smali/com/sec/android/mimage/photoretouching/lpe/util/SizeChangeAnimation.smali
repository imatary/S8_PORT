.class public Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;
.super Landroid/view/animation/Animation;
.source "SizeChangeAnimation.java"


# instance fields
.field private deltaHeight:I

.field private deltaWidth:I

.field private mView:Landroid/view/View;

.field private startHeight:I

.field private startWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaHeight:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startWidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaHeight:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaWidth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public setHeights(II)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startHeight:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaHeight:I

    return-void
.end method

.method public setWidths(II)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->startWidth:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->deltaWidth:I

    return-void
.end method
