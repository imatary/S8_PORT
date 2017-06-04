.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;
.source "GlComposeChannelShareProgressObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;
    }
.end annotation


# static fields
.field private static final IS_N_OS:Z

.field private static final RES_ID_CANCEL_LABEL:I = 0x5

.field private static final RES_ID_PROGRESS_BAR:I = 0x3

.field private static final RES_ID_PROGRESS_BAR_BG:I = 0x2

.field private static final RES_ID_SHARE_PROGRESS_BG:I = 0x1

.field private static final RES_ID_UPDATING_LABEL:I = 0x4

.field private static final RES_ID_UPLOAD_FAIL_LABEL:I = 0x6

.field private static final USE_NAVIGATION_BAR:Z

.field private static mCurrentCnt:I


# instance fields
.field private mActionbarHeight:F

.field private mCancelBtnText:Z

.field private mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mCancelButtonText:Ljava/lang/String;

.field private mCancelButtonWidth:F

.field private final mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mContext:Landroid/content/Context;

.field private final mExpanded:Z

.field private mExtraHeight:F

.field private mHeightViewRatio:F

.field private mIsFailedView:Z

.field private mIsWaitingView:Z

.field private mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field private mPaddingNavigationBarLeft:F

.field private mPaddingNavigationBarRight:F

.field private mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private final mResources:Landroid/content/res/Resources;

.field private mShareProgressObjHeight:F

.field private mShareProgressObjWidth:F

.field private mShowCancelBtn:Z

.field private mTotalCnt:I

