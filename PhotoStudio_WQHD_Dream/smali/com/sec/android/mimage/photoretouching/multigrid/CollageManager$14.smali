.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initUI()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->cancelDrag()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1700(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1800(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getCustomMax()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setMargin(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1600(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBorderGsimLog(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    :cond_1
    return-void
.end method

.method public onSmoothProgressChange(F)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    return-void
.end method
