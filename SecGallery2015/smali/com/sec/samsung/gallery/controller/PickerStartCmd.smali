.class public Lcom/sec/samsung/gallery/controller/PickerStartCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PickerStartCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_CONTACT_CALLER_ID:Ljava/lang/String; = "caller_id_pick"

.field private static final KEY_ONLY_3GP:Ljava/lang/String; = "only3gp"

.field private static final KEY_ONLY_JPG:Ljava/lang/String; = "onlyJpg"

.field private static final KEY_ONLY_MAGIC:Ljava/lang/String; = "onlyMagic"

.field private static final KEY_SENDER_VIDEOCALL:Ljava/lang/String; = "senderIsVideoCall"

.field private static final TAG:Ljava/lang/String; = "PickerStartCmd"


# instance fields
.field private contentType:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private checkLastTabTagType()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType(Z)Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    :cond_1
    return-void
.end method

.method private getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "PickerStartCmd"

    const-string/jumbo v4, "Failed to get intent content type! because uri = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "*/*"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PickerStartCmd"

    const-string/jumbo v4, "Failed to get intent content type!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v1, "*/*"

    goto :goto_0
.end method

.method private getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "*/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE_AND_VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0
.end method

.method private getFilterTypeToString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->contentType:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "image"

    goto :goto_0
.end method

.method private getFilteredSetPath(Landroid/content/Intent;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p4, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFilteredSetPathTypeBit(Landroid/content/Intent;ZLandroid/content/Context;)I

    move-result v3

    if-eqz p5, :cond_0

    invoke-static {p5, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getSingleAlbumSetPath(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/sec/android/gallery3d/app/FilterUtils;->toFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v4

    invoke-static {v0, v4, p3}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method private setDCNestingCallerAppName(Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "bixby_caller"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCNestingCallerAppName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromInsideGallery(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-string/jumbo v2, "Gallery"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCNestingCallerAppName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    return-void
.end method

.method private startAblumPickMode(Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_PICK_MEDIA_TYPE"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->getFilterTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "album-pick"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string/jumbo v1, "only-album-pick"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startPickMode(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_PICK_MEDIA_TYPE"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->getFilterTypeToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v6, "dc_pick_from_gallery_time"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDefaultAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_2

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v6, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    if-eqz v3, :cond_1

    const-string/jumbo v6, "dc_pick_from_gallery_album"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v6, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_4

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v6, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v6, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private startSingleAlbumPickMode(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_MEDIA_SET_POSITION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startSyncContact(Landroid/app/Activity;)V
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SYNC_CONTACTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->START_SYNC:Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 21

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    aget-object v3, v16, v2

    check-cast v3, Landroid/content/Intent;

    const-string/jumbo v2, "album-pick"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.gallery.action.ALBUM_PICK"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_0
    const/4 v9, 0x1

    :goto_0
    const-string/jumbo v2, "onlyMagic"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v2, "android.intent.action.PERSON_PICK"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v2, "senderIsVideoCall"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    const-string/jumbo v2, "single-album"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v18, :cond_1

    const-string/jumbo v2, "onlyJpg"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string/jumbo v2, "only3gp"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v14, :cond_b

    const-string/jumbo v5, "image/jpeg"

    :cond_1
    :goto_1
    const-string/jumbo v2, "image/png"

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string/jumbo v5, "image/png"

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->contentType:Ljava/lang/String;

    if-eqz v10, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->contentType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v20, "#"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v20, 0x830

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->contentType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->setMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    const-string/jumbo v2, "caller_id_pick"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v2, v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v7

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->setDCNestingCallerAppName(Landroid/content/Intent;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->checkLastTabTagType()V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->getFilteredSetPath(Landroid/content/Intent;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v2

    invoke-static {v2, v12}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    move-object/from16 v12, v19

    :cond_6
    const/4 v8, 0x0

    if-eqz v6, :cond_c

    const/16 v8, 0x4000

    :cond_7
    :goto_2
    const/16 v2, 0x4000

    if-eq v8, v2, :cond_8

    const v2, 0x8000

    if-eq v8, v2, :cond_8

    const/high16 v2, 0x10000

    if-ne v8, v2, :cond_9

    :cond_8
    invoke-static {v12, v8}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    :cond_9
    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->startSingleAlbumPickMode(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v13, :cond_1

    const-string/jumbo v5, "video/3gp"

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v20, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_7

    const-string/jumbo v2, "include-recommend"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/high16 v8, 0x10000

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->startSyncContact(Landroid/app/Activity;)V

    goto :goto_2

    :cond_d
    const v8, 0x8000

    goto :goto_4

    :cond_e
    if-nez v9, :cond_f

    if-nez v11, :cond_f

    if-nez v10, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->startAblumPickMode(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/PickerStartCmd;->startPickMode(Ljava/lang/String;)V

    goto :goto_3
.end method
