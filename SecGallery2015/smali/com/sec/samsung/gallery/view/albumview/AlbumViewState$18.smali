.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoved()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$10600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$10700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCallWindow(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$10800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumIndex:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$10900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const v3, 0x7f0a046b

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # setter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterReorderAlbums()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method
