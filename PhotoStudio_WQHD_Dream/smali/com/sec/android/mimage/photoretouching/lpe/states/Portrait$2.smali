.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->exitPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v1, 0x2000

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070187

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void
.end method
