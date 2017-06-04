.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(II)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const-string/jumbo v3, "GMSI"

    const-string/jumbo v4, "Long press"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    move v1, v6

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput v5, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6202(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V
    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    move v1, v6

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-ltz p1, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbum(I)V
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)V

    move v1, v6

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCallWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput v5, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V
    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    :cond_6
    new-instance v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v4, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->startPhotosDrag(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    move v1, v6

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput v5, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V
    invoke-static {v2, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V
    invoke-static {v2, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    goto/16 :goto_0
.end method
