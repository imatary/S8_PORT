.class public Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
.super Ljava/lang/Object;
.source "FastOptionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIM_DURATION_MS:I = 0xc8

.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final BACKGROUND_ALPHA_VALUE:F = 0.4f

.field public static final COMMAND_AGIF:I = 0xf

.field public static final COMMAND_AUTOADJUST:I = 0xa

.field public static final COMMAND_COLLAGE:I = 0xe

.field public static final COMMAND_CROP:I = 0xc

.field public static final COMMAND_DELETE:I = 0x3

.field public static final COMMAND_DRAWING:I = 0x10

.field public static final COMMAND_EDIT:I = 0x2

.field public static final COMMAND_FAVORITE:I = 0x0

.field public static final COMMAND_GOTO_URL:I = 0x14

.field public static final COMMAND_PHOTO_EDITOR:I = 0xd

.field public static final COMMAND_RECYCLEBIN_DELETE:I = 0x7

.field public static final COMMAND_RECYCLEBIN_RESTORE:I = 0x6

.field public static final COMMAND_ROTATE_RIGHT:I = 0xb

.field public static final COMMAND_SHARE:I = 0x1

.field public static final COMMAND_SHARE_EVENT_DOWNLOAD:I = 0x15

.field public static final COMMAND_VIDEO_EDITOR:I = 0x4

.field public static final COMMAND_VIDEO_TRIM:I = 0x5

.field public static final COMMAND_VISION_INTELLIGENCE:I = 0x11

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final FEATURE_IS_RETAIL_MODE:Z

.field private static final FEATURE_USE_DISABLE_PHOTO_EDITOR:Z

.field private static final FEATURE_USE_GO_TO_URL:Z

.field private static final FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

.field private static final FEATURE_USE_MULTI_WINDOW:Z

.field private static final FEATURE_USE_VISION_INTELLIGENCE:Z

.field private static final HIDE_TRANS_ANIM_DURATION_MS:I = 0x15e

.field private static final IS_MASS_MODEL:Z

.field private static final IS_NOS:Z

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final SHOW_TRANS_ANIM_DURATION_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "FastOptionView"

.field private static final TYPE_AGIF:I = 0x2

.field private static final TYPE_BROKEN:I = 0x0

.field private static final TYPE_DRM:I = 0x1

.field private static final TYPE_IMAGE:I = 0x0

.field private static final TYPE_KNOX:I = 0x5

.field private static final TYPE_MTP:I = 0x8

.field private static final TYPE_NFL:I = 0x9

.field private static final TYPE_NORMAL:I = 0x4

.field private static final TYPE_NO_ADJUST_IMAGE:I = 0x7

.field private static final TYPE_ONLOCKSCREEN:I = 0x2

.field private static final TYPE_PLAYMOTION:I = 0x6

.field private static final TYPE_RECYCLE_BIN:I = 0xb

.field private static final TYPE_REMOTE_MEDIAITEM:I = 0x3

.field private static final TYPE_SCLOUD:I = 0xa

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final TYPE_VIDEO:I = 0x1

.field private static final USE_NAVIGATION_BAR:Z


# instance fields
.field private isScreenRotated:Z

.field private isUpdateLayout:Z

.field private mAlphaAniContainerView:Landroid/view/animation/Animation;

.field private mAlphaAnimShow:Landroid/view/animation/Animation;

.field private mAnimHide:Landroid/view/animation/Animation;

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mAnimShow:Landroid/view/animation/Animation;

.field private mAutoAdjustOn:Z

.field private mAutoAdjustView:Landroid/widget/FrameLayout;

.field private mAutoAdjustViewOnEdit:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mContentType:I

.field private mContextualObject:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

.field private final mDrawableHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mEditContainer:Landroid/widget/LinearLayout;

.field private mEditMenuButton:Landroid/widget/TextView;

.field private final mEditMenuButtonLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

.field private mFastEditContainerView:Landroid/widget/LinearLayout;

.field private mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

.field private final mFastEditContainerViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mFastMenuView:Landroid/widget/LinearLayout;

.field private mFastMenuViewContainer:Landroid/widget/LinearLayout;

