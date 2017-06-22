.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;
.super Ljava/lang/Object;
.source "LayerData.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSelectionBorder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->clearSelectionBorder()V

    return-void
.end method

.method public displayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayerId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)I

    move-result v0

    return v0
.end method

.method public getLayerManager()Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewOutputBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getPreviewOutputBuffer()[I

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    return v0
.end method

.method public getStateManager()Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    return-object v0
.end method

.method public onEffectThumbsUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onEffectThumbUpdated()V

    return-void
.end method

.method public onIconUpdated(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->getLayerId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateLayerIcon(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onOriginalUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onOriginalDataUpdated()V

    return-void
.end method

.method public onPreviewUpdate(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onPreviewUpdate(II)V

    return-void
.end method

.method public onPreviewUpdated()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewBuffer()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->mLayerId:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_0
    return-void
.end method
