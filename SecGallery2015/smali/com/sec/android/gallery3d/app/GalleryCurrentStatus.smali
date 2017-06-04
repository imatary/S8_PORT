.class public Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
.super Ljava/lang/Object;
.source "GalleryCurrentStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;
    }
.end annotation


# static fields
.field public static IS_LOCALE_RTL_MODE:Z = false

.field private static final KEY_IS_ALBUM_PICK:Ljava/lang/String; = "album-pick"

.field public static final MEDIA_SET_INTERFACE_INFO:I = 0x0

.field private static final PREFKEY_VIEW_BY_FILTER_TYPES_PREF:Ljava/lang/String; = "viewByFilterTypes"

.field private static final ROTATION_INACTIVE:I = -0x2

.field private static final ROTATION_UNDEFINED:I = -0x1

.field public static final SLIDESHOW_INDEX:I = 0x1

.field private static final TALL_CATEGORY_LANGUAGES:[Ljava/lang/String;

.field private static final TIME_PICKER_DEF_LV:I

.field public static sCurrentLocale:Ljava/lang/String;

.field public static sIsTallCategoryLanguage:Z


# instance fields
.field private isMultiFormatShareActive:Z

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mCurrenViewByType:Ljava/lang/Integer;

.field private mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field private mCurrentMediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

.field private mCurrentViewModeType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private mDCParamValue:Ljava/lang/String;

.field private mDCShareParam:Lcom/samsung/android/devicecog/gallery/DCShareParameter;

.field private mDispRotation:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEnableImageAnalysisDisclaimer:Z

.field private mEnableViewSwitchVI:Z

.field private mHasQuickViewHistory:Z

.field private mIgnoreInvalidateOptionsMenu:Z

.field private mIsActiveMapView:Z

.field private mIsActivePrint:Z

.field private mIsActivityTransitionVI:Z

.field private mIsCollageMode:Z

.field private mIsCtrlPressed:Z

.field private mIsEnableKeepBrightness:Z

.field private mIsFlingAnim:Z

.field private mIsFromCamera:Z

.field private mIsFromCrossPicker:Z

.field private mIsFromMMS:Z

.field private mIsFromMyFiles:Z

.field private mIsFromShortCut:Z

.field private mIsFromThemeStore:Z

.field private mIsGifMode:Z

.field private mIsHiddenAlbum:Z

.field private mIsInViewMode:Z

.field private mIsMultiWindow:Z

.field private mIsNeedTabUI:Z

.field private mIsPhotoEditorLaunchedRequested:Z

.field private mIsPickLimitedFileSize:Ljava/lang/Boolean;

.field private mIsReCreateActivity:Z

.field private mIsRegisteredSmartViewMediator:Z

.field private mIsSearchMode:Z

.field private mIsShowingGooglePermissionDialog:Z

.field private mIsSlideAnim:Z

.field private mIsUpButtonVisible:Z

.field private mLastQueryText:Ljava/lang/String;

.field private mLaunchFromSetupWidzard:Z

.field private mLcdRect:Landroid/graphics/Rect;

.field private mNeedToShowCloudTipCard:Z

.field private mNeedToShowGoToUrlTipCard:Z

.field private mNeedToShowPictureFrameTipCard:Z

.field private mNeedToShowSecureFolderTipCard:Z

.field private mNeedToShowVideoAppTipCard:Z

.field private mNestingCallerAppName:Ljava/lang/String;

.field private mNewMP4FilePath:Ljava/lang/String;

.field private mPickLimitedFileSize:Ljava/lang/Long;

.field private mPreviousActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

.field private mPreviousBitmap:Landroid/graphics/Bitmap;

.field private final mPreviousInfo:[Ljava/lang/Object;

.field private mPreviousOverflowView:Landroid/view/View;

.field private mPreviousRotation:I

.field private mPreviousViewState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private mReloadOnResume:Z

.field private mResumeStateThroughActivityLifeCycle:Z

.field private mScrollDepot:Lcom/sec/samsung/gallery/view/common/ScrollDepot;

.field private mSearchText:Ljava/lang/String;

.field private mSetSpinnerLayoutChange:Z

.field private mStatusBarHeightFromWindowInset:I

.field private mSystemWindowInsetTop:I

.field private mTimePickerLayoutLevel:I

.field private mUpSideAlbumStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

.field private mUpdateRequired:Z

.field private mUseTabletGUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "bn"

    aput-object v3, v2, v0

    const-string/jumbo v3, "fa"

    aput-object v3, v2, v1

    const/4 v3, 0x3

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "km"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "kn"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ml"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "mr"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "my"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "ur"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "vi"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "or"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->TALL_CATEGORY_LANGUAGES:[Ljava/lang/String;

    sput-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    const-string/jumbo v2, ""

    sput-object v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sCurrentLocale:Ljava/lang/String;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->TIME_PICKER_DEF_LV:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE_AND_VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentMediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentViewModeType:Ljava/lang/Class;

    sget-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mReloadOnResume:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsSearchMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsUpButtonVisible:Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSearchText:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLastQueryText:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCParamValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLaunchFromSetupWidzard:Z

    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousViewState:Ljava/lang/Class;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousInfo:[Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIgnoreInvalidateOptionsMenu:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsCtrlPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromCamera:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromShortCut:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsEnableKeepBrightness:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromMyFiles:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromMMS:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromCrossPicker:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromThemeStore:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActivityTransitionVI:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUpdateRequired:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFlingAnim:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsSlideAnim:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mResumeStateThroughActivityLifeCycle:Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLcdRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsShowingGooglePermissionDialog:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsReCreateActivity:Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPickLimitedFileSize:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPickLimitedFileSize:Ljava/lang/Long;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsHiddenAlbum:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSetSpinnerLayoutChange:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsInViewMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsGifMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsCollageMode:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsNeedTabUI:Z

    iput v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mTimePickerLayoutLevel:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowSecureFolderTipCard:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowGoToUrlTipCard:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowCloudTipCard:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowPictureFrameTipCard:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowVideoAppTipCard:Z

    iput v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDispRotation:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsRegisteredSmartViewMediator:Z

    iput v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSystemWindowInsetTop:I

    iput v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mStatusBarHeightFromWindowInset:I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mEnableImageAnalysisDisclaimer:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStatusBarHeightFromWindowInset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mStatusBarHeightFromWindowInset:I

    return-void
.end method

.method static setsIsTallCategoryLanguage()V
    .locals 5

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sCurrentLocale:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->TALL_CATEGORY_LANGUAGES:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sCurrentLocale:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enabledViewSwitchVI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mEnableViewSwitchVI:Z

    return v0
.end method

.method public expandShrinkDualView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->expandShrinkDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V

    return-void
.end method

.method public expandShrinkDualView(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->expandShrinkDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;ZZ)V

    return-void
.end method

.method public getCollageMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsCollageMode:Z

    return v0
.end method

.method public getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    return-object v0
.end method

.method public getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentMediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    return-object v0
.end method

.method public getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTabTag()Lcom/sec/android/gallery3d/app/GalleryTabTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTabTagType(Z)Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTabTag()Lcom/sec/android/gallery3d/app/GalleryTabTag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->getCurrentTabTagType(Z)Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViewByType()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "viewByFilterTypes"

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getCurrentViewMode()Ljava/lang/Class;
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentViewModeType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDCCurrentParameterValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCParamValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDCNestingCallerAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNestingCallerAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCShareParam:Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDispRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDispRotation:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDispRotation:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDispRotation:I

    goto :goto_0
.end method

.method public getEnableImageAnalysisDisclaimer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mEnableImageAnalysisDisclaimer:Z

    return v0
.end method

.method public getGifMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsGifMode:Z

    return v0
.end method

.method public getHasQuickViewHistory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mHasQuickViewHistory:Z

    return v0
.end method

.method public getHiddenAlbumStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsHiddenAlbum:Z

    return v0
.end method

.method public getIsFlingAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFlingAnim:Z

    return v0
.end method

.method public getIsRegisteredSmartViewMediator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsRegisteredSmartViewMediator:Z

    return v0
.end method

.method public getIsSlideAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsSlideAnim:Z

    return v0
.end method

.method public getLastQueryText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLastQueryText:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLcdRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLcdRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLcdRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLcdRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNeedToShowCloudTipCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowCloudTipCard:Z

    return v0
.end method

.method public getNeedToShowGoToUrlTipCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowGoToUrlTipCard:Z

    return v0
.end method

.method public getNeedToShowPictureFrameTipCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowPictureFrameTipCard:Z

    return v0
.end method

.method public getNeedToShowSecureFolderTipCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowSecureFolderTipCard:Z

    return v0
.end method

.method public getNeedToShowVideoAppTipCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowVideoAppTipCard:Z

    return v0
.end method

.method public getNewMP4FilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNewMP4FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousActivityState()Lcom/sec/android/gallery3d/app/ActivityState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    return-object v0
.end method

.method public getPreviousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviousOverflowView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousOverflowView:Landroid/view/View;

    return-object v0
.end method

.method public getPreviousRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousRotation:I

    return v0
.end method

.method public getPreviousViewState()Ljava/lang/Class;
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousViewState:Ljava/lang/Class;

    return-object v0
.end method

.method public getReloadRequiredOnResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mReloadOnResume:Z

    return v0
.end method

.method public getResumeStateThroughActivityLifeCycle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mResumeStateThroughActivityLifeCycle:Z

    return v0
.end method

.method public getSATopScreenId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSpinnerLayoutChangeStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSetSpinnerLayoutChange:Z

    return v0
.end method

.method public getStatusBarHeightFromWindowInset()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mStatusBarHeightFromWindowInset:I

    return v0
.end method

.method public getTimePickerLayoutLevel()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mTimePickerLayoutLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->TIME_PICKER_DEF_LV:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mTimePickerLayoutLevel:I

    goto :goto_0
.end method

.method public getTimeSuggestionPickerLayoutLevel()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->TIME_PICKER_DEF_LV:I

    return v0
.end method

.method public getUpSideAlbumStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUpSideAlbumStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    return-object v0
.end method

.method public getUpdateRequiredForRemoveTag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUpdateRequired:Z

    return v0
.end method

.method public getViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mScrollDepot:Lcom/sec/samsung/gallery/view/common/ScrollDepot;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ScrollDepot;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ScrollDepot;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mScrollDepot:Lcom/sec/samsung/gallery/view/common/ScrollDepot;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mScrollDepot:Lcom/sec/samsung/gallery/view/common/ScrollDepot;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/ScrollDepot;->getViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ignoreInvalidateOptionsMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIgnoreInvalidateOptionsMenu:Z

    return v0
.end method

.method public isActiveMapView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActiveMapView:Z

    return v0
.end method

.method public isActiveMultiFormatShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiFormatShareActive:Z

    return v0
.end method

.method public isActivePrint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActivePrint:Z

    return v0
.end method

.method public isActivityTransitionVI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActivityTransitionVI:Z

    return v0
.end method

.method public isAlbumPickerMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "album-pick"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isCtrlPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsCtrlPressed:Z

    return v0
.end method

.method public isEnableKeepBrightness()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsEnableKeepBrightness:Z

    return v0
.end method

.method public isEventSecondViewMode(Landroid/content/Context;)Z
    .locals 3

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v2, :cond_1

    :cond_0
    instance-of v1, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEventViewMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsInViewMode:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFromCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromCamera:Z

    return v0
.end method

.method public isFromCrossPicker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromCrossPicker:Z

    return v0
.end method

.method public isFromMMS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromMMS:Z

    return v0
.end method

.method public isFromMyFiles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromMyFiles:Z

    return v0
.end method

.method public isFromShortCut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromShortCut:Z

    return v0
.end method

.method public isFromThemeStore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromThemeStore:Z

    return v0
.end method

.method public isLaunchFromSetupWidzard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLaunchFromSetupWidzard:Z

    return v0
.end method

.method public isMultiPickMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsMultiWindow:Z

    return v0
.end method

.method isNeedTabUI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsNeedTabUI:Z

    return v0
.end method

.method isPhotoEditorLaunchRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPhotoEditorLaunchedRequested:Z

    return v0
.end method

.method public isPickLimitedFileSize(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPickLimitedFileSize:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_pick-limited-file-size"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPickLimitedFileSize:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPickLimitedFileSize:Ljava/lang/Boolean;

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPickLimitedFileSize:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isPickMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReCreateActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsReCreateActivity:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsSearchMode:Z

    return v0
.end method

.method public isShowingGooglePermissionDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsShowingGooglePermissionDialog:Z

    return v0
.end method

.method public isSocialCloudViewMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportDeleteDialogFromMapView()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v3, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isSupportDeleteFromMapView()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isTabletPickerMode(Landroid/content/Intent;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->useTabletGUI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/util/StaticValues$Action;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUpButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsUpButtonVisible:Z

    return v0
.end method

.method public pickLimitedFileSize(Landroid/app/Activity;)J
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPickLimitedFileSize:Ljava/lang/Long;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pick-limited-file-size"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPickLimitedFileSize:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPickLimitedFileSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPickLimitedFileSize:Ljava/lang/Long;

    goto :goto_0
.end method

.method public popPreviousInfo(I)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousInfo:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousInfo:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    return-object v0
.end method

.method public pushPreviousInfo(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousInfo:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public resetDCShareParam()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCShareParam:Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCShareParam:Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->resetParameter()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCShareParam:Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    return-void
.end method

.method public setActiveMapView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActiveMapView:Z

    return-void
.end method

.method public setActivePrint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActivePrint:Z

    return-void
.end method

.method public setActivityTransitionVI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsActivityTransitionVI:Z

    return-void
.end method

.method public setCollageMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsCollageMode:Z

    return-void
.end method

.method public setCtrlPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsCtrlPressed:Z

    return-void
.end method

.method public setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentLaunchModeType:Lcom/sec/samsung/gallery/core/LaunchModeType;

    return-void
.end method

.method public setCurrentMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentMediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    return-void
.end method

.method public setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTabTag()Lcom/sec/android/gallery3d/app/GalleryTabTag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    return-void
.end method

.method public setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTabTag()Lcom/sec/android/gallery3d/app/GalleryTabTag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    return-void
.end method

.method public setCurrentViewByType(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    return-void
.end method

.method public setCurrentViewByType(IZ)V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "viewByFilterTypes"

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrenViewByType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setCurrentViewMode(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mCurrentViewModeType:Ljava/lang/Class;

    return-void
.end method

.method public setDCCurrentParameterValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCParamValue:Ljava/lang/String;

    return-void
.end method

.method public setDCNestingCallerAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNestingCallerAppName:Ljava/lang/String;

    return-void
.end method

.method public setDCShareParam(Lcom/samsung/android/devicecog/gallery/DCShareParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDCShareParam:Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    return-void
.end method

.method setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mDispRotation:I

    return-void
.end method

.method public setEnableImageAnalysisDisclaimer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mEnableImageAnalysisDisclaimer:Z

    return-void
.end method

.method public setEnableKeepBrightness(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsEnableKeepBrightness:Z

    return-void
.end method

.method public setEnableRotationCache(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDisplayRotation(I)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setFromCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromCamera:Z

    return-void
.end method

.method public setFromCrossPicker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromCrossPicker:Z

    return-void
.end method

.method public setFromMMS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromMMS:Z

    return-void
.end method

.method public setFromMyFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromMyFiles:Z

    return-void
.end method

.method public setFromShortCut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromShortCut:Z

    return-void
.end method

.method public setFromThemeStore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFromThemeStore:Z

    return-void
.end method

.method public setGifMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsGifMode:Z

    return-void
.end method

.method public setHasQuickViewHistory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mHasQuickViewHistory:Z

    return-void
.end method

.method public setHiddenAlbumTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsHiddenAlbum:Z

    return-void
.end method

.method public setIgnoreInvalidateOptionsMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIgnoreInvalidateOptionsMenu:Z

    return-void
.end method

.method public setIsFlingAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsFlingAnim:Z

    return-void
.end method

.method public setIsInViewMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsInViewMode:Z

    return-void
.end method

.method public setIsSlideAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsSlideAnim:Z

    return-void
.end method

.method public setLastQueryText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLastQueryText:Ljava/lang/String;

    return-void
.end method

.method public setLaunchFromSetupWidzard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLaunchFromSetupWidzard:Z

    return-void
.end method

.method setLcdRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mLcdRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setMultiFormatShareActive(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiFormatShareActive:Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNewMP4FilePath:Ljava/lang/String;

    return-void
.end method

.method public setMultiWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsMultiWindow:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsMultiWindow:Z

    :cond_0
    return-void
.end method

.method public setMultiWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsMultiWindow:Z

    return-void
.end method

.method public setNeedTabUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsNeedTabUI:Z

    return-void
.end method

.method public setNeedToShowCloudTipCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowCloudTipCard:Z

    return-void
.end method

.method public setNeedToShowGoToUrlTipCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowGoToUrlTipCard:Z

    return-void
.end method

.method public setNeedToShowPictureFrameTipCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowPictureFrameTipCard:Z

    return-void
.end method

.method public setNeedToShowSecureFolderTipCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowSecureFolderTipCard:Z

    return-void
.end method

.method public setNeedToShowVideoAppTipCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mNeedToShowVideoAppTipCard:Z

    return-void
.end method

.method public setPhotoEditorLaunchRequestStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsPhotoEditorLaunchedRequested:Z

    return-void
.end method

.method public setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    return-void
.end method

.method public setPreviousBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousRotation:I

    return-void
.end method

.method public setPreviousOverflowView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousOverflowView:Landroid/view/View;

    return-void
.end method

.method public setPreviousViewState(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mPreviousViewState:Ljava/lang/Class;

    return-void
.end method

.method setReCreateActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsReCreateActivity:Z

    return-void
.end method

.method public setRegisterSmartViewMediator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsRegisteredSmartViewMediator:Z

    return-void
.end method

.method public setReloadRequiredOnResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mReloadOnResume:Z

    return-void
.end method

.method setResumeStateThroughActivityLifeCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mResumeStateThroughActivityLifeCycle:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsSearchMode:Z

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public setShowingGooglePermissionDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsShowingGooglePermissionDialog:Z

    return-void
.end method

.method public setSpinnerLayoutChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSetSpinnerLayoutChange:Z

    return-void
.end method

.method setSystemWindowInsetTop(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSystemWindowInsetTop:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSystemWindowInsetTop:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSystemWindowInsetTop:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mSystemWindowInsetTop:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setStatusBarHeightFromWindowInset(I)V

    goto :goto_0
.end method

.method public setTimePickerLayoutLevel(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mTimePickerLayoutLevel:I

    return-void
.end method

.method public setUpButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mIsUpButtonVisible:Z

    return-void
.end method

.method public setUpSideAlbumStatus(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUpSideAlbumStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    return-void
.end method

.method public setUpdateRequiredForRemoveTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUpdateRequired:Z

    return-void
.end method

.method public setUseTabletGUI(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUseTabletGUI:Z

    return-void
.end method

.method public setViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;FI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mScrollDepot:Lcom/sec/samsung/gallery/view/common/ScrollDepot;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mScrollDepot:Lcom/sec/samsung/gallery/view/common/ScrollDepot;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/common/ScrollDepot;->setViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;FI)V

    goto :goto_0
.end method

.method setViewSwitchVI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mEnableViewSwitchVI:Z

    return-void
.end method

.method public useTabletGUI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->mUseTabletGUI:Z

    return v0
.end method
