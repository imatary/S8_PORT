.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterSelectionModeFromPenSelect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6202(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_0
.end method

.method public isCheckAvailable()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$11300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$7000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_0
.end method

.method public onPenSelection(IIZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_3

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)V

    goto :goto_1
.end method

.method public prePenSelectionCheck(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$11000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$11100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshGroupObjects()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v1

    if-nez v1, :cond_3

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$11200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)Z

    move-result v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method
