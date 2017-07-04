.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelGridTimelineObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field public static final MODE_GRID:I = 0x0

.field public static final MODE_TIMELINE:I = 0x1

.field private static final RES_ID_BG:I = 0x0

.field private static final RES_ID_DIVIDER:I = 0x1

.field private static final RES_ID_GRID:I = 0x2

.field private static final RES_ID_TIMELINE:I = 0x3


# instance fields
.field private mBgHeightGl:F

.field private mBgHeightPixel:I

.field private final mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mBgWidthGl:F

.field private mBgWidthPixel:I

.field private final mContext:Landroid/content/Context;

.field private mCoverHeightGl:F

.field private mDividerHeightPixel:I

.field private mDividerWidthPixel:I

.field private final mGridGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mGridString:Ljava/lang/String;

.field private final mGridView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mLevel:I

.field private mModeChangeInProgress:Z

.field private mNavigationPixelSize:I

.field private mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field private mNormalTextColor:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedTextColor:I

.field private mTextSize:I

.field private final mTimelineGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mTimelineGridMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mTimelineString:Ljava/lang/String;

.field private final mTimelineView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mTopBottomMarginGl:F

.field private mTopBottomMarginPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->FEATURE_USE_NAVIGATION_BAR:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setUseTouchEvent(Z)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->createTimelineGridMoveListener()V

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->initChildObjects(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->initDimensions()V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setVisibility(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;)V

    return-void
.end method

.method private createTimelineGridMoveListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineGridMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    return-void
.end method

.method private getNavigationPixelWidth()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNavigationPixelSize:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextColor(I)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mSelectedTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNormalTextColor:I

    goto :goto_0
.end method

.method private getTypeFace(I)Landroid/graphics/Typeface;
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method private initChildObjects(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineGridMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineGenericListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineGridMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method private initDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0823

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTextSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    const v1, 0x7f100112

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mSelectedTextColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    const v1, 0x7f100227

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNormalTextColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0820

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b081e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mDividerHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b081f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mDividerWidthPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0824

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTopBottomMarginPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a01ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridString:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0454

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineString:Ljava/lang/String;

    return-void
.end method

.method private resetAttributes()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNavigationPixelSize:I

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthGl:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTopBottomMarginPixel:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTopBottomMarginGl:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v0

    int-to-float v2, v0

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mCoverHeightGl:F

    return-void
.end method

.method private updateBg()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateBgView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthGl:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setSize(FF)V

    return-void
.end method

.method private updateBgView()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    const v3, 0x7f02021b

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mContext:Landroid/content/Context;

    const v3, 0x7f02021c

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mDividerWidthPixel:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mDividerHeightPixel:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v2

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_0
.end method

.method private updateGridObject()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    div-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateGridView()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthGl:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthGl:F

    neg-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v6, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private updateGridView()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getTextColor(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTextSize:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridString:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v5, v6, v7, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTextSize:I

    int-to-float v5, v5

    invoke-static {v2, v5, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    invoke-virtual {v1, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v8, v5, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGridView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTimelineObject()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    div-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightPixel:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateTimelineView()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthGl:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthGl:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v6, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private updateTimelineView()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getTextColor(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTextSize:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineString:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgWidthPixel:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v5, v6, v7, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTextSize:I

    int-to-float v5, v5

    invoke-static {v1, v5, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v8, v5, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v3, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTimelineView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentYPosition()F
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mCoverHeightGl:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTopBottomMarginGl:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float v0, v2, v3

    add-float v2, v0, v1

    return v2
.end method

.method getTargetYPosition()F
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mCoverHeightGl:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTopBottomMarginGl:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float v0, v2, v3

    add-float v2, v0, v1

    return v2
.end method

.method public resetLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCurrent:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->resetAttributes()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateBg()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateGridObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateTimelineObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setVisibleRange()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mtz:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->msz:F

    return-void
.end method

.method public setVisibleRange()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getCurrentYPosition()F

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getNavigationPixelWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, -0x40000000    # -2.0f

    div-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setPos(FFF)V

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mBgHeightGl:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method updateTextColor()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateTextColor(Z)V

    return-void
.end method

.method updateTextColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCurrent:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateGridView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateTimelineView()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLevel:I

    goto :goto_0
.end method
