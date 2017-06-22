.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isModifyPopupShown:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$200(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUIOnBackPress(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
