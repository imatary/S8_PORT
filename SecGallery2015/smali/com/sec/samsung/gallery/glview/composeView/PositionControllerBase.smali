.class public abstract Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;,
        Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;
    }
.end annotation


# static fields
.field static final CHK_VISIBILILY_ANIM:I = 0x2

.field private static final CHK_VISIBILITY_MODE:I = 0x0

.field private static final CHK_VISIBILITY_TYPE:I = 0x1

.field public static final COMP_OBJ_ACCEPT:I = 0xa

.field static final COMP_OBJ_BG:I = 0x5

.field static final COMP_OBJ_BORDER:I = 0x9

.field static final COMP_OBJ_DECLINE:I = 0xb

.field private static final COMP_OBJ_GRPCHCK:I = 0x3

.field public static final COMP_OBJ_HIGHLIGHT_VIDEO:I = 0x6

.field static final COMP_OBJ_LOCATION:I = 0x8

.field static final COMP_OBJ_MAP_VIEW:I = 0x7

.field static final COMP_OBJ_MORE_ALBUMS:I = 0xc

.field static final COMP_OBJ_THUMBNAIL:I = 0x1

.field private static final COMP_OBJ_TITLE:I = 0x2

.field private static final FEATURE_IS_J2MODEL:Z

.field private static final FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

.field static final FEATURE_USE_MORE_ALBUM:Z

.field private static final FLAG_ALL:I = 0x1

.field private static final FLAG_SET_SRC:I = 0x2

.field private static final FLAG_SET_TGT:I = 0x4

.field private static final FLAG_SKIP_VISIBLE_CHK:I = 0x8

.field private static final FeatureIsFolderModel:Z

.field private static final FeatureIsUncheckedBoxAlwaysVisible:Z

.field static final FeatureUseGraceAlbumViewGUI:Z

.field private static final IsNOS:Z

.field private static final IsTablet:Z

.field private static final NEED_DIM_EFFECT:Z

.field private static final TAG:Ljava/lang/String; = "PositionControllerBase"

.field private static final USE_DEGAS2_DECOR:Z

.field static final USE_GRACE_DECOR:Z

.field private static final USE_SCLOUD:Z

.field static mCheckBoxSourceAlpha:F

.field static mCheckBoxTargetAlpha:F

.field static mCheckedBoxSourceColor:I

.field static mCheckedBoxTartgetColor:I

.field static mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field static mUnCheckedBoxSourceColor:I

.field static mUnCheckedBoxTartgetColor:I


# instance fields
.field mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

.field mAlbumRoundRadius:F

.field mAlbumTextureRadiusRatio:F

.field mAlbumTitleTextMarginLeftPixel:I

.field private mAlwaysActiveGroupObjectIndex:I

.field private mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private mCheckH:F

.field private mCheckHMargin:F

.field private mCheckHMarginPixel:I

.field mCheckVMargin:F

.field private mCheckVMarginPixel:I

.field mCheckW:F

.field private mCheckboxHeightPixel:I

.field private mCheckboxWidthPixel:I

.field mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field mCreateBtnGap:I

.field mDisplaySelectedCount:Z

.field mEdgeExtraMarginPixel:F

.field mEventItemPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandButtonHeightPixel:I

.field private mExpandButtonWidthPixel:I

.field mExpandRatio:F

.field private mExpansionH:F

.field private mExpansionHMargin:F

.field private mExpansionHMarginPixel:I

.field private mExpansionVMargin:F

.field private mExpansionVMarginPixel:I

.field private mExpansionW:F

.field mExtraBtm:F

.field mExtraMarginTopPixel:I

.field mExtraTop:F

.field mFocusChangedFlag:Z

.field mFocusIndex:I

.field mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

.field private mGroupCheckBoxBorderColor:I

.field private mGroupCheckBoxBorderWidth:I

.field mGroupCount:I

.field mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

.field mGroupLineCount:I

.field mGroupVGap:F

.field mGroupVGapPixel:I

.field public mGrpActiveEnd:I

.field public mGrpActiveStart:I

.field mGrpCheckHMargin:F

.field private mGrpCheckHMarginPixel:I

.field mGrpContentEnd:I

.field mGrpContentStart:I

.field public mGrpVisibleEnd:I

.field public mGrpVisibleStart:I

.field mIsDualScreen:Z

.field mIsEnableAlbumTitleFadeAnim:Z

.field private mIsExpanedExtraRange:Z

.field mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

.field mItemGapH:F

.field mItemGapHPixel:I

.field mItemGapW:F

.field mItemGapWPixel:I

.field mItemH:F

.field mItemSx:F

.field mItemSy:F

.field mItemW:F

.field private mLastScrollEvent:J

.field mLevel:I

.field private mListAlbumMargLeft:F

.field mListAlbumMargRight:F

.field mListAlbumThumbMarg:F

.field mListAlbumThumbMarginPixel:I

.field mListAlbumTitleMargLeft:F

.field mListH:F

.field mMargBtm:F

.field mMargLeft:F

.field mMargRight:F

.field mMargTop:F

.field mMarginBottomPixel:I

.field mMarginLeftPixel:I

.field mMarginRightPixel:I

.field mMarginTopForExtraObject:F

.field mMarginTopPixel:I

.field mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

.field mNewAlbum:Z

.field public mPhotoLineCount:I

