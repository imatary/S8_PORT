.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUIOnBackPress(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
