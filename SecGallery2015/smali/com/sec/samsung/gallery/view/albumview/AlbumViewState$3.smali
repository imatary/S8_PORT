.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mFirstMediaCheck:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "STAC"

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->checkMediaAvailability()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {v1, v2, v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$1;)V

    # setter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3302(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelectionBufferVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {v1, v2, v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$1;)V

    # setter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3502(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->postUpdateCountOnActionBar()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto :goto_0
.end method
