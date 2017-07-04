.class public Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.source "ComposeChannelSetAdapter.java"


# static fields
.field private static final BACKGROUND_ALPHA_VALUE:I = 0x66

.field private static final DAY_UINT:J = 0x5265c00L

.field private static final DIM_BG_ALPHA_VALUE:I = 0x26

.field private static final DRAWABLE_DOWNLOAD:I = 0x2

.field private static final DRAWABLE_RECEIVER_THUMBNAIL:I = 0x4

.field private static final DRAWABLE_SENDER_THUMBNAIL:I = 0x1

.field private static final DRAWABLE_UPLOAD:I = 0x3

.field private static final RES_ID_PATTERN_BG_BOTTOM:I = 0x1

.field private static final RES_ID_PATTERN_DIM_BG:I = 0x2

.field private static final SHOW_EXPIRATION_UINT:J = 0xfL

.field private static final TAG:Ljava/lang/String; = "ComposeChannSetAdapter"

.field private static final mDimBgColor:I


# instance fields
.field private final FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

.field private final FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

.field private final FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

.field private final USE_DREAM_UX:Z

.field private final USE_N_OS_TABLET:Z

.field private final drawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSubTitleHeight:I

.field private mAlbumTitleHeight:I

.field private final mDefaultColor:I

.field private mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private mHeightPixel:I

.field private mHeightPixelFistAlbum:I

.field private mItemWidth:F

.field private final mReadyColorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

.field private final mUseEventShare:Z

.field private mWidthPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x26

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimBgColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mUseEventShare:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_DREAM_UX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewTabletGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mItemWidth:F

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mWidthPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mHeightPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mHeightPixelFistAlbum:I

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDefaultColor:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumTitleHeight:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumSubTitleHeight:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawables:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_DREAM_UX:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSocialStoryViewDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f10007f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mReadyColorDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private addExpiresDateMarkView(Lcom/sec/android/gallery3d/glcore/GlView;JI)V
    .locals 26

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b02d3

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewNewLabelPadding()I

    move-result v10

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewNewLabelHeight()I

    move-result v13

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTextStartMargin()I

    move-result v11

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move/from16 v8, p4

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b02c9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f100069

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const/16 v21, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v21

    add-int v21, v21, v9

    add-int v11, v11, v21

    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->convertDate(J)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f02013d

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0872

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v7, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v21

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v21, 0x2

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    int-to-float v0, v13

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v21

    sget v22, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    mul-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    new-instance v14, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v21

    mul-int/lit8 v22, v10, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v14, v0, v13}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :goto_9
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v11, v12, v0, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v21, 0x139

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v21, 0x13a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b0094

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b0096

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b0095

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b0097

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b0097

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto/16 :goto_5

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f100064

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    goto/16 :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f02013c

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_8

    :cond_b
    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_9
.end method

.method private addMasterMarkView(Lcom/sec/android/gallery3d/glcore/GlView;Z)V
    .locals 27

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0a024f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02cd

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02cf

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02ce

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f100068

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02cc

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02d0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02c8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleIconBottomMargin()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleIconEndMargin()I

    move-result v19

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f02013e

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f100024

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v24

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f020123

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v24, 0x132

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v6, :cond_7

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardGroupIconWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleHeight()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v24, 0x1

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :goto_4
    const/16 v24, 0x0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v24, 0x132

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_5
    if-eqz p2, :cond_1

    const/16 v24, 0x13b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v18

    check-cast v18, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v18, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v24

    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v24, 0x2

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v25, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v24

    sget v25, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    new-instance v18, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v24

    mul-int/lit8 v25, v15, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    const/16 v24, 0x1

    const/16 v25, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :goto_7
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v14, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v24, 0x13b

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v24, 0x13c

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_8
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0b02d0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleIconEndMargin()I

    move-result v9

    goto/16 :goto_2

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v6, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v24, 0x3

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :goto_9
    const/16 v24, 0x0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_5

    :cond_8
    const/16 v24, 0x3

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto :goto_9

    :cond_9
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v24

    goto/16 :goto_6

    :cond_a
    const/16 v24, 0x3

    const/16 v25, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    const/16 v24, 0x1

    const/16 v25, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :goto_a
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v14, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_8

    :cond_c
    const/16 v24, 0x3

    const/16 v25, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto :goto_a
.end method

