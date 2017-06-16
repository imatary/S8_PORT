.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;
.super Landroid/os/AsyncTask;
.source "Adjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitSmartTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14

    const-string v0, "PEDIT_Adjustment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitSmartAsyncTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    monitor-enter v13

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/media/vision/SemSegmentation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipH:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHFlip:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipV:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mVFlip:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartRotate:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartPerAngle:F
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->getPerspective()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHFlip:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipH:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4702(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mVFlip:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipV:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4802(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartRotate:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4902(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->getPerspective()F

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartPerAngle:F
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5002(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v12

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartARGB:[I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4002(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[I)[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5702(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipH:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipV:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartPerAngle:F
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartARGB:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[I

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipH:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipV:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->getPerspectiveType()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartPerAngle:F
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v8

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->runRotateFlipPerspective([IIIIIIIF)V
    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[IIIIIIIF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartARGB:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v12

    move v6, v12

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;

    move-result-object v0

    invoke-virtual {v0, v12, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->setPreviewInfo(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/media/vision/SemSegmentation;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/media/vision/SemSegmentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/vision/SemSegmentation;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/media/vision/SemSegmentation;->getInstance(Landroid/graphics/Bitmap;)Lcom/samsung/android/media/vision/SemSegmentation;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5602(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/samsung/android/media/vision/SemSegmentation;)Lcom/samsung/android/media/vision/SemSegmentation;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v13

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartARGB:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v12

    move v6, v12

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v10

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5602(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/samsung/android/media/vision/SemSegmentation;)Lcom/samsung/android/media/vision/SemSegmentation;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5702(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v13

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$InitSmartTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
