.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "PhotoSplitActionBarForMultiPick.java"


# static fields
.field private static final SELECT_MAX_ITEM_LIMIT:I = 0x1f4


# instance fields
.field mCount:I

.field private mIsDoneEnabled:Z

.field private mMenu:Landroid/view/Menu;

.field private mUseWidgetLimit:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mUseWidgetLimit:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mUseWidgetLimit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setSelectAllButtonTTS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mSelectionActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mIsDoneEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->getMaxCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method private isPickSupported(Lcom/sec/android/gallery3d/data/MediaItem;[Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "private_move_do_not_show"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;

    invoke-direct {v2, p0, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v4, 0x7f13003a

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v4, 0x7f12007a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f120078

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "photo-pick"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mUseWidgetLimit:Z

    :cond_2
    if-eqz v3, :cond_0

    const-string/jumbo v4, "mms_rcs"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const v4, 0x7f0a0258

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 13

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "7001"

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "photo-pick"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "pick-from-gallery"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "pick-max-item"

    const/16 v9, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v8, "photo-pick-gifmaker"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "select_num_key"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :cond_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    iget v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mCount:I

    if-le v8, v3, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0253

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v4, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.app.wallpaperchooser"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v9, "private_move_do_not_show"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v8, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->isPickSupported(Lcom/sec/android/gallery3d/data/MediaItem;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    invoke-virtual {v8, v9, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    invoke-virtual {v8, v9, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    invoke-virtual {v8, v9, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "EXIT_SELECTION_MODE"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const v7, 0x7f12007a

    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    const-string/jumbo v3, "pick-min-item"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mUseWidgetLimit:Z

    if-nez v3, :cond_6

    if-lez v2, :cond_2

    if-lt v0, v2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {p1, v7, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    if-lez v2, :cond_5

    if-lt v0, v2, :cond_4

    :cond_0
    :goto_1
    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    :goto_2
    const v3, 0x7f120078

    invoke-static {p1, v3, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    if-gtz v0, :cond_0

    move v4, v5

    goto :goto_1

    :cond_6
    if-lez v2, :cond_9

    if-gt v0, v6, :cond_8

    if-lt v0, v2, :cond_8

    move v3, v4

    :goto_3
    invoke-static {p1, v7, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    if-lez v2, :cond_c

    if-gt v0, v6, :cond_b

    if-lt v0, v2, :cond_b

    :cond_7
    :goto_4
    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3

    :cond_9
    if-gt v0, v6, :cond_a

    if-lez v0, :cond_a

    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v5

    goto :goto_3

    :cond_b
    move v4, v5

    goto :goto_4

    :cond_c
    if-gt v0, v6, :cond_d

    if-gtz v0, :cond_7

    :cond_d
    move v4, v5

    goto :goto_4
.end method

.method public onResume()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setupButtons()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setHomeAsUpIndicator()V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    const v3, 0x7f12007a

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    const v3, 0x7f120078

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onResume()V

    return-void
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateDoneButton(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mIsDoneEnabled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$2;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
