.class public Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
.super Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$MenuGettable;
.implements Lcom/sec/android/gallery3d/app/GalleryContext;


# static fields
.field static final IS_DUAL_SCREEN:Z

.field static final IS_TAB_UI:Z

.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"


# instance fields
.field private mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field private mAudioManager:Landroid/media/AudioManager;

.field mCancelMediaOperations:Z

.field private mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

.field private mDesktopModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

.field private mGalleryTabTag:Lcom/sec/android/gallery3d/app/GalleryTabTag;

.field private mHdmiManager:Lcom/sec/android/gallery3d/app/HdmiManager;

.field private mIsActivityVisible:Z

.field private mLibContext:Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;

.field private mMenu:Landroid/view/Menu;

.field private mMultiWindow:Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

.field private mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

.field mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

.field private mNewAlbumSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

.field mStateManager:Lcom/sec/android/gallery3d/app/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->IS_DUAL_SCREEN:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->IS_TAB_UI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDesktopModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mCancelMediaOperations:Z

    new-instance v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    return-void
.end method

.method private clearGalleryFeature()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGooglePlayServicesAvailable:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripWithFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    return-void
.end method

.method private manageDisplayListener(I)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "DISPLAY_LISTENER_MANAGE"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setMultiWindowModeChangeListener()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V

    goto :goto_0
.end method

.method private setOnApplyWindowInsetsListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    new-instance v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-static {}, Lcom/sec/android/gallery3d/ui/ImageRotation;->getImageRotation()Lcom/sec/android/gallery3d/ui/ImageRotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;-><init>(Lcom/sec/android/gallery3d/ui/ImageRotation;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    return-object v0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getDataManager()Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getDecoderInterface()Lcom/sec/samsung/gallery/decoder/DecoderInterface;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    return-object v0
.end method

.method public getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDesktopModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/DesktopModeManagerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/DesktopModeManagerFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/DesktopModeManagerFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDesktopModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDesktopModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    return-object v1
.end method

.method public getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method public getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlipAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-static {}, Lcom/sec/android/gallery3d/ui/ImageFlip;->getImageFlip()Lcom/sec/android/gallery3d/ui/ImageFlip;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;-><init>(Lcom/sec/android/gallery3d/ui/ImageFlip;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    return-object v0
.end method

.method public getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method public getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGalleryId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;
    .locals 2

    sget-boolean v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->IS_TAB_UI:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isNeedTabUI()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :goto_1
    iput-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    instance-of v1, v1, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    goto :goto_2
.end method

.method public getGalleryTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->getTabCount()I

    move-result v0

    goto :goto_0
.end method

.method public getGalleryTabTag()Lcom/sec/android/gallery3d/app/GalleryTabTag;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTabTag:Lcom/sec/android/gallery3d/app/GalleryTabTag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryTabTag;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryTabTag;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTabTag:Lcom/sec/android/gallery3d/app/GalleryTabTag;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTabTag:Lcom/sec/android/gallery3d/app/GalleryTabTag;

    return-object v0
.end method

.method public getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method public getHdmiManager()Lcom/sec/android/gallery3d/app/HdmiManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mHdmiManager:Lcom/sec/android/gallery3d/app/HdmiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/app/HdmiManager;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/app/HdmiManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mHdmiManager:Lcom/sec/android/gallery3d/app/HdmiManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mHdmiManager:Lcom/sec/android/gallery3d/app/HdmiManager;

    return-object v0
.end method

.method public getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ImageCacheService;

    return-object v0
.end method

.method public getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mLibContext:Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mLibContext:Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mLibContext:Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindow:Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindow:Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindow:Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMultiWindow:Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    goto :goto_0
.end method

.method public getNaviSpinner()Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->IS_TAB_UI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    goto :goto_0
.end method

.method public getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNewAlbumSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNewAlbumSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNewAlbumSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method public getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SELECTION_MANAGER"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->retrieveProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getProgressDialog()Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getProgressDialog()Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getSelectionManagerFromState()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getSelectionManagerFromState()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    goto :goto_0
.end method

.method public getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->soundSet()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/sec/android/gallery3d/app/StateManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->IS_TAB_UI:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/TabStateManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/sec/android/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    return-object v0
.end method

.method public isActivityVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mIsActivityVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->swapIfneeded(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLcdRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/StateManager;->contextItemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->createContextMenu(Landroid/view/ContextMenu;)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->destroy()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mSoundUtils:Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->releaseSoundSet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->clearTranslationHashMap()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->clearGalleryFeature()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryTab:Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->removeAllMessage()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterForContextMenu(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->manageDisplayListener(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPause()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onViewPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/photos/data/GalleryBitmapPool;->clear()V

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->clear()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ImageCacheService;->clearMemory()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->clearGalleryFeature()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->onPostCreate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->prepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/StateManager;->permissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->updateMultiWindowSize()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onViewResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->manageDisplayListener(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mIsActivityVisible:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mCancelMediaOperations:Z

    const-string/jumbo v0, "AbstractGalleryActivity"

    const-string/jumbo v1, "onRetainNonConfigurationInstance is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string/jumbo v0, "AbstractGalleryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory , Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/photos/data/GalleryBitmapPool;->clear()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onUserLeaveHint()V

    const-string/jumbo v0, "AbstractGalleryActivity"

    const-string/jumbo v1, "Home Button is Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPhotoEditorLaunchRequested()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/sec/samsung/gallery/util/DNIeModeHelper;->enableDNIeMode(Landroid/content/Context;ZI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEnableKeepBrightness()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v3, v1, v2}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    goto :goto_0
.end method

.method onViewPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->pause()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->pause()V

    return-void
.end method

.method onViewResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->resume()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->resume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->windowFocusChanged(Z)V

    return-void
.end method

.method public registerFaceRecommendationObserver(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContextMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->registerForContextMenu(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 6

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setMultiWindowModeChangeListener()V

    const v1, 0x7f1200ae

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "AbstractGalleryActivity"

    const-string/jumbo v2, "setContentView mGLRootView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setOnApplyWindowInsetsListener()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    goto :goto_0
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setShowHideAnimationEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContextMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_0
    return-void
.end method
