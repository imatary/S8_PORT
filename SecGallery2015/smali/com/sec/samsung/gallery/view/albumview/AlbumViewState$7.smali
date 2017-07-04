.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(II)Z
    .locals 8

    const/4 v7, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6300()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    const-string/jumbo v5, "GMSI"

    const-string/jumbo v6, "Long press"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6502(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCallWindow(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v3, :cond_3

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f0a046b

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1207"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x5

    iput v5, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7202(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput v7, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCallWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput v7, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1, v2, v4, v5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->startAlbumDrag(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput v7, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    goto :goto_2
.end method
