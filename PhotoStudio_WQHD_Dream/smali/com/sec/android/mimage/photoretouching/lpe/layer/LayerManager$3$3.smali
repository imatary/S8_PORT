.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;
.super Ljava/lang/Thread;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->onDecodeFinished(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onEffectThumbUpdated()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openEffects()V

    :cond_1
    return-void
.end method
