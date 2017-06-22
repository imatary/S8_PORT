.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setStateTOSuperImpose360(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v2, 0x65

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->val$filePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->is360Image(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->val$id:I

    invoke-virtual {v4, v5, v3, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addImageToView(IIIZ)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->setFilePath(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerLayout()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerLayout()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    move-result-object v2

    const v3, 0x10000004

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSelection(I)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->highLightView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    goto :goto_1
.end method
