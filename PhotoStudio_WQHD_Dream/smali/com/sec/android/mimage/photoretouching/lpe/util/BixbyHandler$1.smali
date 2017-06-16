.class Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;
.super Ljava/lang/Object;
.source "BixbyHandler.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string v0, "PhotoEditor"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLandingState(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenStatesRequested landingState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isToastShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->showToast(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->executorHandle(Lcom/samsung/android/sdk/bixby/data/State;)V
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method