.field private mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->USE_NAVIGATION_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->IS_N_OS:Z

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCurrentCnt:I

    return-void
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsWaitingView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsFailedView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShowCancelBtn:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelBtnText:Z

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mTotalCnt:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mPaddingNavigationBarLeft:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mPaddingNavigationBarRight:F

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->mExpanded:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExpanded:Z

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibility(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private convX(F)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private drawShareFriendBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_2

    sget-boolean v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->IS_N_OS:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    const v5, 0x7f020085

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsWaitingView:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b07f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    :cond_1
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    return-object p1

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    const v5, 0x7f020084

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private drawUpdatingText(Lcom/sec/android/gallery3d/glcore/GlImageView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 26

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0b0371

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    const/16 v17, 0x0

    const/16 v22, 0x4

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    sget-boolean v22, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v22, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v22

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCurrentCnt:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mTotalCnt:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v19

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\\"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f100214

    invoke-static/range {v22 .. v23}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0b0220

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v13, v0, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v22

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0b07f6

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonWidth:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    mul-int/lit8 v23, v12, 0x3

    add-int v6, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v6

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v9, v0

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a04ad

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsWaitingView:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsFailedView:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0196

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_1
    :goto_1
    if-nez v15, :cond_6

    const/16 p1, 0x0

    :cond_2
    :goto_2
    return-object p1

    :cond_3
    sget v22, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCurrentCnt:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mTotalCnt:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    :cond_4
    sget-object v22, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a04dc

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a04db

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_6
    if-nez v17, :cond_8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v15, v0, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v17

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v22

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v22, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_7
    :goto_3
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    sget-boolean v22, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v22, :cond_e

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v22

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_3

    :cond_9
    const/16 v22, 0x5

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelBtnText:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0080

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f100111

    invoke-static/range {v22 .. v23}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0b021f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v17, :cond_c

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v15, v0, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v17

    const/16 v22, 0x2

    const/16 v23, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-boolean v22, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->IS_N_OS:Z

    if-eqz v22, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v22

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_5
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_6
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonWidth:F

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonText:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a04af

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v22

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_5

    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v22

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_6

    :cond_d
    const/16 v22, 0x6

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v20

    check-cast v20, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v20, :cond_7

    new-instance v20, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f1000df

    invoke-static/range {v22 .. v23}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f02035c

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0b07f5

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v22, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v10, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_2
.end method

.method private getActionbarHeight(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x7f0b0039

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x7f0b0038

    goto :goto_0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExtraHeight:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExpanded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExtraHeight:F

    add-float/2addr v1, v2

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mActionbarHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExtraHeight:F

    add-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0
.end method

.method private getPaddingNavigationBarLeft()F
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mPaddingNavigationBarLeft:F

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mPaddingNavigationBarLeft:F

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPaddingNavigationBarRight()F
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mPaddingNavigationBarRight:F

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mPaddingNavigationBarRight:F

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAttributes(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsWaitingView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b07f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getActionbarHeight(FZ)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mActionbarHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getExtraComponentsHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExtraHeight:F

    return-void
.end method

.method private resetProgressBarObj()V
    .locals 6

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    const/high16 v3, 0x41700000    # 15.0f

    div-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v3, v4

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_0
    return-void
.end method

.method private setButtonObj(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setUpdatingButtonObj()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setCancelButtonObj()V

    :cond_0
    return-void
.end method

.method private setCancelButtonObj()V
    .locals 15

    const/high16 v14, 0x41700000    # 15.0f

    const/4 v1, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerShareProgressCancelBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_0
    new-instance v11, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsFailedView:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-direct {p0, v11, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->drawUpdatingText(Lcom/sec/android/gallery3d/glcore/GlImageView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v11

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b07f5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonWidth:F

    float-to-int v0, v0

    mul-int/lit8 v4, v6, 0x2

    add-int v9, v0, v4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    div-float/2addr v0, v4

    float-to-int v12, v0

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    div-int/lit8 v4, v12, 0xf

    sub-int v4, v12, v4

    invoke-direct {v10, v0, v9, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0086

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b04d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b04d8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v2, v6, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportButtonShape(ZIIII)V

    int-to-float v0, v9

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    mul-float v8, v0, v1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v1, v14

    sub-float v7, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    div-float/2addr v1, v13

    div-float v4, v8, v13

    sub-float/2addr v1, v4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getPaddingNavigationBarRight()F

    move-result v4

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v4, v13

    div-float v5, v7, v13

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v5, v14

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v11, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->drawUpdatingText(Lcom/sec/android/gallery3d/glcore/GlImageView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private setProgressBar(Lcom/sec/android/gallery3d/glcore/GlView;F)V
    .locals 5

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    const v3, 0x7f02038e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    float-to-int v2, p2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-int v2, p2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_0
.end method

.method private setProgressBarBG(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    const v3, 0x7f02038d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_0
.end method

.method private setProgressBarObj()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0xf

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    const/high16 v4, 0x41700000    # 15.0f

    div-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v4, v7

    div-float v5, v1, v7

    sub-float/2addr v4, v5

    invoke-virtual {v3, v6, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setProgressBarBG(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setProgressBar(Lcom/sec/android/gallery3d/glcore/GlView;F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method private setUpdatingButtonObj()V
    .locals 13

    const/high16 v12, 0x41700000    # 15.0f

    const v11, 0x3f333333    # 0.7f

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v7, :cond_0

    new-instance v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    :cond_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    div-float/2addr v7, v8

    float-to-int v3, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    div-float/2addr v7, v8

    float-to-int v2, v7

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    int-to-float v8, v3

    mul-float/2addr v8, v11

    float-to-int v8, v8

    div-int/lit8 v9, v2, 0xf

    sub-int v9, v2, v9

    invoke-direct {v0, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    mul-float v6, v7, v11

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v8, v12

    sub-float v5, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0b07f6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    div-float/2addr v8, v10

    neg-float v8, v8

    div-float v9, v6, v10

    add-float/2addr v8, v9

    int-to-float v9, v4

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->convX(F)F

    move-result v9

    add-float/2addr v8, v9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getPaddingNavigationBarLeft()F

    move-result v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v9, v10

    div-float v10, v5, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    invoke-direct {p0, v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->drawUpdatingText(Lcom/sec/android/gallery3d/glcore/GlImageView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mUpdatingButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method


# virtual methods
.method createShareProgress(ZZZZZII)V
    .locals 7

    if-lez p6, :cond_0

    iput p6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mTotalCnt:I

    :cond_0
    if-lez p7, :cond_1

    sput p7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCurrentCnt:I

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->resetAttributes(Z)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mWidthViewRatio:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    div-float/2addr v5, v6

    float-to-int v3, v5

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v5, v4, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->drawShareFriendBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mExtraHeight:F

    sub-float v2, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setPos(FFF)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setSize(FF)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setUseTouchEvent(Z)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibility(Z)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setProgressBarObj()V

    :cond_2
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsWaitingView:Z

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mIsFailedView:Z

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelBtnText:Z

    if-eqz p5, :cond_3

    if-eqz p4, :cond_5

    :cond_3
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShowCancelBtn:Z

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShowCancelBtn:Z

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setButtonObj(Z)V

    return-void

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected drawBorder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    :cond_0
    return-void
.end method

.method getCancelButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusBorderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUploadTotalCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mTotalCnt:I

    return v0
.end method

.method handleOnCancelClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCancelButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;->onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    return-void
.end method

.method notifyUploadCnt(II)V
    .locals 0

    sput p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCurrentCnt:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mTotalCnt:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setUpdatingButtonObj()V

    return-void
.end method

.method removeProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    return-void
.end method

.method removeShareProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mCurrentCnt:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->removeAllChild()V

    return-void
.end method

.method public resetLayout(FZ)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->resetAttributes(Z)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setSize(FF)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibleRange(F)V

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->resetProgressBarObj()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mShowCancelBtn:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setButtonObj(Z)V

    return-void
.end method

.method public setVisibleRange(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCoverViewScroll(F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v2, v0

    invoke-virtual {p0, v4, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setPos(FFF)V

    return-void
.end method

.method updateProgressBar(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setProgressBar(Lcom/sec/android/gallery3d/glcore/GlView;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0
.end method
