.class public Lcom/sec/android/gallery3d/util/DualScreenManager;
.super Ljava/lang/Object;
.source "DualScreenManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualScreenManager"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

.field private mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

.field private mDualScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDualScreenFoldingStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mDualScreenStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mFeatureEnabled:Z

.field private mFoldingStatus:I

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mIsFromCamera:Z

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mSettingObsever:Landroid/database/ContentObserver;

.field private mStateManager:Lcom/sec/android/gallery3d/app/StateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenFoldingStatusReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/util/DualScreenManager$1;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mSettingObsever:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from-Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mIsFromCamera:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setExpandable(Z)V

    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setScreenChangeListener(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setShrinkRequestListener(Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandRequestListener()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mIsFromCamera:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/util/DualScreenManager;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/util/DualScreenManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandRequestListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/util/DualScreenManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFoldingStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/util/DualScreenManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFoldingStatus:I

    return p1
.end method

.method private getActionMenuColor()I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x1010361

    aput v3, v1, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private initBroadcastReceiver()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$5;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$6;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$6;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$7;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenFoldingStatusReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method public static sendItemChanged(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    const-string/jumbo v2, "DualScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendItemChanged  path:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setExpandRequestListener()V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$4;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mIsFromCamera:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setExpandable(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setExpandShrinkButton(IIZII)V
    .locals 9

    const-string/jumbo v5, "android.widget.Toolbar"

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/Reflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "setExpandShrinkButton"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "action_bar"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/Toolbar;

    if-eqz v5, :cond_0

    move-object v1, v4

    check-cast v1, Landroid/widget/Toolbar;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setScreenChangeListener(Z)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$2;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;)V

    goto :goto_0
.end method

.method private setShrinkRequestListener(Z)V
    .locals 3

    if-nez p1, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$3;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mIsFromCamera:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setExpandable(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;)V

    goto :goto_1
.end method

.method public static swapIfneeded(Landroid/app/Activity;)V
    .locals 9

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v7, p0

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isLandscape(Landroid/app/Activity;)Z

    move-result v4

    new-instance v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    invoke-interface {v5, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    const-string/jumbo v7, "DualScreenManager"

    const-string/jumbo v8, "swapTopTask : excuted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->swapTopTask()V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v7, :cond_0

    :cond_3
    if-nez v4, :cond_0

    const-string/jumbo v7, "DualScreenManager"

    const-string/jumbo v8, "swapTopTask : excuted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->swapTopTask()V

    goto :goto_0

    :cond_4
    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getCoupledActivity(Landroid/app/Activity;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "DualScreenManager"

    const-string/jumbo v8, "swapTopTask : excuted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->swapTopTask()V

    goto/16 :goto_0
.end method


# virtual methods
.method public activity_Finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public activity_StartView(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 9

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    if-nez v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "dual_view_next_state_name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "DualScreenManager"

    const-string/jumbo v7, "startView :: hasExtra(StateManager.LOCAL_BROADCAST_INTENT_EXTRA_DUAL_VIEW_NEXT_STATE_NAME)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v6, "dual_view_next_state_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "DualScreenManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startView :: classname = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "DualScreenManager"

    const-string/jumbo v7, "startView :: ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "DualScreenManager"

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v6, p2}, Lcom/sec/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public registerBroadcastReceiver()V
    .locals 8

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->initBroadcastReceiver()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "gallery.mainactivity.changestate"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.subactivity.changestate"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.closesub"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.closemain"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.shrink.from.main"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.shrink.from.sub"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.movesub"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.movemain"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.shrink"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.expand"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.update.actionbar"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.launch.otheractivity"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.sub.backpressed"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.subactivity.itemchanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.mainactivity.itemchanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "gallery.settingchanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.samsung.android.dualscreen.action.FOLDING_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenFoldingStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dualscreen_prototype"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mSettingObsever:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "gallery.expand"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "gallery.shrink"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method public setExpandShrinkButton()V
    .locals 9

    const/4 v8, 0x1

    new-instance v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v7, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v7}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getDisplay(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/Display;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "DualScreenManager"

    const-string/jumbo v2, "setExpandShrinkButton() display is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v4, v8, :cond_2

    const/4 v4, 0x3

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->getActionMenuColor()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isExpandable(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFoldingStatus:I

    if-ne v0, v8, :cond_3

    const/4 v5, 0x0

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton(IIZII)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    goto :goto_2
.end method

.method public unregisterBroadcastReceiver(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mFeatureEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishRelated(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->removeActivityMode(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->dualScreenActivityCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setInitialActivityLaunch(Z)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setScreenChangeListener(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setShrinkRequestListener(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mSettingObsever:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mSettingObsever:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mSettingObsever:Landroid/database/ContentObserver;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenFoldingStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/DualScreenManager;->mDualScreenActivity:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    goto :goto_0
.end method
