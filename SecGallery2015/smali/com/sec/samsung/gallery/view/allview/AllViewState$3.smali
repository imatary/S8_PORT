.class Lcom/sec/samsung/gallery/view/allview/AllViewState$3;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterSelectionModeFromPenSelect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    goto :goto_0
.end method

.method public isCheckAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    goto :goto_0
.end method

.method public onPenSelection(IIZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1700(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1702(Lcom/sec/samsung/gallery/view/allview/AllViewState;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_3

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1900(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public prePenSelectionCheck(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    goto :goto_0
.end method
