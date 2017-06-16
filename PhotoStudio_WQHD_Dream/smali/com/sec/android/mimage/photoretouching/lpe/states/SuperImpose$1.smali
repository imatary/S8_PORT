.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$height:I

.field final synthetic val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$layerImageData:[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$origBufId:I

.field final synthetic val$originalOrder:[I

.field final synthetic val$originalSiViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;III[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$origBufId:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$height:I

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$originalSiViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-object p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$originalOrder:[I

    iput-object p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$layerImageData:[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iput-object p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$origBufId:I

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v3, v8

    new-array v1, v3, [I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$height:I

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$originalSiViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$originalOrder:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$layerImageData:[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->saveImageOriginal([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    if-lt v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$height:I

    if-ge v3, v4, :cond_4

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$originalSiViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->deleteSuperImposeLayersOriginal([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$originalSiViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freeResourcesCus([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$height:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$width:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;->val$height:I

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    goto :goto_1
.end method
