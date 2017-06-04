.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.super Ljava/lang/Object;
.source "GlComposeBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewConfig"
.end annotation


# static fields
.field protected static final ENLARGE_ANIMATION_DURATION:I


# instance fields
.field public mAlbumList:Z

.field public mCheckBoxExpansionAlwaysVisible:Z

.field public mEdgeMarginBottom:I

.field public mEnlargeDuration:I

.field public mExtraMarginBottom:I

.field public mExtraMarginLeft:I

.field public mExtraMarginRight:I

.field public mExtraMarginTop:I

.field public mHideIconMinLevel:Z

.field public mIncludeTabView:Z

.field public mInitialLevel:I

.field public mIsAlbumView:Z

.field public mIsAllView:Z

.field public mIsCardTypeView:Z

.field public mIsCategoryView:Z

.field public mIsChannelPhotoView:Z

.field public mIsDexMode:Z

.field public mIsEventView:Z

.field public mIsPeopleView:Z

.field public mIsRecycleBinView:Z

.field public mIsSearchView:Z

.field public mIsSplitViewExpanded:Z

.field public mItemSizeScale:F

.field public mLandRatio:F

.field public mMaxLevel:I

.field public mMaxObject:I

.field public mMinLevel:I

.field public mNeedShowSharedFriendsBar:Z

.field public mNewAlbumHeaderFocused:Z

.field public mNoEventType:I

.field public mNoMediaItem:Z

.field public mNoTitle:Z

.field public mPortRatio:F

.field public mPosCtrl:[Ljava/lang/Object;

.field public mPrevCenterObject:I

.field public mPrevScroll:F

.field public mRemoveFastScrollShadow:Z

.field public mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

.field public mSuggestionPickerMode:Z

.field public mTabPos:I

.field public mTopGroupSearchTitle:Z

.field public mTopGroupTitle:Z

.field public mTypeViewSwitchAnim:I

.field public mUseChannelNoti:Z

.field public mUseEnlargeAnim:Z

.field public mUseFastScrollPopup:Z

.field public mUseGoToTopButton:Z

.field public mUseGroupSelect:Z

.field public mUseGroupTitle:Z

.field public mUseItemSelect:Z

.field public mUseLayoutChange:Z

.field public mUseListAlbumView:Z

.field public mUsePenSelectInPickMode:Z

.field public mUsePhotoCover:Z

.field public mUseQuickScroll:Z

.field public mUseSearchFaceObj:Z

.field public mUseSmartClustering:Z

.field public mUseTimeLineSplit:Z

.field public mUseTipCard:Z

.field public mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->ENLARGE_ANIMATION_DURATION:I

    return-void

    :cond_0
    const/16 v0, 0x258

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mEnlargeDuration:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTopGroupSearchTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mHideIconMinLevel:Z

    const/16 v0, 0xd0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxObject:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseFastScrollPopup:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mRemoveFastScrollShadow:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGoToTopButton:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginLeft:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginRight:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginTop:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginBottom:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mEdgeMarginBottom:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCardTypeView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsPeopleView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAllView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNeedShowSharedFriendsBar:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTabPos:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoEventType:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoMediaItem:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mSuggestionPickerMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSearchFaceObj:Z

    return-void
.end method


# virtual methods
.method public isTimeViewStateConfig()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
