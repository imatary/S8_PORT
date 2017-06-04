.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(II)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "GMSI"

    const-string/jumbo v5, "Long press"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v3, 0x7

    iput v3, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(I)I
    invoke-static {v2, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCallWindow(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(I)I
    invoke-static {v2, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)I

    :cond_4
    new-instance v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v4, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v5, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->startPhotosDrag(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v3, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isSelected(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(I)I
    invoke-static {v3, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v6

    instance-of v3, v6, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    if-nez v3, :cond_7

    instance-of v3, v6, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eqz v3, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(I)I
    invoke-static {v3, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method
