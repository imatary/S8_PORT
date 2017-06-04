.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragDrop(I)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.sidesync.gallery.fileUri"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "fileUri"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    goto :goto_0
.end method
