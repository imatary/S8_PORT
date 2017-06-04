.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(II)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const-string/jumbo v3, "GMSI"

    const-string/jumbo v4, "Long press"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput v5, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->enterSelectionMode()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAlbum(I)V
    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput v5, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAlbum(I)V
    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->startAlbumDrag(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput v5, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAlbum(I)V
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method
