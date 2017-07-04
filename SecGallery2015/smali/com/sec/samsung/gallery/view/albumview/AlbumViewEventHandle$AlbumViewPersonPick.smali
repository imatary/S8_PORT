.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;
.super Ljava/lang/Object;
.source "AlbumViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumViewPersonPick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)V

    return-void
.end method


# virtual methods
.method public initializeView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method public onHoverClick(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    return-void
.end method

.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    return-void
.end method