.field private mFavoriteOn:Z

.field private mFavoriteView:Landroid/widget/FrameLayout;

.field private mIsBurstShotViewer:Z

.field private mIsDestroyedFastOptionView:Z

.field private mIsFastMenuChanged:Z

.field private mIsFastMenuItemLongPressed:Z

.field private mIsFirstLaunch:Z

.field private mIsFromCategoryView:Z

.field private mIsFromEventView:Z

.field private mIsFromFavoriteView:Z

.field private mIsFromMyPlace:Z

.field private mIsFromNotiView:Z

.field private mIsFromQuickConnect:Z

.field private mIsFromRecycleBin:Z

.field private mIsFromSmartManager:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMenuViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeType:Ljava/lang/String;

.field private mPropertyType:I

.field private final mResContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;

.field private mShowAlphaAnimationDuration:I

.field private mSupportAGIF:Z

.field private mSupportAutoAdjust:Z

.field private mSupportContextualButton:Z

.field private mSupportDelete:Z

.field private mSupportEdit:Z

.field private mSupportFavorite:Z

.field private mSupportRotation:Z

.field private mSupportShare:Z

.field private mSupportShareEventDownload:Z

.field private mSupportVisionIntelligence:Z

.field private mUseFilmStripWithFastOptionView:Z

.field private mUseKeyboardCover:Z

