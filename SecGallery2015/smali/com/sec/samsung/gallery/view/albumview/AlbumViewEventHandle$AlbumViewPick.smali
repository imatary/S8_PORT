.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;
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
    name = "AlbumViewPick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)V

    return-void
.end method


# virtual methods
.method public initializeView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewState:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->COUNT_USE_ACTIONBAR:I

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method public onHoverClick(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PICKER_ITEM_SELECTED"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewState:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "PICKER_ITEM_SELECTED"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
