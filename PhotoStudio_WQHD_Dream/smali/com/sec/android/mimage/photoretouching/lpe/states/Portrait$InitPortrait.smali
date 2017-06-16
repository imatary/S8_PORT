.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;
.super Landroid/os/AsyncTask;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitPortrait"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x2000

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initBeautyEngine(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->exitPortrait()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initPortraitEngine(ZLcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initCircles(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1502(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[I)[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferWidth:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferHeight:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[I)[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->freeResources()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->applyFirstEffect()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    goto/16 :goto_0
.end method
