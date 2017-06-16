.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutorAfterReady(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->val$mode:I

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1402(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->val$mode:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onClick(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openEffectAfterReady()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method