.field private mVisionView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_MASS_MODEL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->USE_NAVIGATION_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHeroFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_GO_TO_URL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisionIntelligence:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_VISION_INTELLIGENCE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_MULTI_WINDOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->DisablePhotoEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_DISABLE_PHOTO_EDITOR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_IS_RETAIL_MODE:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportRotation:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAGIF:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFirstLaunch:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isUpdateLayout:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isScreenRotated:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromFavoriteView:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromQuickConnect:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromSmartManager:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromCategoryView:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromMyPlace:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromRecycleBin:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromNotiView:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShareEventDownload:Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripWithFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsDestroyedFastOptionView:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsBurstShotViewer:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mShowAlphaAnimationDuration:I

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseKeyboardCover:Z

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButtonLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripWithFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040056

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    :goto_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v2, :cond_0

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v3, 0x7f1200c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v3, 0x7f1200d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    const-string/jumbo v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v3, 0x7f1200cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFirstLaunch:Z

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mDrawableHashMap:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    return-void

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040055

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocationForOverScreen()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocationForNormal()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuItemLongPressed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuItemLongPressed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setFocusOnFavorite(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getKeyEventOnFavorite(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setArrowLocation(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateStateOnFavorite(Landroid/widget/TextView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mShowAlphaAnimationDuration:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isUpdateLayout:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFirstLaunch:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFirstLaunch:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->initFastMenuView()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->initEditContainerView()V

    return-void
.end method

.method static synthetic access$2802(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseKeyboardCover:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isScreenRotated:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isScreenRotated:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setFastOptionMenuLayout(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateFastMenuViewPadding()V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_GO_TO_URL:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->findContextualObject(Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocationForSingle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromCategoryView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromFavoriteView:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocation()V

    return-void
.end method

.method private addMenuIcon(IILandroid/widget/TextView;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v2, :cond_3

    if-ne p2, v6, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setAutoadjustIconAndColor(ILandroid/widget/TextView;)V

    :goto_0
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    invoke-direct {p0, p3, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateMenuPadding(Landroid/widget/TextView;I)V

    return-void

    :cond_1
    const/16 v2, 0x11

    if-ne p2, v2, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setVisionIconAndColor(ILandroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setMenuIconAndColor(ILandroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f1000ee

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    invoke-interface {v1, p3, v2, v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    if-eq p2, v6, :cond_0

    invoke-virtual {p3, v5, p1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private addViewToFastMenuView(Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$11;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$11;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAutoAdjustState(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isAutoAdjustOn(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    return-void
.end method

.method private childViewSetListener(ILandroid/widget/TextView;)V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$7;

    invoke-direct {v0, p0, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;ILandroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;ILandroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$10;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$10;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_1
    return-void
.end method

.method private createContextualButton()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContextualObject:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f02018d

    const v3, 0x7f0a00b9

    const/16 v4, 0x14

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private createEditItem(III)V
    .locals 11

    const v10, 0x7f0a0058

    const v9, 0x7f10002e

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-ne p3, v8, :cond_3

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    if-ne p3, v8, :cond_1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, v6, p1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f1000d0

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04005a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p3, v8, :cond_6

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a0420

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;

    invoke-direct {v3, p0, p3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v6, p1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p3, v8, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a041f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private createFastMenuItem(III)V
    .locals 10

    const/16 v9, 0x11

    const/16 v8, 0xa

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v4, :cond_5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateButtonLayout(IIILandroid/widget/FrameLayout;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    if-ne p3, v8, :cond_1

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    :cond_1
    if-ne p3, v9, :cond_2

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isUpdateLayout:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromCategoryView:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromFavoriteView:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->addViewToFastMenuView(Landroid/widget/FrameLayout;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->inflateFastOptionMenuItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v0, 0x7f1200f0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setButtonBackground(Landroid/widget/TextView;)V

    if-ne p3, v8, :cond_7

    invoke-direct {p0, p1, v7}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setAutoadjustIconAndColor(ILandroid/widget/TextView;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p1, p3, v7, v6}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->addMenuIcon(IILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-direct {p0, p3, v4, v7, v6}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setFavoriteView(ILandroid/widget/FrameLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-direct {p0, p3, v7}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->childViewSetListener(ILandroid/widget/TextView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    if-ne p3, v9, :cond_8

    invoke-direct {p0, p1, v7}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setVisionIconAndColor(ILandroid/widget/TextView;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, v7}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setMenuIconAndColor(ILandroid/widget/TextView;)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButtonLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1
.end method

.method private findContextualObject(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContextualObject:Ljava/util/HashSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContextualObject:Ljava/util/HashSet;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const-string/jumbo v2, "go_to_url"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContextualObject:Ljava/util/HashSet;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContextualObject:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method private getButtonScaleAnimator(Landroid/widget/FrameLayout;)Landroid/animation/AnimatorSet;
    .locals 20

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const v17, 0x7f1200f0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v17, 0x7f1200ef

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v17, 0x64

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_3

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/16 v17, 0x68

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_4

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_5

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v14, v17, v18

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/16 v17, 0x64

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_6

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_7

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    aput-object v15, v17, v18

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/16 v17, 0x68

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f88f5c3    # 1.07f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f88f5c3    # 1.07f
    .end array-data

    :array_2
    .array-data 4
        0x3f88f5c3    # 1.07f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f88f5c3    # 1.07f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getKeyEventOnFavorite(Landroid/widget/TextView;I)V
    .locals 8

    const v3, 0x7f020187

    const v4, 0x7f020185

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v6, 0x7f1200f0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v6, 0x7f1200ef

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :cond_0
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v5, :cond_3

    move v1, v3

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x42

    if-eq p2, v5, :cond_1

    const/16 v5, 0x17

    if-ne p2, v5, :cond_2

    :cond_1
    if-ne v1, v4, :cond_4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f0200b3

    invoke-virtual {v0, v7, v3, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f020183

    invoke-virtual {v0, v7, v3, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private getNavigationBarHeight()I
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsImmersiveMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getResourceDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mDrawableHashMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mDrawableHashMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getSoftKeyBottomPadding()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseKeyboardCover:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getNavigationBarHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method private inflateFastOptionMenuItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    move v2, v0

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_MULTI_WINDOW:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    :cond_0
    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v4, :cond_1

    const v1, 0x7f040066

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v4

    if-nez v4, :cond_2

    if-ne v2, v0, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const v1, 0x7f040065

    goto :goto_0

    :cond_4
    const v1, 0x7f040064

    goto :goto_0
.end method

.method private initEditContainerView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-eqz v0, :cond_1

    const v0, 0x7f02019e

    const v1, 0x7f0a0059

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportRotation:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0201a2

    const v1, 0x7f0a037e

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    :cond_2
    const v0, 0x7f0201a0

    const v1, 0x7f0a00d6

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDrawing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0201a3

    const v1, 0x7f0a0144

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const v0, 0x7f0201a1

    const v1, 0x7f0a032c

    const/16 v2, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateAGIFForDetailView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAGIF:Z

    if-eqz v0, :cond_4

    const v0, 0x7f02019d

    const v1, 0x7f0a00ce

    const/16 v2, 0xf

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableCollage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f02019f

    const v1, 0x7f0a037c

    const/16 v2, 0xe

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V

    :cond_5
    return-void
.end method

.method private initFastMenuView()V
    .locals 8

    const v7, 0x7f0a03cd

    const v6, 0x7f0a014e

    const/4 v5, 0x1

    const/4 v4, 0x3

    const v3, 0x7f0a00fd

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isUpdateLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromCategoryView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromFavoriteView:Z

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200b3

    const v1, 0x7f0a01a2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020178

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateFastMenuViewPadding()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setFastOptionMenuLayout(Landroid/widget/LinearLayout;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    :goto_1
    return-void

    :cond_6
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0201b8

    const v1, 0x7f0a04da

    const/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_7
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createContextualButton()V

    :cond_8
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-eqz v0, :cond_9

    const v0, 0x7f020171

    const v1, 0x7f0a0059

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_9
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_a

    const v0, 0x7f0201a9

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_a
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_b

    const v0, 0x7f02017d

    const/16 v1, 0xd

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020178

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_0

    :cond_c
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAGIF:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_b

    const v0, 0x7f02017d

    const/16 v1, 0xf

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_2

    :cond_d
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-ne v0, v5, :cond_b

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableVideoEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7f02017d

    const/4 v1, 0x4

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_2

    :cond_e
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTrimInsteadEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f02017d

    const/4 v1, 0x5

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_2

    :cond_f
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    if-eqz v0, :cond_10

    const v0, 0x7f0200b3

    const v1, 0x7f0a01a2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_10
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_11

    const v0, 0x7f0200b4

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_11
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    :cond_12
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_13

    const v0, 0x7f0200b0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_13
    :goto_3
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0200af

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :cond_14
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-ne v0, v5, :cond_13

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableVideoEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x7f0200b2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_3

    :cond_15
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTrimInsteadEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0200b2

    const/4 v1, 0x5

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_3

    :pswitch_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShareEventDownload:Z

    if-eqz v0, :cond_16

    const v0, 0x7f02017b

    const v1, 0x7f0a0131

    const/16 v2, 0x15

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_16
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_17

    const v0, 0x7f0201a9

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_17
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020178

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :cond_18
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_19

    const v0, 0x7f0200b4

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_19
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0200af

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f0201b8

    const v1, 0x7f0a04da

    const/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_1a
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createContextualButton()V

    :cond_1b
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_1c

    const v0, 0x7f0201a9

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_1c
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_1d

    const v0, 0x7f02017d

    const/16 v1, 0xd

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_1d
    :goto_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020178

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :cond_1e
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAGIF:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_1d

    const v0, 0x7f02017d

    const/16 v1, 0xf

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_4

    :cond_1f
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_20

    const v0, 0x7f0200b4

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_20
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    :cond_21
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_22

    const v0, 0x7f0200b0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_22
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0200af

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :pswitch_4
    const v0, 0x7f0201a5

    const v1, 0x7f0a0375

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    const v0, 0x7f020178

    const/4 v1, 0x7

    invoke-direct {p0, v0, v3, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_23

    const v0, 0x7f020178

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :goto_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastOptionViewShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->showFastOptionView(Z)V

    goto/16 :goto_0

    :cond_23
    const v0, 0x7f0200af

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto :goto_5

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastOptionViewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastOptionView(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_24

    const v0, 0x7f0201a9

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_24
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020178

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :cond_25
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v0, :cond_26

    const v0, 0x7f0200b4

    invoke-direct {p0, v0, v7, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    :cond_26
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0200af

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    :cond_27
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0200af

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastMenuItem(III)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setArrowLocation(Landroid/widget/TextView;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    const v3, 0x7f020143

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aget v4, v2, v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_0
.end method

.method private setAutoadjustIconAndColor(ILandroid/widget/TextView;)V
    .locals 7

    const v6, 0x7f1000e8

    const v5, 0x7f10002e

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0417

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0416

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setButtonBackground(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200e1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0200e4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setClickableButtons(Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setEditContainerLocation()V
    .locals 7

    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    const v4, 0x7f1200f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setX(F)V

    :cond_0
    return-void
.end method

.method private setEditContainerLocationForNormal()V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->updateMultiwindowSize()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setX(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private setEditContainerLocationForOverScreen()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    const v4, 0x7f1200f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b05c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->setX(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->setLeft(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setRight(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v6, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method private setEditContainerLocationForSingle()V
    .locals 4

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    const v3, 0x7f1200f0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setX(F)V

    :cond_0
    return-void
.end method

.method private setEditMenuType(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMimeType:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportRotation:Z

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMimeType:Ljava/lang/String;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x5

    iput v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportRotation:Z

    const-wide/32 v6, 0x100000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v6, 0x400

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportRotation:Z

    :cond_3
    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_c

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-nez v5, :cond_c

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableAutoAdjust:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->checkAutoAdjustState(Ljava/lang/String;)V

    :cond_4
    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-ne v0, v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-ne v3, v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportRotation:Z

    if-eq v4, v5, :cond_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$16;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$16;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, ""

    goto/16 :goto_1

    :cond_7
    const-wide/16 v6, 0x8

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x100000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x200

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x10

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x4

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x20000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x1000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x800

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x200000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x400

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x400000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x1000000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x4000000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x2000000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/32 v6, 0x800000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-eqz v5, :cond_8

    const-wide/32 v6, 0x10000000

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v5

    const/16 v6, 0x970

    if-eq v5, v6, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v5

    const/16 v6, 0x980

    if-ne v5, v6, :cond_a

    :cond_9
    const/4 v5, 0x7

    iput v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_2

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method private setFastOptionMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->x:I

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->USE_NAVIGATION_BAR:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getNavigationBarHeight()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_0
    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateMenuLayoutInNOS(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateMenuLayoutInMOS(Landroid/widget/LinearLayout;III)V

    goto :goto_0
.end method

.method private setFavoriteView(ILandroid/widget/FrameLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    const v2, 0x7f1200ef

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v2, :cond_1

    const v0, 0x7f020187

    :goto_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0420

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_MASS_MODEL:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getButtonScaleAnimator(Landroid/widget/FrameLayout;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f020185

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a041f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setFocusOnFavorite(Landroid/widget/TextView;Z)V
    .locals 7

    const v3, 0x7f020187

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v5, 0x7f1200f0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v5, 0x7f1200ef

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :cond_0
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v4, :cond_2

    move v1, v3

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_4

    if-ne v1, v3, :cond_3

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f0200b3

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v1, 0x7f020185

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f020183

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f020175

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private setHideAnimation(Z)V
    .locals 10

    const v5, 0x7f0b05b0

    const v9, 0x7f02017e

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0118

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v3, v4

    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getSoftKeyBottomPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v4, :cond_8

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_2
    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v1, :cond_0

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_MASS_MODEL:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$14;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$14;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->reset()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    const v5, 0x7f1200f0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f100260

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v8, v9, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setClickableButtons(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b010d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    const/16 v4, 0x69

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v7, v7, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_2
.end method

.method private setMenuIconAndColor(ILandroid/widget/TextView;)V
    .locals 4

    const v3, 0x7f1000e8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setShowAnimation(Z)V
    .locals 7

    const v3, 0x7f0b05b0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getSoftKeyBottomPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v6, v6, v1, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_MASS_MODEL:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mShowAlphaAnimationDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateFastMenuViewPadding()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v2

    const/16 v2, 0x69

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mShowAlphaAnimationDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mUseFilmStripWithFastOptionView:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method private setVisionIconAndColor(ILandroid/widget/TextView;)V
    .locals 7

    const v6, 0x7f1000e8

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "vision_intelligence"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2, v5, v1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateAutoAdjustButton()V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0420

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a041f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAutoAdjustButtonForSimple()V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    const v3, 0x7f1200f0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0417

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0416

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateButtonLayout(IIILandroid/widget/FrameLayout;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v7, 0x0

    const v4, 0x7f1200f0

    invoke-virtual {p4, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    if-ne p3, v4, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setAutoadjustIconAndColor(ILandroid/widget/TextView;)V

    :cond_0
    :goto_0
    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0a014e

    if-ne p2, v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    if-eqz v4, :cond_1

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$4;

    invoke-direct {v4, p0, p3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/16 v4, 0x11

    if-ne p3, v4, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setVisionIconAndColor(ILandroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setMenuIconAndColor(ILandroid/widget/TextView;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_6

    const v4, 0x7f1200ef

    invoke-virtual {p4, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v4, :cond_8

    const v2, 0x7f020187

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a0420

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    const/4 v4, 0x2

    if-ne p3, v4, :cond_0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f100260

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p5, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    invoke-virtual {v4, v7, p1, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButtonLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/16 :goto_0

    :cond_8
    const v2, 0x7f020185

    goto :goto_1

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a041f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateFastMenuViewPadding()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getSoftKeyBottomPadding()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method private updateMenuLayoutInMOS(Landroid/widget/LinearLayout;III)V
    .locals 6

    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_MULTI_WINDOW:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f1200f0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v4

    if-nez v4, :cond_6

    if-eq p4, p3, :cond_6

    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSameFastOptionLookAsPhotoEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_8
    return-void
.end method

.method private updateMenuLayoutInNOS(I)V
    .locals 11

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v8, v6, 0x2

    sub-int v8, p1, v8

    div-int v4, v8, v0

    sub-int v8, v4, v2

    sub-int v4, v8, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1200f0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b05b6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b05bc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateMenuPadding(Landroid/widget/TextView;I)V
    .locals 11

    const/4 v10, 0x0

    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    float-to-int v6, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05b3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int v8, v7, v2

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    div-int/lit8 v0, v8, 0x2

    invoke-virtual {p1, v10, v0, v10, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05b4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05b5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v5, v4, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStateOnFavorite(Landroid/widget/TextView;Landroid/view/MotionEvent;)V
    .locals 10

    const v9, 0x7f020183

    const/4 v8, 0x4

    const v3, 0x7f020187

    const v7, 0x7f020175

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v5, 0x7f1200f0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v5, 0x7f1200ef

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :cond_0
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v4, :cond_5

    move v1, v3

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    if-ne v1, v3, :cond_6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f020184

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v6, v7, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v6, v7, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v6, v7, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_4
    return-void

    :cond_5
    const v1, 0x7f020185

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v6, v9, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_7
    const v3, 0x7f020185

    if-ne v1, v3, :cond_3

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v6, v9, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2
.end method

.method private updateVisionButton(Ljava/lang/Boolean;)V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a04da

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    const v3, 0x7f1200f0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0417

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0416

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public createFastEditContainerView(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 10

    const v9, 0x7f02017f

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditMenuType(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f050020

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v6, 0x7f1200d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v6, 0x7f1200d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v6, 0x7f1200d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    const v6, 0x7f1200d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerScrollView:Landroid/widget/HorizontalScrollView;

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    const/16 v6, 0x64

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    const v6, 0x7f1200f0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    :cond_6
    if-eqz v4, :cond_7

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f100260

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v4, v7, v9, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    :cond_8
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButtonLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_9
    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->initEditContainerView()V

    :cond_a
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_c

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b056e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    const v6, 0x7f1200d8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    :cond_d
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-ne v5, v8, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    :goto_1
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsDestroyedFastOptionView:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButtonLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    if-eqz v0, :cond_8

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAnimShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public getChildViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public hideFastEditContainerView()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    const v2, 0x7f1200f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAlphaAniContainerView:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsDestroyedFastOptionView:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerViewArrow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsDestroyedFastOptionView:Z

    :cond_5
    return-void
.end method

.method public hideFastOptionView(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setHideAnimation(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    :cond_5
    return-void
.end method

.method public isAutoAdjustOn(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAutoAdjustedImage(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Auto_Enhance_Info"

    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    const-string/jumbo v2, "FastOptionView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method isAutoAdjustSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    return v0
.end method

.method isDownloadSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShareEventDownload:Z

    return v0
.end method

.method public isExistMenu(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMenuViewList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastEditContainerViewShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastOptionViewShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisionIntellegenceSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isScreenRotated:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateLayout()V

    return-void
.end method

.method public setAlphaAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mShowAlphaAnimationDuration:I

    return-void
.end method

.method public setContentType(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 12

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateAgifAttribute(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c

    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    :goto_1
    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-static {v8, p1}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v1, :cond_1

    const-string/jumbo v8, "gif"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAGIF:Z

    :cond_1
    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v8, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->findContextualObject(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_4
    instance-of v8, p1, Lcom/sec/android/gallery3d/data/ActionImage;

    if-eqz v8, :cond_11

    const/4 v8, -0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    :goto_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSlowMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isFastMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isHyperMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    :cond_4
    :goto_6
    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromSmartManager:Z

    if-nez v8, :cond_28

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromMyPlace:Z

    if-nez v8, :cond_28

    const-string/jumbo v8, "image/jpeg"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    iget v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_28

    iget v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-nez v8, :cond_28

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableAutoAdjust:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_28

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_IS_RETAIL_MODE:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-eqz v8, :cond_29

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isLDURetailMediaPath(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29

    const/4 v8, 0x1

    :goto_8
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    :cond_5
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->checkAutoAdjustState(Ljava/lang/String;)V

    :cond_6
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromSmartManager:Z

    if-eqz v8, :cond_2a

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    :goto_9
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromSmartManager:Z

    if-eqz v8, :cond_2c

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    :goto_a
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromQuickConnect:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromSmartManager:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromMyPlace:Z

    if-nez v8, :cond_7

    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_DISABLE_PHOTO_EDITOR:Z

    if-eqz v8, :cond_2e

    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    :goto_b
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromQuickConnect:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z

    if-eqz v8, :cond_8

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableKeyBoard:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromMyPlace:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromNotiView:Z

    if-eqz v8, :cond_30

    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    :goto_c
    iget v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    if-ne v6, v8, :cond_a

    iget v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    if-ne v3, v8, :cond_a

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-ne v2, v8, :cond_a

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-ne v4, v8, :cond_a

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    if-ne v5, v8, :cond_a

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportContextualButton:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportVisionIntelligence:Z

    if-eq v7, v8, :cond_b

    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuChanged:Z

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;

    invoke-direct {v9, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_c
    const-wide/16 v8, 0x20

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContentType:I

    goto/16 :goto_1

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromRecycleBin:Z

    if-eqz v8, :cond_12

    const/16 v8, 0xb

    :goto_d
    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_12
    const/16 v8, 0xa

    goto :goto_d

    :cond_13
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isRemoteMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x3

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_14
    if-eqz v0, :cond_15

    const/16 v8, 0x9

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_15
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_16
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isMTPImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_17

    const/16 v8, 0x8

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_17
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isRemoteMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, -0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_18
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_19
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isRemoteMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, -0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_1a
    if-eqz v0, :cond_1b

    const/16 v8, 0x9

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_1b
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_1c
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromRecycleBin:Z

    if-eqz v8, :cond_1d

    const/16 v8, 0xb

    :goto_e
    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_1d
    const/16 v8, 0xa

    goto :goto_e

    :cond_1e
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isRemoteMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v8, 0x3

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSharedEventItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    :goto_f
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShareEventDownload:Z

    goto/16 :goto_5

    :cond_1f
    const/4 v8, 0x0

    goto :goto_f

    :cond_20
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_21

    const/4 v8, 0x5

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_21
    sget-boolean v8, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v8, :cond_24

    const-wide/16 v8, 0x8

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x100000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x200

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x200

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x10

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x4

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x20000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x1000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x800

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x200000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/16 v8, 0x400

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x400000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x200000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_22

    const-wide/32 v8, 0x1000000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    :cond_22
    const-wide/32 v8, 0x4000000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x2000000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    const-wide/32 v8, 0x800000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_23

    const-wide/32 v8, 0x10000000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    :cond_23
    const-wide/32 v8, 0x8000000

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v8

    const/16 v9, 0xa50

    if-eq v8, v9, :cond_25

    :cond_24
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v8

    const/16 v9, 0x970

    if-eq v8, v9, :cond_25

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v8

    const/16 v9, 0x980

    if-ne v8, v9, :cond_26

    :cond_25
    const/4 v8, 0x7

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_26
    const/4 v8, 0x4

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_5

    :cond_27
    const/4 v8, 0x6

    iput v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mPropertyType:I

    goto/16 :goto_6

    :cond_28
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_29
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_2a
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    if-eqz v8, :cond_2b

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v8, 0x1

    :goto_10
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    goto/16 :goto_9

    :cond_2b
    const/4 v8, 0x0

    goto :goto_10

    :cond_2c
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2d

    const/4 v8, 0x1

    :goto_11
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportShare:Z

    goto/16 :goto_a

    :cond_2d
    const/4 v8, 0x0

    goto :goto_11

    :cond_2e
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x200

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2f

    const/4 v8, 0x1

    :goto_12
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    goto/16 :goto_b

    :cond_2f
    const/4 v8, 0x0

    goto :goto_12

    :cond_30
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    :goto_13
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportDelete:Z

    goto/16 :goto_c

    :cond_31
    const/4 v8, 0x0

    goto :goto_13
.end method

.method public setIsBurstShotViewer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsBurstShotViewer:Z

    return-void
.end method

.method public setIsFromCategoryView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromCategoryView:Z

    return-void
.end method

.method public setIsFromEventView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z

    return-void
.end method

.method public setIsFromFavoriteView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromFavoriteView:Z

    return-void
.end method

.method public setIsFromMyPlace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromMyPlace:Z

    return-void
.end method

.method public setIsFromNotiView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromNotiView:Z

    return-void
.end method

.method public setIsFromQuickConnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromQuickConnect:Z

    return-void
.end method

.method public setIsFromRecycleBin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromRecycleBin:Z

    return-void
.end method

.method public setIsFromSmartManager(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromSmartManager:Z

    return-void
.end method

.method public setListener(Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    return-void
.end method

.method public showFastOptionView(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsBurstShotViewer:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimHide:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->initFastMenuView()V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportEdit:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastMenuViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->IS_NOS:Z

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setShowAnimation(Z)V

    :cond_8
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setClickableButtons(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mEditMenuButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method public updateAutoAdjustMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 9

    const v8, 0x7f1000e8

    const v7, 0x7f02019e

    const/4 v4, 0x0

    const v6, 0x7f10002e

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportAutoAdjust:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->checkAutoAdjustState(Ljava/lang/String;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    const v4, 0x7f1200f0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f020171

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4009"

    const-wide/16 v6, 0x1

    invoke-static {v3, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateAutoAdjustButtonForSimple()V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4009"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustOn:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateAutoAdjustButton()V

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v7, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustViewOnEdit:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v5, 0x7f1000d0

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public updateFavoriteMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 10

    const v9, 0x7f0a01a2

    const v4, 0x7f020187

    const/4 v8, 0x4

    const/4 v7, 0x2

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mSupportFavorite:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v6, 0x7f1200f0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    const v6, 0x7f1200ef

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v5, :cond_4

    move v2, v4

    :goto_1
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;

    invoke-direct {v5, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$18;

    invoke-direct {v5, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$18;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$19;

    invoke-direct {v5, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$19;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-ne v2, v4, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v7, :cond_5

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a01fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a0420

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFavoriteOn:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f020185

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a04be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v7, :cond_8

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a0207

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a041f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v8, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    const v6, 0x7f0a04c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;-><init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateVisionMenuItem(Ljava/lang/Boolean;)V
    .locals 7

    const v6, 0x7f100258

    const v5, 0x7f1000e8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    const v3, 0x7f1200f0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0201b8

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateVisionButton(Ljava/lang/Boolean;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mResContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
