.class public Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "NoItemActionBarForNormal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoItemActionBarNormal"


# instance fields
.field private mIsNoMediaItem:Z

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setActionbar()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setActionbar()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private getCurrentViewState()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousViewState()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private isConnectedDevice()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactPick()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "caller_id_pick"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isPersonPick()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isSettingMenuEnableForVZWCheck()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsVZW:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActionbar()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mUseSpinnerLayout:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setCameraButtonVisibility(Landroid/view/Menu;)V
    .locals 3

    const v2, 0x7f12007c

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isContactPick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isPersonPick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isPick()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    return-void
.end method

.method private setTextOnlyButton(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f120286

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setTextOnlyButton(Landroid/view/MenuItem;)V

    return-void
.end method

.method private startAllView()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "is_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public isPick()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-ne v1, v2, :cond_1

    const v1, 0x7f13002c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setTextOnlyButton(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-ne v1, v2, :cond_2

    const v1, 0x7f13004a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setTextOnlyButton(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f13002b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setTextOnlyButton(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v5, "1003"

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "SEVI"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "GEMC"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_EVENT_ALBUM:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "1002"

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "START_CAMERA"

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v6, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->startAllView()V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "1016"

    invoke-static {v3, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v8, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "isMultiWindow"

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "1016"

    invoke-static {v3, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v8, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "isMultiWindow"

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "event_view_setting"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v5, "1019"

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->goToHelpGallery(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_DEVICE_VIEW:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/VZCloudUtils;->launchVZCloud(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "NoItemActionBarNormal"

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isContainsHiddenItems(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0448

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-string/jumbo v6, "show-hidden-album"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v5, "1017"

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_CONTACT_US:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_FILTER_BY:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f12007c -> :sswitch_2
        0x7f12027b -> :sswitch_4
        0x7f12027c -> :sswitch_b
        0x7f120286 -> :sswitch_7
        0x7f12028a -> :sswitch_9
        0x7f12028b -> :sswitch_0
        0x7f12028c -> :sswitch_8
        0x7f12028d -> :sswitch_6
        0x7f12028f -> :sswitch_a
        0x7f12029a -> :sswitch_1
        0x7f12029b -> :sswitch_c
        0x7f12029c -> :sswitch_5
        0x7f1202c0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    const v9, 0x7f12028b

    const v8, 0x7f12028d

    const v7, 0x7f12027b

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "NoItemActionBarNormal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareOptionsMenu : previousViewState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-ne v1, v2, :cond_1

    const v2, 0x7f1202d1

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isPick()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setCameraButtonVisibility(Landroid/view/Menu;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEmergencyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableHelpMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f02024f

    invoke-static {p1, v9, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    const v2, 0x7f12007c

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f120288

    invoke-static {p1, v2, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSearchView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {p1, v9, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mIsNoMediaItem:Z

    if-eqz v2, :cond_5

    const v2, 0x7f12029a

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_5
    const v2, 0x7f12027a

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120289

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const-class v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eq v1, v2, :cond_6

    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eq v1, v2, :cond_6

    const-class v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v1, v2, :cond_16

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForSettings(Landroid/view/Menu;)V

    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isConnectedDevice()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f1202c0

    invoke-static {p1, v2, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_8
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableVzCloudMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isPick()Z

    move-result v2

    if-nez v2, :cond_a

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eq v1, v2, :cond_9

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eq v1, v2, :cond_9

    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v1, v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/utils/VZCloudUtils;->prepareOptionsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f120289

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v9, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120290

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_b
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->getCurrentViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eq v1, v2, :cond_c

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eq v1, v2, :cond_c

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eq v0, v2, :cond_c

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-ne v0, v2, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isSettingMenuEnableForVZWCheck()Z

    move-result v2

    invoke-static {p1, v7, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f12029c

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_d
    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v2, :cond_e

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForSettings(Landroid/view/Menu;)V

    :cond_e
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v1, v2, :cond_f

    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eq v0, v2, :cond_f

    const v2, 0x7f12028f

    invoke-static {p1, v2, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_f
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateContactUsMenu(Landroid/view/Menu;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->getNearbyMenuStatus()Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x7f12028c

    invoke-static {p1, v2, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_10
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilterByMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v2, :cond_11

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkSharedAlbumExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f12029b

    invoke-static {p1, v2, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_11
    :goto_5
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_12
    const v2, 0x7f120286

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_1

    :cond_13
    const v2, 0x7f120288

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_2

    :cond_14
    const v2, 0x7f120288

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_2

    :cond_15
    invoke-static {p1, v9, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_3

    :cond_16
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_7

    const v2, 0x7f12029a

    invoke-static {p1, v2, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_4

    :cond_17
    const v2, 0x7f12029b

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_5
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    const v0, 0x7f12007c

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->addDefaultShowAsActionId(I)V

    return-void
.end method

.method public setNoMediaItemStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mIsNoMediaItem:Z

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f12003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string/jumbo v1, "NoItemActionBarNormal"

    const-string/jumbo v2, "cannot set title because textview resource is not be"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTopSetPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->mTopSetPath:Ljava/lang/String;

    return-void
.end method
