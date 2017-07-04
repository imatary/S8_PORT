.class public Lcom/sec/android/gallery3d/ui/FilmStripView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "FilmStripView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/UserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final MSG_HIDE_SCROLLBAR:I = 0x1

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final SHOW_ALPHA_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "FilmStripView"

.field private static final TIMEOUT:I = 0x3e8


# instance fields
.field private mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

.field private final mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

.field private mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

.field private mBarSize:I

.field private mBottomMargin:I

.field private mContentSize:I

.field private final mContext:Landroid/content/Context;

.field private mDisableSelectMode:Z

.field private mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

.field private mFilmStripVisible:Z

.field private final mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

.field private mHolderColor:I

.field private final mIsBurstShotViewer:Z

.field private mIsDisplayChanged:Z

.field private mIsInitialized:Z

.field private mIsSelectionMode:Z

.field private mLeftStart:I

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

.field private mLoadingFinished:Z

.field private mLockTouchEvent:Z

.field private final mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mMidMargin:I

.field private mNeedUpdateVisibleRange:Z

.field private mScreenWidth:I

.field private mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

.field private mScrollPosition:I

.field private mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

.field private mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

.field private final mSupportExitQuickViewWithFlick:Z

.field private mThumbSize:I

.field private mTopMargin:I

.field private mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

