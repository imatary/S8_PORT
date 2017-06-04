.class public Lcom/sec/android/gallery3d/app/GalleryCoverMode;
.super Ljava/lang/Object;
.source "GalleryCoverMode.java"


# static fields
.field private static final ACTION_START_COVER_GALLERY:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

.field private static final ACTION_STOP_COVER_GALLERY:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

.field public static final COVER_CAMERA_BUCKET_ID:I

.field private static final COVER_SCREEN_OFF_TIMEOUT:J = 0x1770L

.field public static final SDCARD_COVER_CAMERA_BUCKET_ID:I

.field private static final TAG:Ljava/lang/String; = "GalleryCoverMode"


# instance fields
.field private mCloseBtnView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCover:Lcom/samsung/android/sdk/cover/Scover;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private final mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private final mCoverStateListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishByBtn:Z

.field private mIsStarted:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mMainLayout:Landroid/view/ViewGroup;

.field private mSettingTimeOut:J

.field private final mWindowManager:Lcom/sec/samsung/gallery/lib/libinterface/WindowManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_BUCKET_ID:I

    sput v0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->COVER_CAMERA_BUCKET_ID:I

    sget v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    sput v0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mSettingTimeOut:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCover:Lcom/samsung/android/sdk/cover/Scover;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverStateListenerList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;-><init>(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1200d5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mMainLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/WindowManagerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/WindowManagerFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/WindowManagerInterface;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mWindowManager:Lcom/sec/samsung/gallery/lib/libinterface/WindowManagerInterface;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setCoverMode()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/app/GalleryCoverMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mFinishByBtn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/GalleryCoverMode;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->requestSystemKeyEvent(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->getSettingTimeOut()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/GalleryCoverMode;JZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setScreenOffTime(JZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->showCoverCloseBtn()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setLayoutParams()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverStateListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private finishedByBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mFinishByBtn:Z

    return v0
.end method

.method private getSettingTimeOut()J
    .locals 6

    iget-wide v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mSettingTimeOut:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mSettingTimeOut:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mSettingTimeOut:J

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GalleryCoverMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SettingNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mWindowManager:Lcom/sec/samsung/gallery/lib/libinterface/WindowManagerInterface;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/sec/samsung/gallery/lib/libinterface/WindowManagerInterface;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GalleryCoverMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCoverMode()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GalleryCoverMode"

    const-string/jumbo v1, "start CoverMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mFinishByBtn:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->requestSystemKeyEvent(IZ)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setLayoutParams()V

    const-wide/16 v0, 0x1770

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setScreenOffTime(JZ)V

    goto :goto_0
.end method

.method private setLayoutParams()V
    .locals 6

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mMainLayout:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1201b7

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1
.end method

.method private setScreenOffTime(JZ)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->setUserActivityTimeout(Landroid/view/WindowManager$LayoutParams;J)V

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->setScreenDimDuration(Landroid/view/WindowManager$LayoutParams;J)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->setScreenDimDuration(Landroid/view/WindowManager$LayoutParams;J)V

    goto :goto_0
.end method

.method private showCoverCloseBtn()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCloseBtnView:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003f

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCloseBtnView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCloseBtnView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCloseBtnView:Landroid/view/View;

    const v2, 0x7f1200a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceSCoverView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private switchToNormal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->onCoverModeChanged()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "GalleryCoverMode"

    const-string/jumbo v2, "Cover Gallery: Destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->finishedByBtn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->requestSystemKeyEvent(IZ)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setActivityResult(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public isCoverMode()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryCoverMode"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "GalleryCoverMode"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCoverOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mIsStarted:Z

    return-void
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "GalleryCoverMode"

    const-string/jumbo v1, "Cover Gallery: Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method resume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GalleryCoverMode"

    const-string/jumbo v1, "Cover Gallery: Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setLayoutParams()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->showCoverCloseBtn()V

    goto :goto_0
.end method

.method public setActivityResult(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method
