.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeSocialCoverObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;
    }
.end annotation


# static fields
.field private static final RES_ID_DATE:I = 0x4

.field private static final RES_ID_DIVIDER:I = 0x1

.field private static final RES_ID_IMAGE_TEXT:I = 0x0

.field private static final RES_ID_MAIN_TITLE:I = 0x3

.field private static final RES_ID_SHARED_FRIENDS_ARROW:I = 0x7

.field private static final RES_ID_SHARED_FRIENDS_COUNT:I = 0x6

.field private static final RES_ID_SHARED_FRIENDS_ICON:I = 0x5

.field private static final RES_ID_VIDEO_ICON:I = 0x8

.field private static final RES_ID_VIDEO_TEXT:I = 0x2

.field private static final USE_NAVIGATION_BAR:Z


# instance fields
.field private mContentCountDividerGap:I

.field private mContentCountDividerHeight:I

.field private mContentCountDividerWidth:I

.field private mContentCountTextSize:I

.field private final mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mContentCountViewBottomGap:I

.field private mContentCountViewHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCoverHeightPixel:I

.field private mCoverWidthPixel:I

.field private mDatePeriodText:Ljava/lang/String;

.field private mDateTextSize:I

.field private mDateViewHeight:I

.field private mHeightViewRatio:F

.field private mImageCount:Ljava/lang/String;

.field private mImageString:Ljava/lang/String;

.field private mMainTitleMaxWidth:I

.field private mNavigationPixelSize:I

.field private mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field private mPlayIconEndBottomMargin:I

.field private final mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mPlayIconSizeGL:F

.field private mPlayIconSizePixel:I

.field private final mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private final mResources:Landroid/content/res/Resources;

.field private mSharedFriendsArrowWidth:I

.field private mSharedFriendsBottomMargin:I

.field private mSharedFriendsGap:I

.field private mSharedFriendsIconSize:I

.field private final mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mSharedFriendsStartMargin:I

.field private mSharedFriendsTextSize:I

.field private final mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mStatusBarHeightPixel:I

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private final mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mTitleName:Ljava/lang/String;

.field private mTitleTextSize:I

.field private mTitleTotalHeightGL:F

.field private mTitleTotalHeightPixel:I

.field private mTitleTotalWidthGL:F

.field private mTitleViewHeight:I

.field private mVideoCount:Ljava/lang/String;

.field private mVideoString:Ljava/lang/String;

.field private mWhiteColor:I

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->USE_NAVIGATION_BAR:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)V
    .locals 3

    const/4 v2, 0x1

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setUseTouchEvent(Z)V

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mSharedFriendsClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mHLVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->initDimensions()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;)V

    return-void
.end method

.method private calcTitleTotalHeight()V
    .locals 11

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountTextSize:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->getTextHeight(Landroid/text/TextPaint;)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewHeight:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->isMainTitleAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleName:Ljava/lang/String;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mMainTitleMaxWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v4

    move v7, v6

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;FZZF)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleViewHeight:I

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDateTextSize:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->getTextHeight(Landroid/text/TextPaint;)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDateViewHeight:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewHeight:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewBottomGap:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDateViewHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalHeightPixel:I

    return-void
.end method