.field private final mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;ZLcom/sec/android/gallery3d/app/AlbumReloader;ZZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLockTouchEvent:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollPosition:I

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLoadingFinished:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mDisableSelectMode:Z

    iput-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    iput-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mNeedUpdateVisibleRange:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsDisplayChanged:Z

    new-instance v2, Lcom/sec/android/gallery3d/ui/FilmStripView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/ui/FilmStripView$2;-><init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mDisableSelectMode:Z

    iput-boolean p5, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsBurstShotViewer:Z

    iput-boolean p6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSupportExitQuickViewWithFlick:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initializeViews()V

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initializeData(Lcom/sec/android/gallery3d/data/MediaSet;)V

    new-instance v2, Lcom/sec/android/gallery3d/ui/FilmStripView$1;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/ui/FilmStripView$1;-><init>(Lcom/sec/android/gallery3d/ui/FilmStripView;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    new-instance v2, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initAccessibilityListener()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScrollWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScreenWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Lcom/sec/android/gallery3d/ui/ScrollBarView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/sec/android/gallery3d/ui/ScrollBarView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/ScrollBarView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/FilmStripView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getFilmStripLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/FilmStripView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/FilmStripView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onScrollPositionChanged(II)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/gallery3d/ui/FilmStripView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLoadingFinished:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mNeedUpdateVisibleRange:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/gallery3d/ui/FilmStripView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mNeedUpdateVisibleRange:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/app/AlbumDataLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/FilmStripView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLeftStart:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/FilmStripView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/ui/FilmStripView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLockTouchEvent:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/FilmStripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onDown()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/FilmStripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSupportExitQuickViewWithFlick:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    return-object v0
.end method

.method private getFilmStripLength()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    mul-int v0, v1, v2

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private getGenericFocusIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->getGenericFocusIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getNavigationBarHeight()I
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getScreenWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private getScrollWidth()I
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScreenWidth()I

    move-result v0

    mul-int v1, v0, v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getFilmStripLength()I

    move-result v2

    div-int/2addr v1, v2

    return v1
.end method

.method private initLayoutParameters()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsBurstShotViewer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->get(Landroid/content/Context;)Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripThumbSize:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripContentSize:I

    :goto_0
    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripTopMargin:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripMidMargin:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mMidMargin:I

    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripBottomMargin:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBottomMargin:I

    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripThumbSize:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mThumbSize:I

    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripContentSize:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripBarSize:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBarSize:I

    iget v1, v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->placeholderColor:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHolderColor:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->get(Landroid/content/Context;)Lcom/sec/android/gallery3d/app/Config$PhotoPage;

    move-result-object v0

    goto :goto_0
.end method

.method private initSlotView()V
    .locals 7

    new-instance v6, Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mThumbSize:I

    iput v0, v6, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mThumbSize:I

    iput v0, v6, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getSelectionManager()Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    new-instance v0, Lcom/sec/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gallery3d/ui/SlotView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    new-instance v0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHolderColor:I

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsBurstShotViewer:Z

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;IZ)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/FilmStripView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/FilmStripView$3;-><init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setListener(Lcom/sec/android/gallery3d/ui/SlotView$Listener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setOverscrollEffect(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setUserInteractionListener(Lcom/sec/android/gallery3d/ui/UserInteractionListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    new-instance v0, Lcom/sec/android/gallery3d/ui/EdgeView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/EdgeView;->setVisibility(I)V

    return-void
.end method

.method private initializeData(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mDisableSelectMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->setSourceMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/AlbumReloader;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/sec/android/gallery3d/ui/FilmStripView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/FilmStripView$4;-><init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsBurstShotViewer:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initLayoutParameters()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initSlotView()V

    return-void
.end method

.method private onDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripSelectionMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->showScrollBar()V

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->hideScrollBar()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->refreshHidingMessage(I)V

    goto :goto_0
.end method

.method private onScrollPositionChanged(II)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripSelectionMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollPosition:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollPosition:I

    if-eq v0, p2, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollPosition:I

    if-eq v0, p1, :cond_2

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->refreshHidingMessage(I)V

    :cond_2
    iput p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollPosition:I

    goto :goto_0
.end method

.method private onUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method private playHaptic()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method private refreshHidingMessage(I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->showScrollBar()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method private removeGlAccessibilityFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->sendAccessibilityEventForVirtualView(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setFocusedIndex(I)V

    return-void
.end method

.method private updateBottomMargin()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f0b0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBottomMargin:I

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0b0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBottomMargin:I

    goto :goto_0
.end method

.method private updateScrollWidth()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScreenWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getFilmStripLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->hideScrollBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScrollWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->setGripWidth(I)V

    goto :goto_0
.end method

.method private updateViews()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initLayoutParameters()V

    new-instance v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mThumbSize:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mThumbSize:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotSpec(Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->destroy()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->removeGlAccessibilityFocus()V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    goto :goto_0

    :sswitch_2
    const/4 v1, -0x1

    const/16 v2, 0x3ea

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getGenericFocusIndex()I

    move-result v1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/SlotView;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setGenericFocusIndex(I)V

    goto :goto_0

    :cond_4
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;->getIndexOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setFocusedIndex(I)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setGenericFocusIndex(I)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
    .end sparse-switch
.end method

.method public enterSelectionMode()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onSelectionModeChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->clearAllSelectionIndex()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onLongTap()V

    :cond_1
    return-void
.end method

.method public exitSelectionMode()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onSelectionModeChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->clearAllSelectionIndex()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->invalidate()V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->hideScrollBar()V

    :cond_0
    return-void
.end method

.method protected initAccessibilityListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/FilmStripView$5;-><init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    return-void
.end method

.method public initialize(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsInitialized:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->setSlotPosition(I)V

    return-void
.end method

.method public initialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsInitialized:Z

    return v0
.end method

.method public isSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->updateScrollWidth()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->updateViews()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput p2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLeftStart:I

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsDisplayChanged:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_2

    sub-int v2, p4, p2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScreenWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    sub-int v4, p4, p2

    iget v5, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/sec/android/gallery3d/ui/SlotView;->layout(IIII)V

    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsDisplayChanged:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->getFocusIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SlotView;->scrollTo(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    sub-int v5, p4, p2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/ui/EdgeView;->layout(IIII)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mMidMargin:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBarSize:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBottomMargin:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v8, v8, v8, v3}, Lcom/sec/android/gallery3d/ui/EdgeView;->setPaddings(IIII)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, p4, v5

    iget v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->layout(IIII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getScreenWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScreenWidth:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getFilmStripLength()I

    move-result v3

    div-int/2addr v2, v3

    if-lt v2, v9, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsDisplayChanged:Z

    if-eqz v2, :cond_0

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsDisplayChanged:Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    sub-int v5, p4, p2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/ui/SlotView;->layout(IIII)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onLongTap(I)V
    .locals 3

    const/4 v2, 0x1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripSelectionMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mDisableSelectMode:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onSingleTapUp(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isURIImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isURIVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->playHaptic()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsSelectionMode:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onSelectionModeChanged(Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->clearAllSelectionIndex()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->addSelectionIndex(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onLongTap()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v1, v0, v2, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onSelectionChanged(Lcom/sec/android/gallery3d/data/MediaItem;ZI)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->updateBottomMargin()V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mMidMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBarSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBottomMargin:I

    add-int v0, v1, v2

    invoke-static {p0}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->getInstance(Lcom/sec/android/gallery3d/ui/GLView;)Lcom/sec/android/gallery3d/ui/MeasureHelper;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/sec/android/gallery3d/ui/MeasureHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->measure(II)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->onSlotSelected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setFocusIndex(I)V

    :cond_1
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUserDoubleTap()V
    .locals 0

    return-void
.end method

.method public onUserFlingUp()V
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method public onUserInteractionBegin()V
    .locals 0

    return-void
.end method

.method public onUserInteractionEnd()V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->pause()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setGenericFocusIndex(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->releaseInstance()V

    return-void
.end method

.method public refreshHidingMessage()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->refreshHidingMessage(I)V

    return-void
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScreenWidth:I

    int-to-double v4, v3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getFilmStripLength()I

    move-result v3

    iget v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScreenWidth:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    div-double v0, v4, v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v0

    double-to-int v2, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScreenWidth:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->setContentPosition(II)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->resume()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->updateItemSize()V

    :cond_1
    return-void
.end method

.method public setBurstShotGroupId(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsBurstShotViewer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->getBSDownload(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->setSelectionMode(Z)V

    :cond_0
    return-void
.end method

.method public setFocusIndex(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSupportExitQuickViewWithFlick:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->getIsFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->setFocusIndex(I)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLoadingFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mNeedUpdateVisibleRange:Z

    goto :goto_0
.end method

.method public setGenericFocusIndex(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->getGenericFocusIndex()I

    move-result v1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setGenericFocusIndex(I)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->setGenericFocusIndex(I)V

    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupIndex(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setGroupIndex(J)V

    :cond_0
    return-void
.end method

.method public setIsDisplayChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsDisplayChanged:Z

    return-void
.end method

.method public setListener(Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mListener:Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    return-void
.end method

.method public setLockTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLockTouchEvent:Z

    return-void
.end method

.method public setNavigationPadding()V
    .locals 6

    const/4 v5, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsImmersiveMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getNavigationBarHeight()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v1, v5, v2, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setPaddings(IIII)V

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getNavigationBarHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getNavigationBarHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setPaddings(IIII)V

    goto :goto_1
.end method

.method public setStartIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setStartIndex(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SlotView;->setStartIndex(I)V

    return-void
.end method

.method public setUserInteractionListener(Lcom/sec/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/sec/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->hideScrollBar()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "filmstrip show() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "filmstrip show() called. but currently not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "filmstrip show() called. but already visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showWithAlpha()V
    .locals 5

    const-string/jumbo v2, "FilmStripView"

    const-string/jumbo v3, "filmstrip showWithAlpha() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mIsInitialized:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "FilmStripView"

    const-string/jumbo v3, "filmstrip showWithAlpha() called. but currently not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "FilmStripView"

    const-string/jumbo v3, "filmstrip showWithAlpha() called. but already visible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FilmStripView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->updateItem(I)V

    :cond_0
    return-void
.end method

.method public updateItemSize()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->requestLayout()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->updateScrollWidth()V

    return-void
.end method
