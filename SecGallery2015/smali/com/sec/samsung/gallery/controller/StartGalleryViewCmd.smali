.class public Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final ACTION_START_SLINK_PLAYBACK:Ljava/lang/String;

.field private static final ACTION_VIEW_MEMO:Ljava/lang/String;

.field private static final FEATURE_USE_TAB_UI:Z

.field private static final TAG:Ljava/lang/String; = "StartGalleryViewCmd"

.field private static mBundle:Landroid/os/Bundle;


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.intent.action.VIEW_GALLERY_TO_MEMO"

    :goto_0
    sput-object v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->ACTION_VIEW_MEMO:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "com.samsung.intent.action.START_SLINK_PLAYBACK"

    :goto_1
    sput-object v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->ACTION_START_SLINK_PLAYBACK:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.VIEW_GALLERY_TO_MEMO"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android.intent.action.START_SLINK_PLAYBACK"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDefaultMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->getMediaItemCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->showDeleteShortCutDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->deleteShortCut()V

    return-void
.end method

.method private checkFileExisted(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkFileIdAvailability(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteShortCut()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "duplicate"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getCoverItemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLatestActivityState(Landroid/content/Context;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDefaultAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    const/4 v7, 0x0

    sput-object v7, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    move-object v7, p0

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v5

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_4

    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    sget-boolean v7, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    if-eq v5, v7, :cond_1

    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_1
    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_4
    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_5

    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryViewDefault:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDefaultAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_DEVICE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v4, v7, :cond_6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_8

    :cond_6
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDefaultAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_7

    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    :cond_7
    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    goto :goto_1

    :cond_8
    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_b

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v7, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    if-nez v7, :cond_9

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExistLocalContents(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    const-class v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    goto :goto_1

    :cond_a
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_1

    :cond_b
    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_e

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    if-nez v7, :cond_c

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExistLocalContents(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    const-class v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    goto :goto_1

    :cond_d
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto/16 :goto_1

    :cond_e
    sget-boolean v7, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    if-nez v7, :cond_10

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_10

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFavoriteInCategory:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExistLocalContents(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-class v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    goto/16 :goto_1

    :cond_f
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto/16 :goto_1

    :cond_10
    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v4, v7, :cond_11

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_12

    :cond_11
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    goto/16 :goto_1

    :cond_12
    sget-boolean v7, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z

    if-nez v7, :cond_14

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryViewDefault:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_13

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v7

    if-nez v7, :cond_13

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v4, v7, :cond_13

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v7, :cond_14

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "/local/categoryalbumset"

    const-string/jumbo v7, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "KEY_MEDIA_SET_POSITION"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sput-object v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    const-class v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto/16 :goto_1
.end method

.method private getMediaItemCount(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0
.end method

.method private processIntent()V
    .locals 51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v35

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedFirstUpOfDetailView:Z

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    const/16 v28, 0x0

    if-eqz v35, :cond_0

    const-string/jumbo v4, "burstshot"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    :cond_0
    if-eqz v28, :cond_2

    const-string/jumbo v4, "from-Camera"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/local/all/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->getCoverItemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->getResIdFromFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_3
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_MEDIA_ITEM_PATH"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_MEDIA_SET_POSITION"

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "KEY_ITEM_POSITION"

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "android.intent.action.PICK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "com.android.gallery.action.ALBUM_PICK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "com.android.gallery.action.ITEM_PICK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_5
    if-eqz v31, :cond_8

    if-eqz v35, :cond_6

    const-string/jumbo v4, "from-photowall"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    if-eqz v35, :cond_b

    const-string/jumbo v4, "multi-pick"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_7
    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :cond_8
    :goto_1
    const-string/jumbo v4, "com.android.gallery.action.ITEM_PICK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.PICK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "view_item"

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    if-eqz v35, :cond_a

    const-string/jumbo v4, "from-ThemeStore"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromThemeStore(Z)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startPickMode()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "com.android.gallery.action.ALBUM_PICK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    goto :goto_1

    :cond_c
    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    goto :goto_1

    :cond_d
    sget-object v4, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v31, :cond_e

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startPickMode()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "android.intent.action.PERSON_PICK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "person-pick"

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v31, :cond_10

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startPickMode()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v4, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "com.android.camera.action.REVIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->ACTION_VIEW_MEMO:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static/range {v40 .. v40}, Lcom/sec/android/gallery3d/sconnect/SConnectUtil;->isSConnectIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->ACTION_START_SLINK_PLAYBACK:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isSLinkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_12
    if-eqz v35, :cond_22

    const-string/jumbo v4, "from-SmartPage"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_13
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFestival:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "festivalMemoryWidget"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    const-string/jumbo v4, "startDate"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v4, "endDate"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setFestivalData(ZJJ)V

    const/4 v5, 0x1

    move-object/from16 v4, v23

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setImplFestivalData(ZJJ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_14
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoMakeNewEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "from-highlight-notification"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startEventViewMode()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v4, "EXTRA_START_CAMERA_ALBUM"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string/jumbo v4, "from-sdcard"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startCameraAlbum(Z)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v4, "from_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    if-eqz v37, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromShortCut(Z)V

    :cond_17
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "start-story-view"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewMode()V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v4, "start-story-detail-view"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    if-eqz v45, :cond_1c

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0a007f

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v4, "refresh_notification"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->refreshNotification()V

    :cond_1a
    const-string/jumbo v4, "story_id"

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v4, "media-set-position"

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v4, "member_joined"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_1b

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->checkFileExisted(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0a0432

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v4, "story_detail_alone"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string/jumbo v4, "from_reminder"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const/4 v13, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewMode(IIZZZ)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v4, "event-view-share-notification"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    const-string/jumbo v4, "event-view-accept-event"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    const-string/jumbo v4, "event-view-share-groupid"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v4, "event-view-share-eventname"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v4, "event-view-empty-channel-id"

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "max_channel_number"

    const/16 v10, 0xc8

    invoke-static {v4, v5, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v47

    if-eqz v41, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v4

    move/from16 v0, v47

    if-lt v4, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewModeMaxGroup()V

    :goto_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1d
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "StartGalleryViewCmd"

    const-string/jumbo v5, "Accept > in upsm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0018

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewMode()V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    if-eqz v48, :cond_1f

    new-instance v34, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct/range {v34 .. v34}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v34

    move/from16 v1, v17

    move-object/from16 v2, v38

    move-object/from16 v3, v33

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startSharingEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewMode(IIZZZ)V

    goto :goto_2

    :cond_20
    const-string/jumbo v4, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v44

    if-eqz v44, :cond_22

    const-string/jumbo v4, "refresh_notification"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->refreshNotification()V

    :cond_21
    const-string/jumbo v4, "media-set-position"

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->checkFileExisted(I)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0a0432

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :cond_22
    invoke-static/range {v40 .. v40}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->setPendedPlayer(Landroid/content/Intent;)V

    const-string/jumbo v4, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDefaultMode()V

    goto/16 :goto_0

    :cond_23
    if-eqz v35, :cond_24

    const-string/jumbo v4, "refresh_notification"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->refreshNotification()V

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startImageViewMode()V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v4, "com.android.gallery.action.SEARCH_VIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v50

    if-eqz v50, :cond_1

    invoke-virtual/range {v50 .. v50}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startImageViewMode()V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v4, "com.android.gallery.action.SHORTCUT_VIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startShortCutAlbum()V

    goto/16 :goto_0

    :cond_27
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v4, "com.android.gallery.action.ALBUM_VIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startAlbumView()V

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v4, "dummyaction.MTP_CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startMtpMode()V

    goto/16 :goto_0

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDefaultMode()V

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v4, "com.samsung.android.gallery.action.VIEW_RECYCLEBIN_SCLOUD"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startRecycleBinViewMode()V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v4, "com.samsung.android.gallery.action.VIEW_CLOUD_VIEW"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startCloudViewMode()V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v4, "receive-story-from-notification"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startNotificationViewMode()V

    if-eqz v35, :cond_1

    const-string/jumbo v4, "refresh_notification"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->refreshNotification()V

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v4, "key-from-dc-search"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startSearchViewMode()V

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v4, "com.samsung.android.gallery.action.VIEW_BIXBY"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string/jumbo v4, "DC_LAUNCH_VIEW"

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    const/4 v4, -0x1

    move/from16 v0, v32

    if-eq v0, v4, :cond_1

    const-string/jumbo v4, "DC_LAUNCH_STATE_ID"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDeviceCogMode(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDefaultMode()V

    goto/16 :goto_0
.end method

.method private setDualScreen()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setActivityLMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.shrink"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setActivityLMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    goto :goto_0
.end method

.method private showDeleteShortCutDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00ff

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00fe

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00e0

    new-instance v3, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$17;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$17;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAlbumView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startCameraAlbum(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$12;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$12;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startChannelViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$10;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startChannelViewMode(IIZZZ)V
    .locals 9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "KEY_IS_ENTER_CHANNEL_PHOTO_VIEW"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p5

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;Landroid/os/Bundle;IIZZZ)V

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startChannelViewModeMaxGroup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startCloudViewMode()V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->setDualScreen()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/gallery3d/data/UnionSource;->SCLOUD_VIEW_BUCKET_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_SET_POSITION"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_ENTER_SCLOUD_PHOTO_VIEW"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DC_LAUNCH_STATE_ID"

    const-string/jumbo v3, "CloudView"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForLaunch()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    :cond_1
    return-void
.end method

.method private startDefaultMode()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->setDualScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDeviceCogMode(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->setDualScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startEventViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$11;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startImageViewMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v1, "show_like_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "show_comment_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedFirstUpOfDetailView:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "from-Camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "ATCH"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startMtpMode()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->setDualScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNotificationViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startPickMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$5;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startRecycleBinViewMode()V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->setDualScreen()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/gallery3d/data/UnionSource;->RECYCLE_BIN_BUCKET_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_SET_POSITION"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_ENTER_RECYCLEBIN_PHOTO_VIEW"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DC_LAUNCH_STATE_ID"

    const-string/jumbo v3, "RecycleBin"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object v0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForLaunch()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    :cond_1
    return-void
.end method

.method private startSearchViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$16;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startShortCutAlbum()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;-><init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->processIntent()V

    return-void
.end method