.method private addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;I)V
    .locals 23

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0a02c3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewNewMarkFontSize()I

    move-result v17

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f100221

    invoke-static/range {v20 .. v21}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabletChannelViewNewMarkTopMargin()I

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabletChannelViewNewMarkTopMargin()I

    move-result v10

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewNewLabelPadding()I

    move-result v16

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f020109

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f100024

    invoke-static/range {v20 .. v21}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v20

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewNewLabelHeight()I

    move-result v14

    :goto_8
    int-to-float v0, v14

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v20, "km"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0b02d4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v14, v14, v20

    :cond_0
    sget v20, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v20

    sget v21, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int v20, v20, v21

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    new-instance v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v20

    mul-int/lit8 v21, v16, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v13, v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const/16 v20, 0x3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :goto_9
    invoke-virtual {v13, v11, v12, v10, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v20, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v20, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkFontSize()I

    move-result v17

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v12

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkRightMargin()I

    move-result v10

    goto/16 :goto_2

    :cond_7
    move/from16 v9, p2

    goto/16 :goto_3

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTextStartMargin()I

    move-result v11

    goto/16 :goto_4

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPadding()I

    move-result v16

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f02013f

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_6

    :cond_d
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v20

    goto/16 :goto_7

    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelTopPadding()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v14, v20, v21

    goto/16 :goto_8

    :cond_f
    const/16 v20, 0x1

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_9

    :cond_10
    const/16 v20, 0x3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_9
.end method

.method private addNewOrExpireMarkForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;)V
    .locals 13

    const/16 v10, 0x13d

    invoke-virtual {p1, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v4, :cond_1

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v7, v10, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_label_text_size:I

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPaddingOver30()I

    move-result v6

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v1, v10, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_deco_items_v_h_padding:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f100260

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelTopPadding()I

    move-result v10

    mul-int/lit8 v3, v10, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v7

    invoke-static {v10, v11, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    int-to-float v10, v3

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    sget v10, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v9, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v10

    sget v11, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v10, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v10, v10, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_color:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v11, v11, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_width:I

    invoke-virtual {v8, v7, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f02013b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v10, 0xe6

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v10

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v4, v10, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v1, v1, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v10, 0x13e

    invoke-virtual {v4, v8, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v10, 0x13d

    invoke-virtual {p1, v4, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPadding()I

    move-result v6

    goto/16 :goto_0
.end method

.method private addShareLabelForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Z)V
    .locals 13

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget-object v1, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_string_creator_label:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v6, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_text_size:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f100068

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f02016c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v8, 0x132

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_icon_width:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v9, v9, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_icon_height:I

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_deco_items_v_h_padding:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v11, v11, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_deco_items_v_h_padding:I

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v8, 0x132

    invoke-virtual {p1, v0, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 v8, 0x13c

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v8, v6

    invoke-static {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez v7, :cond_2

    int-to-float v8, v6

    invoke-static {v1, v8, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_color:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v9, v9, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_width:I

    invoke-virtual {v7, v6, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_deco_items_v_h_padding:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v9, v9, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_icon_width:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v9, v9, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_text_start_margin:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v11, v11, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_deco_items_v_h_padding:I

    iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v8, 0x13c

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setUseCenterAlign(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v7, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addSharedPersonThumbnailView(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewThumbTopMargin()I

    move-result v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleLeftMargin()I

    move-result v10

    :goto_0
    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewUpIcTopMargin()I

    move-result v9

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewUpIcLeftMargin()I

    move-result v8

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewUpIcWidth()I

    move-result v12

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelSharedPersonThumbWidth()I

    move-result v17

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelSharedPersonThumbHeight()I

    move-result v15

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v18, 0x1

    const v19, 0x7f02007e

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    const v19, 0x7f02007d

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_2
    new-instance v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move/from16 v0, v17

    invoke-virtual {v13, v0, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    new-instance v14, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v12, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v10, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    add-int v18, v10, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v9, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v18, 0x12c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v18, 0x12d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSelectionModeTitleLeftMargin()I

    move-result v10

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleLeftMargin()I

    move-result v10

    goto/16 :goto_0

    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x1

    const v19, 0x7f02007e

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x3

    const v19, 0x7f020082

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_2
.end method

.method private addSubTitleForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;I)V
    .locals 12

    const/16 v11, 0x130

    const/4 v10, 0x2

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSocialStoryViewSubTitleTextSize()I

    move-result v3

    invoke-virtual {p1, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v6, v3

    invoke-static {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_title_side_padding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, p3, v7

    int-to-float v7, v7

    invoke-static {p2, v6, v7, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v5, v6, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_width:I

    int-to-float v6, v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_color:I

    invoke-static {v1, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    mul-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    invoke-virtual {v4, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v6, v6, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_color:I

    invoke-virtual {v4, v3, v6, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    iget v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumTitleHeight:I

    invoke-virtual {v4, v9, v6, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {p1, v4, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumTitleHeight:I

    invoke-virtual {v4, v9, v6, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addTitleForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;I)V
    .locals 13

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSocialStoryViewTitleTextSize()I

    move-result v12

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSocialStoryViewSubTitleTextSize()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubTitleHeight(I)I

    move-result v10

    const/16 v0, 0x12f

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    int-to-float v0, v12

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_title_side_padding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v1, p3, v0

    if-eqz p2, :cond_0

    if-lez v1, :cond_0

    if-nez v2, :cond_1

    int-to-float v2, v12

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v3, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_color:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;FZZF)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    const/16 v0, 0x12f

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumTitleHeight:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    int-to-float v5, v12

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v6, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_color:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p2

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V

    goto :goto_0
.end method

.method private convertDate(J)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10014

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;F)V
    .locals 48

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChildCount()I

    move-result v43

    if-lez v43, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeAllChilds()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleFontColor()I

    move-result v38

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleFontColor()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f10007d

    invoke-static/range {v43 .. v44}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v27

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleFontSize()I

    move-result v39

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleFontSize()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v43

    if-eqz v43, :cond_9

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSelectionModeTitleLeftMargin()I

    move-result v19

    :goto_1
    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleTopMargin()I

    move-result v42

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleTopMargin()I

    move-result v35

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewThumbTotalWidth()I

    move-result v36

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitlePaddingforSSFont()I

    move-result v30

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWin2WorldRatio()F

    move-result v43

    div-float v43, p3, v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v41, v0

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDividerTopMargin()I

    move-result v12

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewNameMaxWidth()I

    move-result v26

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerWidth()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerIconWidth()I

    move-result v44

    sub-int v11, v43, v44

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move/from16 v43, v0

    if-eqz v43, :cond_0

    move-object/from16 v6, v20

    check-cast v6, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v43

    if-eqz v43, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMemberCount()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addSharedPersonThumbnailView(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/data/MediaSet;)V

    add-int v19, v19, v36

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v37

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v31

    sget-object v43, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v43 .. v43}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v43

    if-eqz v43, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v43

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    const/16 v43, 0x0

    sub-int v44, v41, v30

    sub-int v44, v44, v19

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v24

    const/16 v43, 0x1

    invoke-static/range {v43 .. v43}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v43

    sub-int v19, v19, v43

    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    sget-boolean v43, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v43, :cond_a

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v43

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_2
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v19

    move/from16 v2, v42

    move/from16 v3, v19

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-object v43, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v43 .. v43}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v43

    if-nez v43, :cond_5

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v43

    const/high16 v44, 0x3f800000    # 1.0f

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, -0x1

    invoke-virtual/range {v43 .. v47}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_5
    const/16 v43, 0x12f

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setUseCenterAlign(Z)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v43

    if-eqz v43, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v43

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v31

    const/16 v43, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v28

    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move/from16 v2, v35

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-object v43, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v43 .. v43}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v43

    if-nez v43, :cond_6

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v43

    const/high16 v44, 0x3f800000    # 1.0f

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, -0x1

    invoke-virtual/range {v43 .. v47}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_6
    const/16 v43, 0x137

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f0200dd

    invoke-virtual/range {v43 .. v44}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v43

    add-int v19, v19, v43

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerIconWidth()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerIconHeight()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v43, 0x1

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    add-int v43, v19, v11

    add-int v44, v35, v12

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v43, 0x138

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerWidth()I

    move-result v43

    add-int v19, v19, v43

    :cond_7
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v43

    if-eqz v43, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v29

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v22

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v43

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f020122

    invoke-virtual/range {v43 .. v44}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    new-instance v9, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v9, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardGroupIconWidth()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleHeight()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v43, 0x1

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v0, v19

    move/from16 v1, v35

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v43

    add-int v43, v43, v19

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v43

    move/from16 v2, v35

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v43, 0x132

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v43, 0x136

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardGroupIconWidth()I

    move-result v43

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v44

    add-int v43, v43, v44

    add-int v19, v19, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f0200dd

    invoke-virtual/range {v43 .. v44}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerIconWidth()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerIconHeight()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v43, 0x1

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    add-int v43, v19, v11

    add-int v44, v35, v12

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v43, 0x131

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewCardDividerWidth()I

    move-result v43

    add-int v19, v19, v43

    :cond_8
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEventDatePeriod()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    const/16 v43, 0x130

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v34

    check-cast v34, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v34, :cond_b

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v31

    const/16 v43, 0x0

    sub-int v44, v41, v30

    sub-int v44, v44, v19

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v34

    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v35

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v43, 0x130

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    sget-boolean v43, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v43, :cond_c

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v43

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move-object/from16 v0, v34

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_4
    sget-object v43, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v43 .. v43}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v43

    if-nez v43, :cond_0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v43

    const/high16 v44, 0x3f800000    # 1.0f

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, -0x1

    invoke-virtual/range {v43 .. v47}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleLeftMargin()I

    move-result v19

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v43

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v43, v0

    add-int v43, v43, v30

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_2

    :cond_b
    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v35

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v43

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v43, v0

    add-int v43, v43, v30

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move-object/from16 v0, v34

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_4
.end method

.method private drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private drawBlendingBGBottom(Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    const v5, 0xffffff

    and-int v0, p2, v5

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mWidthPixel:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_1

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v8, [I

    aput p2, v6, v9

    aput v0, v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v5, 0x66

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v3, v8, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v3, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    check-cast p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    return-object p1

    :cond_1
    invoke-virtual {v3, v4, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v3, v8, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto :goto_0
.end method

.method private drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_5

    if-nez v0, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b047e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method

.method private drawDimBg(Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 6

    const/4 v5, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mWidthPixel:I

    if-nez p2, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mHeightPixelFistAlbum:I

    :goto_0
    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimBgColor:I

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    check-cast p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    return-object p1

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mHeightPixel:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_1
.end method

.method private drawEventLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/data/MediaSet;FZZ)V
    .locals 38

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f100260

    invoke-static/range {v35 .. v36}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v29

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleFontSizeOnThumb()I

    move-result v32

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleFontSizeOnThumb()I

    move-result v27

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTextStartMargin()I

    move-result v23

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTextBottomMargin()I

    move-result v6

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTextEndMargin()I

    move-result v9

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTextLineGap()I

    move-result v15

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitlePaddingforSSFont()I

    move-result v20

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWin2WorldRatio()F

    move-result v35

    div-float v35, p3, v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f100080

    invoke-static/range {v35 .. v36}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v35, v0

    const v36, 0x7f0b01ef

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v35, v0

    const v36, 0x7f0b02d0

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v7, p2

    check-cast v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v35

    if-eqz v35, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addMasterMarkView(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    if-eqz v13, :cond_2

    const/16 v35, 0x13b

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v35

    add-int v22, v22, v35

    :cond_2
    const/16 v35, 0x130

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v28

    check-cast v28, Lcom/sec/android/gallery3d/glcore/GlTextView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEventDatePeriod()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v35, v0

    if-eqz v35, :cond_6

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v35

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v35, 0x0

    sub-int v36, v34, v20

    sub-int v36, v36, v23

    sub-int v36, v36, v22

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v21

    invoke-static {v10, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v14

    if-nez v28, :cond_a

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v29

    invoke-static {v14, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v35

    :goto_3
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v35, v0

    if-eqz v35, :cond_8

    const/16 v35, 0x2

    const/16 v36, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    sget-boolean v35, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v35, :cond_9

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v36, v0

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_5
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v35, 0x130

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_3
    :goto_6
    const/16 v35, 0x12f

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v33

    check-cast v33, Lcom/sec/android/gallery3d/glcore/GlTextView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v30

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v35

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v35, 0x0

    sub-int v36, v34, v20

    sub-int v36, v36, v23

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v14

    if-nez v28, :cond_c

    add-int v26, v6, v15

    :goto_8
    add-int v35, v6, v15

    add-int v31, v35, v26

    if-nez v33, :cond_10

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v29

    invoke-static {v14, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v35

    :goto_9
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v35

    sub-int v23, v23, v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_N_OS_TABLET:Z

    move/from16 v35, v0

    if-eqz v35, :cond_e

    const/16 v35, 0x2

    const/16 v36, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    :goto_a
    sget-boolean v35, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v35, :cond_f

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v36, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_b
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    move-object/from16 v0, v33

    move/from16 v1, v32

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    const/16 v35, 0x12f

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_c
    const/16 v35, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setUseCenterAlign(Z)V

    if-eqz p4, :cond_4

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v35

    add-int v35, v35, v31

    add-int v18, v35, v15

    const/16 v35, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_4
    if-eqz p5, :cond_0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v35

    add-int v35, v35, v31

    add-int v18, v35, v15

    const/16 v35, 0x139

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v11, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelExpirationTime()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v36

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addExpiresDateMarkView(Lcom/sec/android/gallery3d/glcore/GlView;JI)V

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v35

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v35

    goto/16 :goto_3

    :cond_8
    const/16 v35, 0x1

    const/16 v36, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    add-int v35, v35, v20

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v36, v0

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_6

    :cond_b
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v35

    goto/16 :goto_7

    :cond_c
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v26

    goto/16 :goto_8

    :cond_d
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v35

    goto/16 :goto_9

    :cond_e
    const/16 v35, 0x1

    const/16 v36, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    goto/16 :goto_a

    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    add-int v35, v35, v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v36, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_b

    :cond_10
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v35

    sub-int v23, v23, v35

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_c
.end method

.method private drawReceivedEventInfoView(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/data/MediaSet;F)V
    .locals 41

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeAllChilds()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleFontColor()I

    move-result v33

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleFontColor()I

    move-result v7

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleFontSize()I

    move-result v35

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleHeight()I

    move-result v34

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleFontSize()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSelctionModeTitleLeftMargin()I

    move-result v15

    :goto_1
    move/from16 v22, v15

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSenderThumbTopMargin()I

    move-result v39

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewReceivedEventTitleGap()I

    move-result v29

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitlePaddingforSSFont()I

    move-result v19

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWin2WorldRatio()F

    move-result v6

    div-float v6, p3, v6

    float-to-int v0, v6

    move/from16 v38, v0

    const/16 v6, 0x133

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/glcore/GlImageView;

    const/4 v11, 0x0

    move-object/from16 v12, p2

    check-cast v12, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterInfo()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSenderThumbWidth()I

    move-result v31

    move/from16 v30, v31

    if-eqz v21, :cond_3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_3
    if-nez v11, :cond_b

    const/4 v6, 0x4

    const v8, 0x7f020083

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_2
    if-nez v24, :cond_d

    new-instance v24, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v6, v1, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v6

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSenderThumbBottomMargin()I

    move-result v8

    add-int/2addr v6, v8

    add-int v39, v39, v6

    const/16 v6, 0x133

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    const/16 v6, 0x134

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v36

    check-cast v36, Lcom/sec/android/gallery3d/glcore/GlTextView;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v32

    move/from16 v0, v35

    int-to-float v6, v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v20

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    const/4 v6, 0x0

    sub-int v8, v38, v19

    sub-int v8, v8, v22

    int-to-float v8, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v6, v8, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    if-nez v36, :cond_f

    move/from16 v0, v35

    int-to-float v6, v0

    move/from16 v0, v33

    invoke-static {v4, v6, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v36

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v6

    sub-int v22, v22, v6

    :goto_4
    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/4 v6, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    move/from16 v2, v22

    invoke-virtual {v0, v15, v1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v40, -0x1

    move/from16 v0, v40

    invoke-virtual {v6, v8, v9, v10, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_5
    const/16 v6, 0x134

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_5
    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v16

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v37, v6, v8

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_12

    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v6

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_6
    const/16 v6, 0x135

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v28

    check-cast v28, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterName()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0a0496

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_7
    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0a0349

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v23, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    :goto_7
    move/from16 v0, v27

    int-to-float v6, v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v20

    sub-int v6, v38, v19

    sub-int v6, v6, v22

    mul-int/lit8 v17, v6, 0x2

    const/4 v6, 0x0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v6, v8, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    if-nez v28, :cond_14

    sub-int v6, v38, v19

    sub-int v5, v6, v22

    move/from16 v0, v27

    int-to-float v6, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v28

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    add-int v6, v39, v34

    add-int v6, v6, v29

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v6, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v40, -0x1

    move/from16 v0, v40

    invoke-virtual {v6, v8, v9, v10, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_9
    const/16 v6, 0x135

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_8
    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_16

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getWidth()I

    move-result v6

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setSize(II)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitleLeftMargin()I

    move-result v15

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x0

    move/from16 v0, v31

    invoke-static {v11, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v6, v11, v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_c

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v18

    invoke-direct {v14, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x4

    const v8, 0x7f020083

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v6, v1, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v6

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSenderThumbBottomMargin()I

    move-result v8

    add-int/2addr v6, v8

    add-int v39, v39, v6

    goto/16 :goto_3

    :cond_e
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v6

    sub-int/2addr v15, v6

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v40, -0x1

    move/from16 v0, v40

    invoke-virtual {v6, v8, v9, v10, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_10
    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v6

    sub-int v22, v22, v6

    :goto_9
    const/4 v6, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    move/from16 v2, v22

    invoke-virtual {v0, v15, v1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_5

    :cond_11
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v6

    sub-int/2addr v15, v6

    goto :goto_9

    :cond_12
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    add-int v6, v6, v19

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0a034a

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v23, v9, v10

    const/4 v10, 0x1

    aput-object v25, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_7

    :cond_14
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v40, -0x1

    move/from16 v0, v40

    invoke-virtual {v6, v8, v9, v10, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_15
    add-int v6, v39, v34

    add-int v6, v6, v29

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v6, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    goto/16 :goto_8

    :cond_16
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getWidth()I

    move-result v6

    add-int v6, v6, v19

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setSize(II)V

    goto/16 :goto_0
.end method

.method private drawSocialStoryDecorView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/data/MediaSet;FZZI)V
    .locals 11

    if-eqz p1, :cond_3

    instance-of v7, p2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v7, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addShareLabelForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    :cond_0
    const/4 v5, 0x0

    if-eqz p4, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget-object v5, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_string_new_label:Ljava/lang/String;

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addNewOrExpireMarkForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWin2WorldRatio()F

    move-result v7

    div-float v7, p3, v7

    float-to-int v0, v7

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addTitleForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEventDatePeriod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getTotalMediaItemCount()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addSubTitleForSocialStoryView(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    if-eqz p5, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelExpirationTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->convertDate(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0a0872

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 5

    const/16 v4, 0x12

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mReadyColorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mReadyColorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private drawTitleButtonBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0
.end method

.method private drawTitleButtonLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 15

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0b0103

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f100111

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0b0102

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0b00a6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p2

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    const/16 v13, 0xa

    if-ne v12, v13, :cond_4

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0a0348

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0b001d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v12, -0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_3

    mul-int/lit8 v12, v3, 0x2

    sub-int v6, v4, v12

    :goto_1
    int-to-float v12, v10

    invoke-static {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v7

    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    int-to-float v14, v6

    invoke-static {v12, v13, v14, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v11, :cond_6

    int-to-float v12, v10

    invoke-static {v5, v12, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setTextViewPaint(Landroid/text/TextPaint;Z)V

    const/4 v12, 0x2

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v3, v12, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v12, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    sget v13, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->BOLD_FONT_START_END_PADDING:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    const/4 v12, -0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_7

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v12

    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v12, v3, 0x2

    sub-int v6, p3, v12

    goto :goto_1

    :cond_4
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0a00df

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0b001e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v12, -0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_5

    mul-int/lit8 v12, v3, 0x2

    sub-int v6, v4, v12

    goto/16 :goto_1

    :cond_5
    mul-int/lit8 v12, v3, 0x2

    sub-int v6, p3, v12

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v11, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    const/4 v12, 0x2

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setTextViewPaint(Landroid/text/TextPaint;Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v12

    if-ge v12, v6, :cond_8

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v12

    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_0
.end method

.method private getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getExpiredCheckTime()J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x4d3f6400

    add-long/2addr v2, v4

    return-wide v2
.end method

.method private getSocialStoryViewSubTitleTextSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_DREAM_UX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_subtitle_text_size:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewSubTitleFontSizeOnThumb()I

    move-result v0

    goto :goto_0
.end method

.method private getSocialStoryViewTitleTextSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_DREAM_UX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_title_text_size:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewTitleFontSizeOnThumb()I

    move-result v0

    goto :goto_0
.end method

.method private getSubTitleHeight(I)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumSubTitleHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-float v0, p1

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    int-to-float v1, p1

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumSubTitleHeight:I

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mAlbumSubTitleHeight:I

    return v0
.end method

.method private setTextViewPaint(Landroid/text/TextPaint;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method public drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    return-object v0
.end method

.method public drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 12

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    move-object v7, p1

    check-cast v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isNewChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mUseEventShare:Z

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelExpirationTime()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_6

    const/4 v5, 0x0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->USE_DREAM_UX:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

    if-eqz v0, :cond_7

    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawDimBg(Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mItemWidth:F

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawSocialStoryDecorView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/data/MediaSet;FZZI)V

    :cond_5
    :goto_2
    move-object v0, p2

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getExpiredCheckTime()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDefaultColor:I

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawBlendingBGBottom(Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mItemWidth:F

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawEventLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/data/MediaSet;FZZ)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v4, :cond_a

    if-nez v11, :cond_9

    invoke-direct {p0, p2, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_9
    :goto_3
    const/16 v0, 0x139

    invoke-virtual {p2, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v5, :cond_b

    if-nez v10, :cond_5

    invoke-direct {p0, p2, v8, v9, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->addExpiresDateMarkView(Lcom/sec/android/gallery3d/glcore/GlView;JI)V

    goto :goto_2

    :cond_a
    if-eqz v11, :cond_9

    invoke-virtual {p2, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_5

    invoke-virtual {p2, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_2
.end method

.method public getAllCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllCount()I

    move-result v0

    return v0
.end method

.method public getAllItem(IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItemCount(I)I

    move-result v0

    return v0
.end method

.method public getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemImage(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNailImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getSource()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;I)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, p1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    instance-of v2, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawTitleButtonBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    check-cast p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1, p3, p4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawTitleButtonLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    goto :goto_0
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v5, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v5, :cond_0

    if-gez p2, :cond_5

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v4

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v5, :cond_4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_2
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getItemWidth()F

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawReceivedEventInfoView(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/data/MediaSet;F)V

    :cond_3
    :goto_1
    instance-of v5, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_0

    check-cast p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_4
    check-cast p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getItemWidth()F

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mItemWidth:F

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mItemWidth:F

    invoke-direct {p0, v2, v0, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;F)V

    goto :goto_1

    :cond_5
    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ge p2, v5, :cond_0

    if-nez p3, :cond_6

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_2
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v3, v5, p2

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v1, v5, p2

    invoke-direct {p0, v2, v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_6
    move-object v2, p3

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_2
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    move-result v0

    return v0
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_0

    :goto_0
    return v5

    :cond_0
    iput-object v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    iput-object v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-boolean v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    iput v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    const/4 v7, -0x1

    iput v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    if-eqz p3, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    iput v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v7

    iput v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    iput-boolean v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    sget-boolean v7, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_IS_DUALSCREEN:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v7

    iput v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    :cond_2
    iput-boolean v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget-object v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->isEnabledResStroke()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v5, :cond_4

    iget-object v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    iput-object v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_4
    iget-object v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v5, p5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    iput-object v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move v5, v6

    goto :goto_0

    :cond_5
    if-ltz p1, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v7, :cond_7

    :cond_6
    const-string/jumbo v6, "ComposeChannSetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GetViewInfo pos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, p1

    if-eqz v0, :cond_8

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt p2, v7, :cond_a

    :cond_8
    if-nez v0, :cond_9

    const-string/jumbo v6, "ComposeChannSetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GetViewInfo album is null = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "ComposeChannSetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GetViewInfo position is over index  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v4

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    iput v4, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v3, v7, p2

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    if-eqz v7, :cond_b

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    iput v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v7

    iput v7, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v1, v7, p2

    goto/16 :goto_1

    :cond_b
    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v7

    if-eq v4, v7, :cond_c

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelSharedStatus()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    iput v5, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    goto/16 :goto_1

    :cond_d
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

    if-nez v7, :cond_f

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v7

    if-eq v4, v7, :cond_e

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_f

    :cond_e
    move v5, v6

    goto/16 :goto_0

    :cond_f
    if-nez v3, :cond_1

    goto/16 :goto_0
.end method

.method public requestScreenNailUrgent(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(IIZ)Z

    move-result v0

    return v0
.end method

.method public requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v0

    return v0
.end method

.method public setAlbumWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mItemWidth:F

    return-void
.end method

.method public setInitThumbType(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    return-void
.end method

.method public setObjectSize(III)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mWidthPixel:I

    if-nez p3, :cond_0

    iput p2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mHeightPixelFistAlbum:I

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mHeightPixel:I

    goto :goto_0
.end method

.method public setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIILandroid/graphics/Bitmap;)V

    iput-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-void
.end method

.method public setThumbReslevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setThumbReslevel(I)V

    return-void
.end method
