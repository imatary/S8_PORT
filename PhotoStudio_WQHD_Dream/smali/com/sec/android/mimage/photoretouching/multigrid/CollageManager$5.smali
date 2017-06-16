.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$attachView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->val$attachView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$600(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I

    move-result v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;->val$attachView:Landroid/view/View;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->removeAttachSheet(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$800(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/view/View;)V

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