.method private drawDividerView(I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    const v3, 0x7f0200dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerGap:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    return p1
.end method

.method private drawImageCountView()I
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageString:Ljava/lang/String;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountTextSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeColor:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeWidth:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private drawSharedArrowIcon(I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    const v2, 0x7f02016b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsArrowWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsGap:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsArrowWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsGap:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto :goto_0
.end method

.method private declared-synchronized drawSharedCountView(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v0, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsTextSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeColor:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeWidth:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsGap:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawSharedArrowIcon(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized drawSharedIconView()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    const v2, 0x7f02016d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private drawVideoCountView(I)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    move v0, p1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoString:Ljava/lang/String;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountTextSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeColor:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeWidth:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    invoke-virtual {v1, v0, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v2

    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v1, v0, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNavigationPixelWidth()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mNavigationPixelSize:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextHeight(Landroid/text/TextPaint;)I
    .locals 3

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b081b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTextSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewBottomGap:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b080e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDateTextSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0812

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountTextSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0810

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0811

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b080f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountDividerGap:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0817

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsTextSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b081a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsStartMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0816

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsBottomMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0818

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsGap:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0819

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsIconSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0815

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsArrowWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0814

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0813

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconEndBottomMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    const v1, 0x7f100260

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeColor:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mNavigationPixelSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStatusBarHeightPixel:I

    return-void
.end method

.method private isMainTitleAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mMainTitleMaxWidth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeDateView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method

.method private removeDividerView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method

.method private removeImageCountView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method

.method private removeVideoCountView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method

.method private resetAttributes()V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWidthViewRatio:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->getNavigationPixelWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverWidthPixel:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverWidthPixel:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalWidthGL:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverWidthPixel:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsStartMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mMainTitleMaxWidth:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->calcTitleTotalHeight()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalHeightPixel:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalHeightGL:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizeGL:F

    return-void
.end method

.method private setImageCount(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageCount:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setImageString()V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageCount:Ljava/lang/String;

    goto :goto_0
.end method

.method private setImageString()V
    .locals 7

    const/4 v4, 0x1

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageCount:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0391

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageString:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v0, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0392

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageString:Ljava/lang/String;

    goto :goto_0
.end method

.method private setVideoCount(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setVideoString()V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    goto :goto_0
.end method

.method private setVideoString()V
    .locals 7

    const/4 v4, 0x1

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0396

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoString:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v0, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0397

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoString:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateContentCountView()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStatusBarHeightPixel:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalHeightPixel:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v4, v1, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->setMargin(IIII)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mImageCount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawImageCountView()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawDividerView(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawVideoCountView(I)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewHeight:I

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->removeDividerView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->removeVideoCountView()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->removeImageCountView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->removeDividerView()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mVideoCount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawVideoCountView(I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->removeVideoCountView()V

    goto :goto_0
.end method

.method private updateDateView()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDatePeriodText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStatusBarHeightPixel:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalHeightPixel:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleViewHeight:I

    add-int v1, v2, v3

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDatePeriodText:Ljava/lang/String;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDateTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDateTextSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeColor:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStrokeWidth:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDatePeriodText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->removeDateView()V

    goto :goto_0
.end method

.method private updateMainTitleView()V
    .locals 12

    const/4 v11, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->isMainTitleAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mStatusBarHeightPixel:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalHeightPixel:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContentCountViewHeight:I

    add-int v9, v1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleName:Ljava/lang/String;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mMainTitleMaxWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v4

    move v7, v6

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;FZZF)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    invoke-virtual {v0, v10, v9, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v10, v9, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleName:Ljava/lang/String;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mMainTitleMaxWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWhiteColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V

    goto :goto_0
.end method

.method private updatePlayIconView()V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mContext:Landroid/content/Context;

    const v2, 0x7f02016e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private updateSharedFriendsView(I)V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "fa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawSharedIconView()V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->drawSharedCountView(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateTitleView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateContentCountView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateMainTitleView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateDateView()V

    return-void
.end method


# virtual methods
.method resetLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->resetAttributes()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateTitleObject()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getHasHighlightVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updatePlayIconObject(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateSharedFriendsObject()V

    return-void
.end method

.method setCoverObjectTitleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleName:Ljava/lang/String;

    return-void
.end method

.method setDatePeriod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mDatePeriodText:Ljava/lang/String;

    return-void
.end method

.method setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setImageCount(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setVideoCount(Ljava/lang/String;)V

    return-void
.end method

.method updatePlayIconObject(Z)V
    .locals 8

    if-eqz p1, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updatePlayIconView()V

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverWidthPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconEndBottomMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWidthViewRatio:F

    mul-float v1, v3, v4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizePixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconEndBottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizeGL:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconSizeGL:F

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method updateSharedFriendsObject()V
    .locals 9

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->sharedContactSize()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateSharedFriendsView(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverWidthPixel:I

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsStartMargin:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWidthViewRatio:F

    mul-float v3, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsBottomMargin:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    mul-float v4, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v6, v7, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    int-to-float v6, v2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mWidthViewRatio:F

    mul-float/2addr v6, v7

    int-to-float v7, v1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mSharedFriendsObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method updateTitleObject()V
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverWidthPixel:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateTitleView()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleTotalWidthGL:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mCoverHeightPixel:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->mTitleBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method
