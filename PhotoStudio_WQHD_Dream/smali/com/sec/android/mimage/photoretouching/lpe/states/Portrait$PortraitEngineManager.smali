.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
.super Ljava/lang/Object;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PortraitEngineManager"
.end annotation


# instance fields
.field private isApplySlimLeg:Z

.field private mFootPosY:I

.field private mPrevStep:I

.field private slimLegsInput:[I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mPrevStep:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->isApplySlimLeg:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mFootPosY:I

    return-void
.end method


# virtual methods
.method public afterSlimLegs()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->isApplySlimLeg:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/saiv/face/slimFigureEngine;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/saiv/face/slimFigureEngine;->ResultCrop([III)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/saiv/face/slimFigureEngine;

    invoke-static {}, Lcom/samsung/android/saiv/face/slimFigureEngine;->UpdateFootPosition()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mFootPosY:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v3

    array-length v4, v1

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[I)[I

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->isApplySlimLeg:Z

    goto/16 :goto_0
.end method

.method public applyBeautyFaceEffect()V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [I

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x2

    new-array v4, v8, [I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v9

    invoke-static {v2, v8, v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertARGBToYUV([III[I)[B

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    aget v8, v4, v11

    const/4 v9, 0x1

    aget v9, v4, v9

    array-length v10, v6

    invoke-static {v1, v8, v9, v6, v10}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->runBeauty([BII[II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v9

    invoke-static {v3, v1, v8, v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertYUVToARGB([I[BII[I)V

    sget-boolean v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v9

    invoke-static {v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->copyInputAlpha([I[III)I

    :cond_5
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v8

    array-length v9, v3

    invoke-static {v3, v11, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v11, v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v11

    invoke-virtual {v8, v3, v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    goto/16 :goto_0
.end method

.method public applyPreview(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mPrevStep:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mPrevStep:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isApplyAvailable:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applyPreviewOutOfFocus(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applySlimLegs(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3502(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->setProperty(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applyBeautyFaceEffect()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->setProperty(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applyBeautyFaceEffect()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->setProperty(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applyBeautyFaceEffect()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3802(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->setProperty(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applyBeautyFaceEffect()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public applyPreviewOutOfFocus(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->getportraitstatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->initPortraitEngine(ZLcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v9, v2, [I

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v9, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aput v2, v9, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v9, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, v9, v15

    add-int/lit8 v15, v15, 0x1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v8, p1

    invoke-static/range {v2 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runOutfocusInPortraitPreviewWithROI([III[IIII[II)I

    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-static {v2, v5, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->copyInputAlpha([I[III)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    move/from16 v0, p1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I
    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v16

    :goto_1
    const-wide/16 v2, 0x32

    cmp-long v2, v12, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v16

    goto :goto_1

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v3

    const/4 v4, 0x0

    array-length v6, v5

    invoke-static {v5, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v6

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_5
    return-void
.end method

.method public applySlimLegs(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->isApplySlimLeg:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I
    invoke-static {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3202(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/saiv/face/slimFigureEngine;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mFootPosY:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/slimFigureEngine;->slimBodyRun([I[IIIII)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    array-length v3, v1

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v3

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    return-void
.end method

.method public finishPortraitEngine()V
    .locals 1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->getportraitstatus()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->finishPortrait()V

    :cond_0
    return-void
.end method

.method public iniFistSlimLegs()I
    .locals 9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->slimLegsInput:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v0

    array-length v3, v0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mFootPosY:I

    if-lez v3, :cond_1

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    new-array v7, v3, [I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v0

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    aput v0, v4, v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v0

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    aput v0, v5, v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v6, v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/saiv/face/slimFigureEngine;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->slimLegsInput:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/saiv/face/slimFigureEngine;->GetFootPosition([IIII[I[I[I[I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mFootPosY:I

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->mFootPosY:I

    return v0
.end method

.method public initPortraitEngine(ZLcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 8

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->finishPortraitEngine()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->getFaceInfo()Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->initPortrait(III[IIILcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->getportraitstatus()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->getFaceInfo()Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->initPortrait(III[IIILcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
