.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "FavoriteViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # invokes: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->checkMediaAvailability()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;)V

    # setter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$902(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$1100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "GFFI"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$1200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
