.class public Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;
.super Lcom/sec/samsung/gallery/drawer/DrawerItem;
.source "DrawerItemDefaultExpansion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawerItemDefExpansion"


# direct methods
.method private constructor <init>(IILcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V

    return-void
.end method

.method private checkRequiredPermissions(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createDefaultExpansionItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setIconId(I)V

    return-object v0
.end method

.method public static createDefaultExpansionItem(ILjava/lang/String;ILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;-><init>(ILjava/lang/String;Lcom/sec/samsung/gallery/core/TabTagType;)V

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setIconId(I)V

    return-object v0
.end method

.method private showChnUsageDialog(Landroid/app/Activity;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion$1;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    aput-object v2, v0, v1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getGalleryID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_USAGE_ALERT_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showPermissionRequestDialog(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;[Ljava/lang/String;)V
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v2, 0x7f0a0441

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 9

    const-string/jumbo v6, "DrawerItemDefExpansion"

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

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v6

    invoke-virtual {v2, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v7, 0x7f0a0441

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-class v6, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-ne v3, v6, :cond_0

    const-string/jumbo v6, "KEY_VIEW_REDRAW"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    const-class v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    :cond_1
    :goto_0
    if-nez v0, :cond_a

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->checkRequiredPermissions(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->showPermissionRequestDialog(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v7, 0x7f0a0440

    if-ne v6, v7, :cond_8

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChnUsageAlertPopup:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "TagBuddyPermissionAlertDialogOff"

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->showChnUsageDialog(Landroid/app/Activity;)V

    goto :goto_0

    :cond_6
    const-class v6, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    if-ne v3, v6, :cond_7

    const-string/jumbo v6, "KEY_VIEW_REDRAW"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    goto :goto_0

    :cond_8
    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v7, 0x7f0a0442

    if-ne v6, v7, :cond_9

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFavoriteInCategory:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    goto/16 :goto_0

    :cond_9
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "mtpDeviceName"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_IS_ENTER_MTP_PHOTO_VIEW"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v6, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    const-class v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v7, 0x7f0a0441

    if-ne v6, v7, :cond_b

    const-string/jumbo v6, "GDVG"

    const-string/jumbo v7, "Events"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "GDVS"

    const-string/jumbo v7, "Events"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v7, 0x7f0a0440

    if-ne v6, v7, :cond_c

    const-string/jumbo v6, "GDVG"

    const-string/jumbo v7, "Categories"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "GDVS"

    const-string/jumbo v7, "Categories"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget v6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->mNameStringId:I

    const v7, 0x7f0a0442

    if-ne v6, v7, :cond_2

    const-string/jumbo v6, "GDVG"

    const-string/jumbo v7, "Favorites"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "GDVS"

    const-string/jumbo v7, "Favorites"

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
