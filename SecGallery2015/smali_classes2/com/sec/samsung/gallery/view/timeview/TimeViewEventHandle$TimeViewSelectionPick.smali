.class Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;
.super Ljava/lang/Object;
.source "TimeViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeViewSelectionPick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)V

    return-void
.end method


# virtual methods
.method public initializeView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method public onItemClick(II)V
    .locals 0

    return-void
.end method