.field mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

.field private mPreviousScrollY:F

.field mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field mReorderIconH:F

.field private mReorderIconHeightPixel:I

.field mReorderIconMargin:F

.field private mReorderIconMarginPixel:I

.field mReorderIconW:F

.field private mReorderIconWidthPixel:I

.field mResource:Landroid/content/res/Resources;

.field mScrollBottomMargin:F

.field mScrollBottomMarginPixel:I

.field mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

.field mScrollSideMargin:F

.field mScrollSideMarginPixel:I

.field mScrollThumbHeight:F

.field mScrollThumbHeightPixel:I

.field mScrollThumbShadowHeight:F

.field public mScrollable:F

.field public mScrollableMax:F

.field mSearchTitleTextMarginLeft:F

.field mSearchTitleTextMarginLeftPixel:I

.field mSeekThumbBitmap:Landroid/graphics/Bitmap;

.field mSelectionModeExtMarginPixel:I

.field mSoftKeyHeightPixel:I

.field mSpaceHeight:F

.field mSpaceWidth:F

.field private final mTempRect:Landroid/graphics/RectF;

.field private mThumbStrokeColor:I

.field private mThumbStrokeWidth:I

.field mTitleCanvsH:I

.field mTitleCanvsW:I

.field mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

.field mTitleH:F

.field mTitleHeightPixel:I

.field mTitleTextMarginBottom:F

.field mTitleTextMarginBottomPixel:I

.field mTitleTextMarginLeft:F

.field mTitleTextMarginLeftPixel:I

.field mTitleTextMarginTop:F

.field mTitleTextMarginTopPixel:I

.field mTitleW:F

.field mTitleWidthPixel:I

.field mValidH:F

.field mValidW:F

.field mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

.field mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureIsFolderModel:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUncheckedBoxAlwaysVisible:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureIsUncheckedBoxAlwaysVisible:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsTablet:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsNOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureUseGraceAlbumViewGUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_GRACE_DECOR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDegas2DecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_DEGAS2_DECOR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_SCLOUD:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsJ2Model:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_IS_J2MODEL:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsNOS:Z

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsTablet:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->NEED_DIM_EFFECT:Z

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginBottomPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraMarginTopPixel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    new-array v0, v5, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mDisplaySelectedCount:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNewAlbum:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTempRect:Landroid/graphics/RectF;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMarginPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMarginPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMarginPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMarginPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMarginPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMarginPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginTopPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginBottomPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeftPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSearchTitleTextMarginLeftPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumTitleTextMarginLeftPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumThumbMarginPixel:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSelectionModeExtMarginPixel:I

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mFocusChangedFlag:Z

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsDualScreen:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsExpanedExtraRange:Z

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mFocusIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsEnableAlbumTitleFadeAnim:Z

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPreviousScrollY:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLastScrollEvent:J

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsTablet:Z

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_IS_J2MODEL:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->NEED_DIM_EFFECT:Z

    return v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureIsUncheckedBoxAlwaysVisible:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureIsFolderModel:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeWidth:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeColor:I

    return v0
.end method

.method static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsNOS:Z

    return v0
.end method

.method static synthetic access$3900()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    return v0
.end method

