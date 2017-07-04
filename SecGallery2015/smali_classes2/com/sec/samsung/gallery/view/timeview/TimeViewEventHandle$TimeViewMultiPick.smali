.class Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;
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
    name = "TimeViewMultiPick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)V

    return-void
.end method


# virtual methods
.method public initializeView()V
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getShrinkOption()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    new-instance v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method public onItemClick(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
