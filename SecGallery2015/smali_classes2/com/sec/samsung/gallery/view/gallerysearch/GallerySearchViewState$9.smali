.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(II)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setImeVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v3, 0x7

    iput v3, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->enterSelectionMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V
    invoke-static {v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V

    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v3, 0x7

    iput v3, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V
    invoke-static {v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V
    invoke-static {v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$10800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GallerySearchViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method
