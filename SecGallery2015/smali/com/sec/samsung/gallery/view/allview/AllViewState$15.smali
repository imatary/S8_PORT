.class Lcom/sec/samsung/gallery/view/allview/AllViewState$15;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(II)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "GMSI"

    const-string/jumbo v3, "Long press"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_0

    move v1, v6

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->enterSelectionMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectItem(II)V
    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1900(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    move v1, v6

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectItem(II)V
    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1900(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    :cond_4
    new-instance v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->startPhotosDrag(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    move v1, v6

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectItem(II)V
    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1900(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0
.end method
