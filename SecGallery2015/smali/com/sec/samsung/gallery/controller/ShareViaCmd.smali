.class public Lcom/sec/samsung/gallery/controller/ShareViaCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShareViaCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final ACTION_UNLIMITED_SHARE:Ljava/lang/String; = "com.samsung.android.gallery.action.UNLIMITED_SHARE"

.field private static final EXTRA_CHOOSER_DROPLIST:Ljava/lang/String; = "extra_chooser_droplist"

.field private static final NOT_SUPPORT:I = 0x0

.field private static final SUPPORT:I = 0x1

.field private static final SUPPORT_KNOX_DESKTOP:Z

.field private static final SUPPORT_MULTI_SELECT_SMART_VIEW:Z

.field private static final SUPPORT_ONLY_SCREEN_MIRRORING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ShareViaCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAirButton:Z

.field private mIsSupportChangePlayer:Z

.field private mIsSupportPrint:Z

.field private mIsSupportQuickConnect:Z

.field private mIsSupportScreenMirroring:Z

.field private mIsSupportScreenSharing:Z

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

.field private mSelectedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemPathForSmartView:Lcom/sec/android/gallery3d/data/Path;

.field private mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportMultiSelectionSmartView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->SUPPORT_MULTI_SELECT_SMART_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->SUPPORT_KNOX_DESKTOP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsAirButton:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemPathForSmartView:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method private checkEasyShare(Landroid/content/Intent;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportPrint:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->checkEasySharePrint(Landroid/content/Intent;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportScreenSharing:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->checkEasyShareScreenSharing(Landroid/content/Intent;Lcom/sec/android/gallery3d/app/ActivityState;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportQuickConnect:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "more_actions_quick_connect"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    return-void

    :cond_3
    instance-of v0, p2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportChangePlayer:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "more_actions_change_player"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportScreenMirroring:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "more_actions_screen_mirroring"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private checkEasySharePrint(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setActivePrint(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOXInstallMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "more_actions_print"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "more_actions_print"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "more_actions_print"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private checkEasyShareScreenSharing(Landroid/content/Intent;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 3

    const/4 v2, 0x2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    instance-of v1, p2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportChangePlayer:Z

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v1, "more_actions_screen_sharing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "more_actions_screen_sharing"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemPathForSmartView:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "more_actions_screen_sharing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemPathForSmartView:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/ShareList;->setSharePath(Lcom/sec/android/gallery3d/data/Path;)V

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->SUPPORT_MULTI_SELECT_SMART_VIEW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "more_actions_screen_sharing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private checkNeedPartialLanding()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getAfterNlg()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getAnaphoraForShare()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->makeNlgForCrossShare()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->setAfterNlg(Z)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkSCloudItems()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->existImageNotCached()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a043c

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->existImageNotCached()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a046d

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->isSCloudVideoExist()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "network_warning_share_pref"

    invoke-static {v6, v7, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    new-instance v6, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "network_warning_share_pref"

    invoke-static {v6, v7, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method private exitSelectionMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsAirButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method

.method private filterComponentList(Ljava/util/ArrayList;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getScreenDCStateId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeFailNlgForCrossShare()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseCommonErrorNlgDirectly()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ShareChooserPopUp"

    const-string/jumbo v2, "Support"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CrossShare"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private makeNlgForCrossShare()V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->getScreenDCStateId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->checkContentsType()I

    move-result v0

    invoke-static {v3, v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCShareViaNlgIdMap;->getNlgId(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "Items_count"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v1, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "CrossShare"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private openShareVia()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getSupportPrint()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportPrint:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getSupportScreenMirroring()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportScreenMirroring:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getSupportChangePlayer()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportChangePlayer:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getSupportQuickConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportQuickConnect:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getSupportScreenSharing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsSupportScreenSharing:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->checkNeedPartialLanding()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->checkSCloudItems()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->makeFailNlgForCrossShare()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportSingleSelectionSmartView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getSelectedItemPathForSmartView()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemPathForSmartView:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->exitSelectionMode()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->startUnlimitedShare()V

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CrossShare"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemPathForSmartView:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->starShareViaActivity()V

    goto :goto_2
.end method

.method private starShareViaActivity()V
    .locals 10

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->createIntentForShare(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLinkShareDataSender:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "cloud_info"

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getOnlyLinkShareData()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, v6, v0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->checkEasyShare(Landroid/content/Intent;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->createFilterList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const v9, 0x7f0a03c6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "android.intent.extra.INTENT"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    if-nez v7, :cond_1

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "mTarget is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-direct {p0, v5, v7}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->filterComponentList(Ljava/util/ArrayList;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v8, "extra_chooser_droplist"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getDefaultPackageForShare()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "extra_chooser_bixby_applist"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v8, 0x8080000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->isShareInteractivePanorama()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "GIPS"

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->isShareMotionPanorama()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "MPSR"

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_5
    return-void

    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startUnlimitedShare()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/ShareList;->setShareList(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.gallery.action.UNLIMITED_SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a03c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string/jumbo v1, "ShareViaCmd"

    const-string/jumbo v2, "fail to start share via. context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->makeFailNlgForCrossShare()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mIsAirButton:Z

    array-length v1, v0

    if-le v1, v2, :cond_2

    aget-object v1, v0, v2

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mUri:Landroid/net/Uri;

    :cond_2
    new-instance v1, Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mShareAppUtil:Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->openShareVia()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->exitSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->starShareViaActivity()V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareViaCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    :cond_1
    return-void
.end method
