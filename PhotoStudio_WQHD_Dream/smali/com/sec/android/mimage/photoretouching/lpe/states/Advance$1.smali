.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBuffer:[I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I)[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferWidth:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpBufferHeight:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I)[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    const/high16 v2, 0x90000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const v2, 0x90010

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_0
    return-void
.end method
