.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationItemClick(I)Z
    .locals 14

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    const/4 v10, 0x2

    new-array v4, v10, [J

    const/4 v10, 0x2

    new-array v0, v10, [D

    if-nez v8, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGooglePlayServicesAvailable:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const-string/jumbo v10, "TimeViewState"

    const-string/jumbo v11, "onLocationItemClick: GuestMode or Knox or google play service is not available"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    instance-of v10, v10, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;

    invoke-virtual {v10, p1}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getSmallItemList(I)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/SmallItem;

    if-eqz v5, :cond_3

    if-nez v7, :cond_4

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/SmallItem;->getDateInMs()J

    move-result-wide v12

    aput-wide v12, v4, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/SmallItem;->getDateInMs()J

    move-result-wide v12

    aput-wide v12, v4, v10

    const-string/jumbo v10, "TimeViewState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onLocationItemClick : Current cluster\'s items - startTime ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-wide v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "], endTime ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;

    invoke-virtual {v10, p1}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getAddrValues(I)[[D

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_6

    array-length v10, v1

    if-lez v10, :cond_6

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v1, v11

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    aput-wide v12, v0, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget-object v11, v1, v11

    const/4 v12, 0x1

    aget-wide v12, v11, v12

    aput-wide v12, v0, v10

    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "KEY_MEDIA_SET_PATH"

    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "KEY_MEDIA_ITEM_PATH"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "KEY_MEDIA_ITEM_LOCATION"

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v10, "KEY_MEDIA_ITEM_BWN_DATE"

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v11, "KEY_IS_FAKE_LOADING"

    sget-boolean v10, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    if-nez v10, :cond_7

    sget-boolean v10, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    if-eqz v10, :cond_e

    :cond_7
    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->hideTabNow()V

    :cond_8
    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-virtual {v10, v11, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_4
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    const-string/jumbo v11, "MPVW"

    const-string/jumbo v12, "From Timeview"

    invoke-static {v10, v11, v12}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_c

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_b

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v12

    aput-wide v12, v4, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v12

    aput-wide v12, v4, v11

    const-string/jumbo v10, "TimeViewState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onLocationItemClick : Current cluster\'s items - count ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "], startTime ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-wide v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "], endTime ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getAddrValues()[[D

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_f
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-virtual {v10, v11, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_4
.end method
