.class public Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;
.super Lcom/sec/samsung/gallery/drawer/DrawerItem;
.source "DrawerItemDefault.java"


# static fields
.field private static final KEY_ONLY_3GP:Ljava/lang/String; = "only3gp"

.field private static final KEY_ONLY_JPG:Ljava/lang/String; = "onlyJpg"

.field private static final KEY_SENDER_VIDEOCALL:Ljava/lang/String; = "senderIsVideoCall"

.field private static final TAG:Ljava/lang/String; = "DrawerItemDefault"


# direct methods
.method private constructor <init>(IILcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    return-void
.end method

.method public static createDefaultItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setIconId(I)V

    return-object v0
.end method

.method private getFilteredSetPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    if-eqz p5, :cond_2

    const/4 v4, 0x5

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p4, :cond_7

    invoke-static {p3}, Lcom/sec/android/gallery3d/app/FilterUtils;->toFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v7

    invoke-static {v0, v7, p4}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v4

    const-string/jumbo v7, "android.intent.action.GET_CONTENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "android.intent.action.PICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    const/4 v7, 0x1

    if-ne v4, v7, :cond_6

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    const/16 v4, 0xf

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const/16 v4, 0xd

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_0

    const/16 v4, 0xe

    goto :goto_0

    :cond_6
    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_7
    move-object v3, v0

    goto :goto_1
.end method

.method private getNewPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "senderIsVideoCall"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v0, "caller_id_pick"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v4, 0x0

    if-eqz v8, :cond_0

    const-string/jumbo v0, "onlyJpg"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v0, "only3gp"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v7, :cond_1

    const-string/jumbo v4, "image/jpeg"

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->mContentType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->mContentType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->setMediaFilterType(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->getFilteredSetPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v6, :cond_0

    const-string/jumbo v4, "video/3gp"

    goto :goto_0
.end method

.method private startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZZ)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->getNewPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v5

    invoke-static {v5, v3}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v3, v4

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "KEY_PICK_MEDIA_TYPE"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->getFilterTypeToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const-string/jumbo v5, "KEY_SET_NO_ITEM_ACTION_BAR"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    if-nez p2, :cond_2

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    const-class v6, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    const-class v6, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v6, "DrawerItemDefault"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Local Selected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    const/4 v1, 0x0

    instance-of v6, v5, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v1, 0x1

    const-string/jumbo v6, "KEY_SET_NO_ITEM_ACTION_BAR"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->mNameStringId:I

    sparse-switch v6, :sswitch_data_0

    const-string/jumbo v6, "KEY_VIEW_REDRAW"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v4

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->mNameStringId:I

    const v7, 0x7f0a0443

    if-ne v6, v7, :cond_6

    const-string/jumbo v6, "GDVG"

    const-string/jumbo v7, "Time"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "GDVS"

    const-string/jumbo v7, "Time"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    sget-object v6, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v6

    invoke-virtual {v3, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    if-eqz p3, :cond_3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZZ)V

    goto :goto_1

    :cond_3
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    goto :goto_0

    :sswitch_1
    const-class v6, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v4, v6, :cond_4

    const-string/jumbo v6, "KEY_VIEW_REDRAW"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    sget-object v6, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v6

    invoke-virtual {v3, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    if-eqz p3, :cond_5

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZZ)V

    goto :goto_1

    :cond_5
    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "GDVG"

    const-string/jumbo v7, "Album"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "GDVS"

    const-string/jumbo v7, "Album"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0a043f -> :sswitch_1
        0x7f0a0443 -> :sswitch_0
    .end sparse-switch
.end method
