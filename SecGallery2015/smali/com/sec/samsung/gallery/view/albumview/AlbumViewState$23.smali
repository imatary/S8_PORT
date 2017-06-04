.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;
.super Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isNotEmpty(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 10

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_LOCATION:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v6, v7, :cond_1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->isNotEmpty(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v6

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v6

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method protected onMediaNotEmpty()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_LOCATION:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method
