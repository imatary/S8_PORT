.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onDragTouch(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$item:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->val$item:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$2500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->val$item:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->swap(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->deInitDrag()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$2400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1600(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertSwapGsimLog()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->val$item:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->requestRender()V

    return-void
.end method
