.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateVisibility(Landroid/view/View;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$r:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8

    const/high16 v7, 0x80000

    const/16 v5, 0x2000

    const/16 v4, 0x800

    const/4 v6, 0x0

    const v3, 0x3f7ae148    # 0.98f

    const-string v1, "PEDIT_StateManager"

    const-string v2, " onAnimationEnd view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isApplyDummy:Z

    if-eqz v1, :cond_0

    sput-boolean v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isApplyDummy:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeHackFrame()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->setBackgroundColor(FFFF)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "PEDIT_StateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd: view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$r:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsUIReady:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$view:Landroid/view/View;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsAnimating:Z
    invoke-static {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Z)Z

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    const/high16 v2, 0x90000

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    const/high16 v2, 0x90000

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    const/16 v2, 0x2001

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "PEDIT_StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart: view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->resetmIsAnimating()V

    return-void
.end method
