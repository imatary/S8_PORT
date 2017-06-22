.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v10

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v9

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v3, 0x1

    invoke-static {v8, v10, v9, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v1, v3, [I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object v5, v1

    move v6, v10

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2, v1, v10, v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_1
    return-void
.end method
