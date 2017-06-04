.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForMessageView.java"


# static fields
.field private static final FeatureLowStorageMode:Z

.field private static final TAG:Ljava/lang/String; = "DetailActionBarForMsg"


# instance fields
.field private final mHander:Landroid/os/Handler;

.field private mIsUpAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mIsUpAvailable:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mHander:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mMainActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mIsUpAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->startActionMMSSave(Landroid/view/MenuItem;)V

    return-void
.end method

.method private startActionMMSSave(Landroid/view/MenuItem;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_MMS_SAVE"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mHander:Landroid/os/Handler;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateMenuOperations(Landroid/view/Menu;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "NotSupportSaveMenu"

    invoke-virtual {v0, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide v8, -0x8000000001L

    and-long/2addr v6, v8

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v8, -0x21

    and-long/2addr v6, v8

    :cond_3
    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->setSetAsMenuVisibility(Landroid/view/Menu;)V

    const v5, 0x7f1202b8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "DetailActionBarForMsg"

    const-string/jumbo v8, "updateMenuOperations : saveItem visible set true"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f1200b5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f0a0386

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableFreeMessage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFromVerizonMessage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f1202ac

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f1202ab

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v1, :cond_6

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    if-eqz v4, :cond_0

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isSendedMessage()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isDownloaded()Z

    move-result v5

    if-nez v5, :cond_9

    const v5, 0x7f0a0131

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_9
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 12

    const v11, 0x7f0a0386

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mMenu:Landroid/view/Menu;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v6, 0x7f13001d

    invoke-virtual {v2, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-boolean v6, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->FeatureLowStorageMode:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v9, "is_low_storage"

    invoke-static {v6, v9, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    move v1, v8

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->createAndSetVisibilityOfSetAsMenu(Landroid/view/Menu;Z)V

    const v6, 0x7f1202b8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCacheActionViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCacheActionViews:Landroid/util/SparseArray;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040052

    const/4 v6, 0x0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCacheActionViews:Landroid/util/SparseArray;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v6, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f1200b5

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a041c

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;

    invoke-direct {v7, p0, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;Landroid/view/MenuItem;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_3
    move v1, v7

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isSendedMessage()Z

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x7f0a0131

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->startActionSetAs()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->startActionSetAsContact()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1202ab
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->updateMenuOperations(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onResume()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mIsUpAvailable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->setDisplayOptions(ZZ)V

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    const v0, 0x7f1202b8

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->addDefaultShowAsActionId(I)V

    return-void
.end method
