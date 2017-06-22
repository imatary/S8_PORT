.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;
.super Landroid/os/Handler;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v12, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->applyPreview(I)[I
    invoke-static {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)[I

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    monitor-enter v13

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    sub-int v0, v12, v0

    add-int/lit8 v10, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    if-ltz v10, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v0

    array-length v0, v0

    if-ge v10, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v0

    aget-object v11, v0, v10

    invoke-virtual {v11, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setData([I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->calculateSeekbarColor([III)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->getTextZoneHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateTextPreview([IIIII)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v2

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v0

    add-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onCacheUpdated(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-ne v12, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v0

    const/16 v2, 0x1001

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->sendSeekbarColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->lastCacheIndex:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v0

    if-eq v12, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->lastCacheIndex:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isApplyAvailable:Z

    const-string v0, "PEDIT_Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end Handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    :try_start_4
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->getTextZoneHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateTextPreview([IIIII)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onCacheUpdated(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    :try_start_5
    const-string v0, "PEDIT_Effects"

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method
