.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field final synthetic val$subAttach:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->val$subAttach:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->val$subAttach:Landroid/view/View;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeAttachSheet(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeStateAfterClosingTabsWithAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
