.class public Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;
.super Ljava/lang/Object;
.source "CustomAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_CustomAnimationController"


# instance fields
.field private currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

.field private currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

.field faceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field mAnimationHandler:Landroid/os/Handler;

.field private mDuration:I

.field mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

.field private play:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    return-void
.end method

.method private getNextIndex()I
    .locals 4

    const/4 v3, 0x2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-gez v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-gez v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-gez v0, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    :goto_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    if-gez v0, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_6

    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    return v0
.end method

.method public getFaceRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 11

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v0

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    if-ge v0, v3, :cond_3

    const/4 v7, 0x1

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v0, "PEDIT_CustomAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NEXT  mPhotoView.getWidth()  : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " getHeight "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " Aspect Ratio "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "bitmapWidth  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "bitmapHeight  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "faceRect  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "minX  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "minY "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " isLeft "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " isTop "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v0, v3

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;
    .locals 11

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    int-to-float v7, p2

    mul-float v7, v7, p8

    int-to-float v8, p1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    int-to-float v7, p2

    mul-float v7, v7, p8

    float-to-int v4, v7

    move v3, p2

    if-eqz p6, :cond_4

    iget v7, p3, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_3

    div-int/lit8 v7, v4, 0x2

    sub-int v7, p4, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    :goto_1
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    sub-int v7, p1, v4

    if-le v1, v7, :cond_2

    sub-int v1, p1, v4

    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v1

    const/4 v8, 0x0

    add-int v9, v1, v4

    int-to-float v9, v9

    int-to-float v10, v3

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v1, v7, 0x2

    goto :goto_1

    :cond_4
    sub-int v7, p1, v4

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_7

    div-int/lit8 v7, v4, 0x2

    sub-int v7, p4, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v5, v7, v8

    :goto_2
    sub-int v5, p1, v5

    sub-int v7, v5, v4

    if-gez v7, :cond_5

    move v5, v4

    :cond_5
    if-le v5, p1, :cond_6

    move v5, p1

    :cond_6
    new-instance v2, Landroid/graphics/RectF;

    sub-int v7, v5, v4

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v9, v5

    int-to-float v10, v3

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_7
    mul-int/lit8 v7, p1, 0x2

    iget v8, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iget v8, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    goto :goto_2

    :cond_8
    move v4, p1

    int-to-float v7, p1

    div-float v7, v7, p8

    float-to-int v3, v7

    if-eqz p7, :cond_c

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_b

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    :goto_3
    if-gez v6, :cond_9

    const/4 v6, 0x0

    :cond_9
    sub-int v7, p2, v3

    if-le v6, v7, :cond_a

    sub-int v6, p2, v3

    :cond_a
    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v8, v6

    int-to-float v9, v4

    add-int v10, v6, v3

    int-to-float v10, v10

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_b
    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v6, v7, 0x2

    goto :goto_3

    :cond_c
    sub-int v7, p2, v3

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_f

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    :goto_4
    sub-int v0, p2, v0

    sub-int v7, v0, v3

    if-gez v7, :cond_d

    move v0, v3

    :cond_d
    if-le v0, p2, :cond_e

    move v0, p2

    :cond_e
    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    sub-int v8, v0, v3

    int-to-float v8, v8

    int-to-float v9, v4

    int-to-float v10, v0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_f
    mul-int/lit8 v7, p2, 0x2

    iget v8, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v0, v7, 0x2

    goto :goto_4
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    return v0
.end method

.method public onAnimationFinish()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->getNextIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v1, :cond_0

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->onAnimationFinishedSelectGridItemAtIndex(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$3;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$3;-><init>(Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;)V

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current index1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->onAnimationFinish()V

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current index2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setCurrentFrame(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, p1, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->startThumbSelectionAtIndex(IZ)V

    :goto_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v1, :cond_3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->startThumbSelectionAtIndex(IZ)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0
.end method

.method public setDirection(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Loop:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mDuration:I

    return-void
.end method

.method public start()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v2, :cond_1

    :cond_0
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->getFaceRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->startThumbSelectionAtIndex(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_6
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start(Z)V
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->startThumbSelectionAtIndex(IZ)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->play:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;)V

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method

.method public updateFaceRects(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->faceRects:Ljava/util/ArrayList;

    return-void
.end method