.method static synthetic access$4000(Z)I
    .locals 1

    invoke-static {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getCheckBoxColor(Z)I

    move-result v0

    return v0
.end method

.method private activeGroupCheckObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZZ)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMargin:F

    sub-float v0, v2, v3

    :goto_0
    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    if-eqz p4, :cond_2

    invoke-virtual {p2, v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    invoke-virtual {p2, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetSize(FF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMargin:F

    add-float v0, v2, v3

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateGroupCheckBox(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    invoke-virtual {p2, v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    invoke-virtual {p2, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceSize(FF)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateGroupCheckBox(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    invoke-virtual {p2, v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    invoke-virtual {p2, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_1
.end method

.method private activeObjectRange(IIII)V
    .locals 43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v22, v5, p1

    const/4 v6, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    move-object/from16 v30, v0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v0, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    if-lez p4, :cond_2

    const/16 v20, 0x1

    :goto_0
    and-int/lit8 v5, p4, 0x1

    if-lez v5, :cond_3

    const/16 v38, 0x1

    :goto_1
    and-int/lit8 v5, p4, 0x4

    if-lez v5, :cond_4

    const/16 v33, 0x1

    :goto_2
    and-int/lit8 v5, p4, 0x2

    if-lez v5, :cond_5

    const/16 v32, 0x1

    :goto_3
    move/from16 v37, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v5, :cond_0

    if-eqz v33, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v37

    :cond_0
    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-nez v26, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move/from16 v0, v37

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v26

    if-nez v26, :cond_6

    const-string/jumbo v5, "PositionControllerBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "activeObjectRange grpObj == null : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    const/16 v38, 0x0

    goto :goto_1

    :cond_4
    const/16 v33, 0x0

    goto :goto_2

    :cond_5
    const/16 v32, 0x0

    goto :goto_3

    :cond_6
    const/16 v39, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    move/from16 v3, v33

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setGrpObjPos(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;IZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->activeExtraObjectRange(ZZ)V

    if-eqz v39, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTempRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidW:F

    move/from16 v41, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v42, v0

    move/from16 v0, v42

    neg-float v0, v0

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v5, v7, v11, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTempRect:Landroid/graphics/RectF;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setBorderRect(Landroid/graphics/RectF;)V

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->activeGroupCheckObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZZ)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->activeTitleObjectRange(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZZ)V

    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move/from16 v8, p2

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;)I

    move-result v5

    add-int v5, v5, p2

    move/from16 v0, p3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v8, v5, :cond_2f

    move/from16 v0, p1

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v5, :cond_8

    if-eqz v33, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v29

    :cond_8
    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move/from16 v0, v29

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v6

    if-nez v6, :cond_b

    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    move/from16 v39, v20

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v7, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->addToUpdateQueue(II)V

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    const/16 v39, 0x1

    const/4 v12, 0x1

    :goto_8
    if-eqz v39, :cond_9

    if-eqz v30, :cond_9

    if-eqz v31, :cond_9

    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    aget v5, v30, v8

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    aget v7, v17, v8

    sub-float v40, v5, v7

    aget v9, v31, v8

    aget v10, v30, v8

    iget v5, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v5, v5

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v19, v0

    iget-object v13, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v15, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v28, v0

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v35, v0

    iget-object v5, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_10

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    :goto_9
    if-eqz v33, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupAbsX(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupAbsY(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v25

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->removeObjInGroup(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    aget v5, v16, v8

    add-float v5, v5, v24

    add-float v7, v25, v40

    const/high16 v11, -0x3bb80000    # -800.0f

    invoke-virtual {v6, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetPos(FFF)V

    :goto_a
    invoke-virtual {v6, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetSize(FF)V

    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetSize(FF)V

    :cond_c
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setSrcTgtTexCoord(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;IIFFZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_14

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_12

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    add-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargRight:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v7

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    :goto_b
    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v7, 0x7f100263

    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckedBoxTartgetColor:I

    :goto_c
    const/4 v5, 0x0

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckBoxTargetAlpha:F

    :goto_d
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v15, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetSize(FF)V

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    :cond_d
    :goto_e
    if-eqz v28, :cond_9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    goto/16 :goto_7

    :cond_e
    if-eqz v38, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    :cond_f
    move/from16 v39, v20

    goto/16 :goto_8

    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_9

    :cond_11
    aget v5, v16, v8

    const/4 v7, 0x0

    move/from16 v0, v40

    invoke-virtual {v6, v5, v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetPos(FFF)V

    goto/16 :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    sub-float v5, v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    sub-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v7

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    goto/16 :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v7, 0x7f100261

    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mUnCheckedBoxTartgetColor:I

    goto/16 :goto_c

    :cond_14
    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_15

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    add-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    sub-float v5, v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    sub-float v7, v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    sub-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v7, 0x7f100264

    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckedBoxTartgetColor:I

    sget v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckedBoxTartgetColor:I

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mUnCheckedBoxTartgetColor:I

    const/high16 v5, 0x437f0000    # 255.0f

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckBoxTargetAlpha:F

    goto/16 :goto_d

    :cond_15
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    sub-float v5, v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    sub-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    sub-float v7, v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    sub-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    goto :goto_f

    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    goto/16 :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v15, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetSize(FF)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v7, v10

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    goto/16 :goto_e

    :cond_18
    if-eqz v32, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupAbsX(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupAbsY(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v25

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->removeObjInGroup(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    aget v5, v16, v8

    add-float v5, v5, v24

    add-float v7, v25, v40

    const/high16 v11, -0x3bb80000    # -800.0f

    invoke-virtual {v6, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourcePos(FFF)V

    :goto_10
    invoke-virtual {v6, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourceSize(FF)V

    if-eqz v18, :cond_19

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceSize(FF)V

    :cond_19
    const/4 v11, 0x1

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setSrcTgtTexCoord(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;IIFFZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_21

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_1f

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    add-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargRight:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v7

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    :goto_11
    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v7, 0x7f100263

    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckedBoxSourceColor:I

    :goto_12
    const/4 v5, 0x0

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckBoxSourceAlpha:F

    :goto_13
    if-eqz v15, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v15, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceSize(FF)V

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    :cond_1a
    :goto_14
    if-eqz v28, :cond_1b

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    :cond_1b
    :goto_15
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    invoke-virtual {v13, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconH:F

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    if-eqz v18, :cond_1c

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_1c
    if-eqz v28, :cond_1d

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->thumbActivated(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    :cond_1d
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getExpandedAlbumTitle()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    add-float/2addr v7, v11

    invoke-virtual {v15, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto/16 :goto_7

    :cond_1e
    aget v5, v16, v8

    const/4 v7, 0x0

    move/from16 v0, v40

    invoke-virtual {v6, v5, v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourcePos(FFF)V

    goto/16 :goto_10

    :cond_1f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    sub-float v5, v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    sub-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v7

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    goto/16 :goto_11

    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v7, 0x7f100261

    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mUnCheckedBoxSourceColor:I

    goto/16 :goto_12

    :cond_21
    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_22

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    add-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    sub-float v5, v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    sub-float v7, v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    sub-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    :goto_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v7, 0x7f100264

    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckedBoxSourceColor:I

    sget v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckedBoxSourceColor:I

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mUnCheckedBoxSourceColor:I

    const/high16 v5, 0x437f0000    # 255.0f

    sput v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckBoxSourceAlpha:F

    goto/16 :goto_13

    :cond_22
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    sub-float v5, v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    sub-float/2addr v5, v7

    neg-float v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    neg-float v5, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    sub-float v7, v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    sub-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    goto :goto_16

    :cond_23
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    goto/16 :goto_14

    :cond_24
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v15, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceSize(FF)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v7, v10

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    goto/16 :goto_14

    :cond_25
    aget v5, v16, v8

    const/4 v7, 0x0

    move/from16 v0, v40

    invoke-virtual {v6, v5, v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setPos(FFF)V

    invoke-virtual {v6, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    if-eqz v18, :cond_26

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceSize(FF)V

    :cond_26
    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_29

    aget v5, v31, v8

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    add-float/2addr v5, v7

    aget v7, v30, v8

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_28

    aget v5, v31, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargRight:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v7

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_17
    if-eqz v15, :cond_27

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getExpandedAlbumTitle()Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :cond_27
    :goto_18
    if-eqz v28, :cond_1b

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_15

    :cond_28
    aget v5, v31, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    sub-float/2addr v5, v7

    aget v7, v30, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    sub-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_17

    :cond_29
    aget v5, v31, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    sub-float/2addr v5, v7

    aget v7, v30, v8

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    add-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_2a

    aget v5, v31, v8

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v7

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_17

    :cond_2a
    aget v5, v31, v8

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    add-float/2addr v5, v7

    aget v7, v30, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    sub-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_17

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v5

    if-eqz v5, :cond_2d

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_18

    :cond_2c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    sub-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_18

    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v7, v10

    neg-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v5, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_18

    :cond_2e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v15, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto/16 :goto_7

    :cond_2f
    if-eqz v12, :cond_31

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_30

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    :cond_30
    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-eqz v5, :cond_31

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    :cond_31
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v5, :cond_1

    const/16 v5, 0x9

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    goto/16 :goto_4
.end method

.method private activeTitleObjectRange(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZZ)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_3

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMargin:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    :goto_0
    sub-float v0, v3, v2

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v2

    sub-float/2addr v0, v2

    :cond_0
    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    if-eqz p4, :cond_5

    invoke-virtual {p2, v0, v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {p2, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetSize(FF)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeft:F

    goto :goto_0

    :cond_3
    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMargin:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    :goto_3
    add-float v0, v3, v2

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeft:F

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    invoke-interface {v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    invoke-virtual {p2, v0, v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {p2, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceSize(FF)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    invoke-interface {v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    invoke-virtual {p2, v0, v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {p2, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_2
.end method

.method private static getCheckBoxColor(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f100264

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f100262

    goto :goto_0
.end method

.method private getGroupAbsX(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSx:F

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getGroupAbsY(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSy:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getGroupRatio(I)F
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v3, p1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v3, v4

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v3, v4

    iget v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PositionControllerBase"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    return-object v0
.end method

.method private playScrollSound()V
    .locals 12

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLastScrollEvent:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPreviousScrollY:F

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpl-double v5, v6, v10

    if-lez v5, :cond_0

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLastScrollEvent:J

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPreviousScrollY:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v1, v5, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v8, v1

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->setSoundRate(F)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playScrollSound()V

    :cond_0
    return-void
.end method

.method private removeObjInGroup(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setReuseObj(Z)V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    return-void
.end method

.method private setGrpObjPos(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;IZZ)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v6, v0, p2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSx:F

    iget v1, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    add-float v7, v0, v1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSy:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v0, v1

    iget v1, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float v5, v0, v1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setMoreAlbumComponentPos(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;IZZFLcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)V

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p1, v7, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSourceAlpha(F)V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setVisibility(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1, v7, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetAlpha(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setVisibility(Z)V

    goto :goto_1
.end method

.method private setMarginLeftRight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    goto :goto_2
.end method

.method private setMoreAlbumComponentPos(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;IZZFLcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getAlbumDividerY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_2

    if-eqz p4, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    sub-float v3, p5, v0

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setSourcePos(FFF)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isHideAlbumMode()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibility(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isEmptyUpSideAlbum()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v3, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setTargetPos(FFF)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibility(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v3

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mAlbumCount:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v2

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b0321

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v3

    add-float v1, v2, v3

    if-eqz p3, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v2

    add-float v3, p5, v1

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setTargetPos(FFF)V

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibility(Z)V

    :cond_4
    return-void

    :cond_5
    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    sub-float v3, p5, v0

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setTargetPos(FFF)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    sub-float v3, p5, v0

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    goto/16 :goto_0

    :cond_7
    if-eqz p4, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v3, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setSourcePos(FFF)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v3, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v3, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v0

    iget v4, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGap:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setTargetPos(FFF)V

    goto/16 :goto_1

    :cond_a
    if-eqz p4, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v3, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v0

    iget v4, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGap:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setSourcePos(FFF)V

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v3, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v0

    iget v4, p6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGap:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    goto/16 :goto_1

    :cond_c
    if-eqz p4, :cond_d

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v2

    add-float v3, p5, v1

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setSourcePos(FFF)V

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v2

    add-float v3, p5, v1

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setPos(FFF)V

    goto/16 :goto_2
.end method

.method private setSrcTgtTexCoord(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;IIFFZ)V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkUseTextureCoordinationOnScale()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v2, :cond_2

    if-nez p6, :cond_2

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result p2

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result p3

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iput p5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iput p4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isDynamicLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2, p2, p3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    :cond_4
    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    if-eqz p6, :cond_5

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceTexCoords(FFFF)V

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetTexCoords(FFFF)V

    goto :goto_0
.end method

.method private setVisibleObject(III)V
    .locals 24

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v7

    and-int/lit8 v21, p3, 0x8

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v21

    add-int/lit8 v13, v21, -0x1

    :goto_0
    if-ltz v13, :cond_a

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v19, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    if-gez v21, :cond_3

    const-string/jumbo v21, "PositionControllerBase"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setVisibleObject continue! obj.mIndex:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v21, "PositionControllerBase"

    invoke-virtual {v6}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v17

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    :cond_4
    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    move/from16 v4, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_5

    if-gez v4, :cond_9

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-object v10, v0

    :cond_6
    if-eqz v10, :cond_7

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->checkAlwaysActiveGroupObjectIndexForAlbumView(I)Z

    move-result v21

    if-nez v21, :cond_0

    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    if-lt v0, v1, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    move/from16 v0, v18

    if-gt v5, v0, :cond_0

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->thumbDeactivate(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->inActivateObject(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    if-eqz v10, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->remove(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_a
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v21

    add-int/lit8 v13, v21, -0x1

    :goto_3
    if-ltz v13, :cond_e

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_b

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v21

    move/from16 v0, v21

    if-le v0, v7, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEventItemPositions:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEventItemPositions:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    if-eqz v16, :cond_c

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->inActivateGroup(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V

    :cond_d
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v15

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v9, :cond_2

    if-ltz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v8, v21, v9

    sget-boolean v21, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v21, v0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibility(Z)V

    :cond_f
    sget-boolean v21, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibility(Z)V

    :cond_10
    if-ne v9, v7, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v15, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->activeObjectRange(IIII)V

    :goto_4
    add-int/lit8 v12, v9, 0x1

    :goto_5
    if-ge v12, v7, :cond_2

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->activeObjectRange(IIII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_11
    iget v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p3

    invoke-direct {v0, v9, v15, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->activeObjectRange(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p3

    invoke-direct {v0, v7, v1, v14, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->activeObjectRange(IIII)V

    goto :goto_4
.end method

.method private setVisibleObjectPosition()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSx:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    sget-boolean v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v8, :cond_1

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v8

    if-gez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v9

    aget-object v3, v8, v9

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSy:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v8, v9

    iget v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float v2, v8, v9

    sget-boolean v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getAlbumDividerY()F

    move-result v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isEmptyUpSideAlbum()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v9, v2

    sub-float/2addr v9, v0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    add-float/2addr v9, v10

    invoke-virtual {v8, v11, v9, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v8, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibility(Z)V

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v8, :cond_5

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    sub-float v9, v2, v0

    invoke-virtual {v8, v11, v9, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v8, v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v9

    sub-int/2addr v8, v9

    if-gtz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isHideAlbumMode()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v9, v9

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v8, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibility(Z)V

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v9

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mAlbumCount:I

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v8

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b0321

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v9

    add-float v7, v8, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v8

    add-float v9, v2, v7

    invoke-virtual {v8, v11, v9, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setPos(FFF)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibility(Z)V

    :cond_6
    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    add-float/2addr v8, v1

    invoke-virtual {v4, v8, v2, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPos(FFF)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v9, v2

    sub-float/2addr v9, v0

    iget v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGap:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v9, v10

    invoke-virtual {v8, v11, v9, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    goto/16 :goto_1
.end method

.method private updateGroupCheckBox(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCurrentState(II)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    return-void
.end method

.method protected applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setThumbObjectCanvas(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_SCLOUD:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v2, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    iget v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->drawCloudIcon(Lcom/sec/android/gallery3d/glcore/GlView;II)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_2
    iget-object v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTexCoords(FFFF)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget-wide v2, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDateTakenInMs:J

    iput-wide v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDateTakenInMs:J

    iget v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_1
    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_4
    :goto_2
    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_5
    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDimState(Z)V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoundRadius(F)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_3
    iget-boolean v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDisableForDrm:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDimState(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_1

    :cond_9
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_1

    :cond_a
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_2

    :cond_b
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_3
.end method

.method checkAlwaysActiveGroupObjectIndex(I)Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkAlwaysActiveGroupObjectIndexForAlbumView(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convX(F)F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public convX(I)F
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public convY(I)F
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method expandExtraRange()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsExpanedExtraRange:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargBtm:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraBtm:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraTop:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsExpanedExtraRange:Z

    goto :goto_0
.end method

.method fitToLine(I)V
    .locals 0

    return-void
.end method

.method freeGlObjects()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->access$500(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->access$600(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;)V

    return-void
.end method

.method getActiveGroup()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    return-object v0
.end method

.method getActiveObject()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    return-object v0
.end method

.method getAlbumDividerY()F
    .locals 6

    const v5, 0x7f0b032d

    const v4, 0x7f0b032b

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0313

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v2

    div-float/2addr v2, v3

    add-float v0, v1, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0324

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v2

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method getCanvasManager()Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    return-object v0
.end method

.method getCenteredScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v0, p1, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto :goto_0
.end method

.method public getChangeGroupDY(II)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChangeGroupPosition(IILcom/sec/android/gallery3d/glcore/GlPos;)V
    .locals 0

    return-void
.end method

.method public getFocusedGroupIndex(F)I
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupRatio(I)F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getFocusedObject(II)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    return-object v0
.end method

.method getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-nez v9, :cond_1

    move-object v3, v8

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v4, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/high16 v5, -0x40800000    # -1.0f

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->checkPosIn(II)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    move-object v3, v8

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_8

    :try_start_0
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v3, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getProxity(II)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_7

    cmpg-float v9, v2, v5

    if-gez v9, :cond_5

    :cond_7
    move v5, v2

    move-object v6, v3

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v9, "PositionControllerBase"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    goto :goto_0

    :cond_8
    move-object v3, v6

    goto :goto_0
.end method

.method getGroupObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    return-object v0
.end method

.method public getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V
    .locals 0

    return-void
.end method

.method getInactiveGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getInactiveObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInitScrollForShirnk(I)F
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    sub-float v4, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupTitle:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginTop:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginBottom:F

    add-float/2addr v3, v5

    :goto_0
    sub-float v0, v4, v3

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginTop:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginBottom:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    :goto_1
    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    add-float v3, v1, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    sub-float/2addr v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method getItemCodeBySequential(I)I
    .locals 6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/2addr v0, v5

    move v1, v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    sub-int v5, v0, v5

    sub-int v4, p1, v5

    if-le v0, p1, :cond_1

    :cond_0
    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v5

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method getMarginBtm()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargBtm:F

    return v0
.end method

.method public getMarginTop()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopForExtraObject:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getNewAlbumDividerPosition()Lcom/sec/android/gallery3d/glcore/GlPos;
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v4, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_1

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v7

    if-gez v7, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v8

    aget-object v2, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSy:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v7, v8

    iget v8, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sub-float v1, v7, v8

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getAlbumDividerY()F

    move-result v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isEmptyUpSideAlbum()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v7

    if-nez v7, :cond_4

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v7, v1

    sub-float/2addr v7, v0

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    add-float/2addr v7, v8

    invoke-virtual {v6, v9, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlPos;->set(FFF)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v7, v1

    sub-float/2addr v7, v0

    iget v8, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGap:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    add-float/2addr v7, v8

    invoke-virtual {v6, v9, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlPos;->set(FFF)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_2

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    sub-float v7, v1, v0

    invoke-virtual {v6, v9, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlPos;->set(FFF)V

    goto :goto_1
.end method

.method getNotificationHeight()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isAlbumPickerMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNewChannelCount(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v0
.end method

.method public getScrollForIndex(I)F
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initScrollConverter()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-interface {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;->getScrollFromIndex(I[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v0

    return v0
.end method

.method getSequentialIndex(I)I
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v5

    if-lez v1, :cond_2

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    if-lt v0, v1, :cond_0

    const-string/jumbo v5, "PositionControllerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSequentialIndex() called. albumIndex ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], photoIndex ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], current groupCount ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, -0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    return v4
.end method

.method getStrokeColor()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_DEGAS2_DECOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v1, 0x7f100220

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v1, 0x7f10021f

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method getTopObject()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-nez v7, :cond_1

    move-object v4, v6

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_2

    move-object v4, v6

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_0

    :cond_3
    iget v1, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    add-int/lit8 v0, v5, -0x1

    :goto_1
    const/4 v6, 0x1

    if-lt v0, v6, :cond_0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v2, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget v6, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    if-ge v6, v1, :cond_4

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move-object v4, v2

    goto :goto_2
.end method

.method getTotalHeight()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getValidScroll(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto :goto_0
.end method

.method public getVisibleScrollDelta(F)F
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v0, p1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    add-float v0, v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public init(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLevel:I

    return-void
.end method

.method initComponents()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initTitleDecorator()V

    return-void
.end method

.method initControlCommon(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    return-object v0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 5

    const v4, 0x7f0b0311

    const v3, 0x7f0b00f2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$400(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mResource:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckboxWidthPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckboxHeightPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMarginPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMarginPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b01de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMarginPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconWidthPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconHeightPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMarginPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandButtonWidthPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandButtonHeightPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b073d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMarginPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b073e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMarginPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b01da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginBottomPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b01db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginLeftPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b01dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginRightPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGapPixel:I

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleHeightPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemGapWPixel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemGapHPixel:I

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_GRACE_DECOR:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_DEGAS2_DECOR:Z

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeWidth:I

    :goto_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getStrokeColor()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeColor:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0a0505

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandRatio:F

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCPUMinFreq1GHz:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    :goto_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-gt v1, v0, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandRatio:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandRatio:F

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsDualScreen:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0a04fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumTextureRadiusRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCheckBoxBorderWidth:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v2, 0x7f100020

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCheckBoxBorderColor:I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeWidth:I

    goto/16 :goto_3

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    add-int/lit8 v0, v1, 0x1

    goto :goto_4
.end method

.method initScrollConverter()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/DefaultScrollConverter;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/DefaultScrollConverter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

    return-void
.end method

.method initTitleDecorator()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    return-void
.end method

.method public interpolateVisibleObjectPosition(F)V
    .locals 14

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v6, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_7

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->moveToLast()V

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    if-eqz v6, :cond_0

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v10, :cond_1

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_1
    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_2
    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsEnableAlbumTitleFadeAnim:Z

    if-eqz v10, :cond_5

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x3e99999a    # 0.3f

    cmpg-float v10, p1, v10

    if-gez v10, :cond_4

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v12, p1

    const/high16 v13, 0x41200000    # 10.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x40400000    # 3.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_1

    :cond_5
    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsW:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsH:I

    invoke-virtual {v2, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    :goto_2
    iget-object v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v10

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsH:I

    invoke-virtual {v2, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v4, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_a

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    iget-object v1, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_8

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_8
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->interpolateVisibleExtraObjectPosition(F)V

    sget-boolean v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v10, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_b
    return-void
.end method

.method public isDynamicLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isFocusChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mFocusChangedFlag:Z

    return v0
.end method

.method isHideAlbumMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListAlbumLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isPlusIconAlbum(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRealRatioLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract moveTo(I)Z
.end method

.method protected abstract onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
.end method

.method public rConvX(F)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method public rConvY(F)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method public abstract resetAttributes(Z)V
.end method

.method resetCount()V
    .locals 6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$700(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$800(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    if-eq v5, v2, :cond_1

    :cond_0
    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    new-array v5, v2, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v5, v4

    aget-object v0, v1, v4

    if-nez v3, :cond_2

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aput-object v3, v5, v4

    :cond_2
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;->access$900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method resetEventItemPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEventItemPositions:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEventItemPositions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method resetGrpRange()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    return-void
.end method

.method resetNavigationBarPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V
    .locals 0

    sput-object p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    return-void
.end method

.method public abstract resetPosition()V
.end method

.method resetValues(Z)V
    .locals 7

    const/4 v2, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const v5, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean p1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewWidth:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSpaceWidth:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSpaceHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopForExtraObject:F

    add-float/2addr v1, v4

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginBottomPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    :goto_1
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargBtm:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setMarginLeftRight()V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemGapWPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemGapW:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemGapHPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemGapH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleWidthPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginTopPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginTop:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginBottomPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginBottom:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeftPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeft:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSearchTitleTextMarginLeftPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSearchTitleTextMarginLeft:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumTitleTextMarginLeftPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumTitleMargLeft:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumThumbMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumThumbMarg:F

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargRight:F

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v3

    :cond_1
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGapPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupVGap:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckboxWidthPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckboxHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMargin:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandButtonWidthPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpandButtonHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconWidthPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconH:F

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    :goto_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewWidth:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidW:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargBtm:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSpaceHeight:F

    div-float/2addr v1, v6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSy:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSpaceWidth:F

    neg-float v1, v1

    div-float/2addr v1, v6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemSx:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    neg-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraTop:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargBtm:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraBtm:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleWidthPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsW:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleHeightPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsH:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsExpanedExtraRange:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginBottomPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    neg-float v1, v1

    goto/16 :goto_2

    :cond_5
    move v1, v3

    goto/16 :goto_2

    :cond_6
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMarginPixel:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargRight:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    goto :goto_3
.end method

.method resetVisibleObjectAttribute()V
    .locals 13

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v12, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableAnim(ZZZZZ)V

    if-eqz v11, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    :cond_1
    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkUseTextureCoordinationOnScale()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableTexCoordAnim(Z)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableTexCoordAnim(Z)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_7

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableAnim(ZZZZZ)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    :cond_5
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAccessibilityIndex:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->performAction(II)Z

    goto :goto_0
.end method

.method setAlbumFocusBorderVisible(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    :cond_1
    return-void
.end method

.method setAlwaysActiveGroupObjectIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I

    return-void
.end method

.method public setCheckBoxVisibility()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupSelect:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    :goto_0
    if-ltz v8, :cond_3

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateGroupCheckBox(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v11, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(ZI)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_0

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v9, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v3, v0, :cond_4

    const-string/jumbo v17, "PositionControllerBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "album index: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " mGroup length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v17, v0

    aget-object v5, v17, v3

    iget-object v0, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    move-object/from16 v17, v0

    aget v13, v17, v16

    iget-object v0, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    move-object/from16 v17, v0

    aget v12, v17, v16

    if-eqz v10, :cond_5

    sget-boolean v17, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v17, :cond_7

    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    neg-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    move/from16 v19, v0

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    move/from16 v19, v0

    add-float v18, v18, v19

    neg-float v0, v12

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v17

    if-eqz v17, :cond_6

    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    move/from16 v18, v0

    add-float v18, v18, v13

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargRight:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b030c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v19

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    goto/16 :goto_3

    :cond_6
    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    move/from16 v18, v0

    sub-float v18, v13, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    move/from16 v19, v0

    sub-float v19, v12, v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_4

    :cond_7
    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionW:F

    move/from16 v18, v0

    sub-float v18, v13, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionHMargin:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    neg-float v0, v12

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionH:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExpansionVMargin:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v17

    if-eqz v17, :cond_8

    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListH:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    neg-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumMargLeft:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b030c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v19

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v17, v0

    neg-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    move/from16 v19, v0

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckHMargin:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckH:F

    move/from16 v19, v0

    sub-float v19, v12, v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckVMargin:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_4
.end method

.method setDecoviewsVisibility(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(ZZI)V

    return-void
.end method

.method setDecoviewsVisibility(ZZI)V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz p2, :cond_0

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1, p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setDualScreenFocusVisibility(II)V
    .locals 4

    const-string/jumbo v1, "PositionControllerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualScreenFocusVisibility from + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateBorder(I)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->fitToLine(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateBorder(I)V

    :cond_1
    return-void
.end method

.method public setFocusBorderVisible(II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_1
    return-void
.end method

.method setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateBorder(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateBorder(I)V

    goto :goto_0
.end method

.method public setFocusBorderVisibleTitleButton1(II)V
    .locals 0

    return-void
.end method

.method public setFocusBorderVisibleTitleButton2(II)V
    .locals 0

    return-void
.end method

.method public setFocused(IZ)V
    .locals 0

    return-void
.end method

.method setGrpChkBorderVisible(ZI)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupSelect:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCheckBoxBorderColor:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCheckBoxBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_0
.end method

.method public setLocationFocusBorderVisible(II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean p2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isLocationFocused:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    :cond_0
    return-void
.end method

.method setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->performAction(II)Z

    goto :goto_0
.end method

.method setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean p2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isLocationFocused:Z

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRippleFocusVisible(Z)V

    :cond_0
    return-void
.end method

.method setMarginTopForTipCard()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopForExtraObject:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTipCardObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->isNeedToShow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTipCardHeight()F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopForExtraObject:F

    goto :goto_0
.end method

.method setMaxScrollable()V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    if-gtz v3, :cond_0

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float v2, v3, v4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mScrollTopMargine:F

    sub-float v1, v3, v4

    cmpg-float v3, v2, v1

    if-gtz v3, :cond_1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto :goto_0

    :cond_1
    sub-float v3, v2, v1

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto :goto_0
.end method

.method setScroll(FZ)V
    .locals 17

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    move/from16 v16, v0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    if-gtz v2, :cond_1

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleRange()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpVisibleStart:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpVisibleEnd:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGrpVisibleRange(II)V

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    if-ne v11, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    if-eq v10, v2, :cond_a

    :cond_3
    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    if-ne v14, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    if-eq v13, v2, :cond_b

    :cond_4
    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_6

    if-nez v9, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isRealRatioLayout()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setActiveWindow(IIIIZZ)V

    :cond_6
    if-nez v9, :cond_7

    if-eqz p2, :cond_d

    :cond_7
    if-eqz p2, :cond_c

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleObject(III)V

    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateListAlbumDivider()V

    :cond_9
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->playScrollSound()V

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    :cond_c
    const/4 v15, 0x0

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleObjectPosition()V

    goto :goto_4
.end method

.method setScrollRef(FF)V
    .locals 13

    const/4 v5, -0x1

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput p2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    if-gtz v0, :cond_0

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateListAlbumDivider()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleRange()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleRange()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v2

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v3

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v7

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isRealRatioLayout()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setActiveWindow(IIIIZZ)V

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleObject(III)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/16 v5, 0xc

    invoke-direct {v0, v8, v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setVisibleObject(III)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentStart:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpContentEnd:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v1

    move v7, v2

    goto :goto_1
.end method

.method setThumbObjectCanvas(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iput-boolean v5, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v5

    :goto_1
    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setStroke(Z)V

    move v4, v5

    :goto_2
    return v4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    iget v6, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    invoke-virtual {p1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_3
    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-boolean v6, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    invoke-virtual {p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    invoke-virtual {p1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iput-boolean v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    invoke-virtual {p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method setTitleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->performAction(II)Z

    goto :goto_0
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    :goto_1
    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setGrpChkBorderVisible(ZI)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    goto :goto_1
.end method

.method public setToCurrentCtrl()V
    .locals 0

    return-void
.end method

.method protected abstract setVisibleRange()V
.end method

.method startDecodeThread()V
    .locals 0

    return-void
.end method

.method thumbActivated(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method thumbDeactivate(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public update(II)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "PositionControllerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update wrong type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-ne v3, v0, :cond_3

    const-string/jumbo v3, "PositionControllerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update skipped for shrink 1= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    move-result v2

    goto :goto_0
.end method

.method public update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-ne v2, p1, :cond_2

    const-string/jumbo v2, "PositionControllerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update skipped for shrink 2= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    move-result v1

    goto :goto_0
.end method

.method updateBorder(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    goto :goto_0
.end method

.method updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method updateCheckBox(I)V
    .locals 7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupSelect:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCurrentState(II)I

    move-result v5

    if-lez v5, :cond_3

    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_2

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;Z)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method updateDecorView()V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateEventTitle(I)V
    .locals 0

    return-void
.end method

.method public updateHLVideoIcon(II)V
    .locals 0

    return-void
.end method

.method public updateShareIcon(III)V
    .locals 0

    return-void
.end method

.method updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v0, v1

    iget v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_2

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    :goto_1
    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v0, v0, v2

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v0, v0, v2

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mDisplaySelectedCount:Z

    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mFocusIndex:I

    if-ne v8, v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    if-eq v8, v0, :cond_3

    move v0, v9

    :goto_2
    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsSelectedAlbum:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsDualScreen:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    move v3, v9

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method
