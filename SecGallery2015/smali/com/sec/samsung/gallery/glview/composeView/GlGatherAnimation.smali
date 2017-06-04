.class Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;
.super Ljava/lang/Object;
.source "GlGatherAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;
    }
.end annotation


# static fields
.field private static final ANIM_STEP_COUNT:I = 0x1e

.field private static final DRAG_ANIM_FIRST:I = 0x1

.field private static final DRAG_ANIM_NONE:I = 0x0

.field private static final DRAG_ANIM_SEC:I = 0x2

.field private static final DRAG_ANIM_THIRD:I = 0x3

.field private static final DST_RESIZE_FACTOR:F = 1.0f

.field private static final MAX_DIM_VALUE:F = 1.0f

.field private static final MIN_DIM_VALUE:F = 0.2f


# instance fields
.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mCurrentAnim:I

.field private mDestObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

.field private mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

.field private final mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

.field public mInverseDragAnimRunning:Z

.field private mIsInverseDragAnimationRunning:Z

.field private mIsMoveToAnimationRunning:Z

.field private final mIsNos:Z

.field private final mListenerInverseDrag:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mListenerMoveTo:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field public mMoveToAnimRunning:Z

.field private mOnDragListener:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollDownArea:F

.field private mScrollSplit:F

.field private mScrollUpArea:F

.field private final mSrcObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbDragSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr2;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr2;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mOnDragListener:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsInverseDragAnimationRunning:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsMoveToAnimationRunning:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mMoveToAnimRunning:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInverseDragAnimRunning:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsNos:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mListenerInverseDrag:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mListenerMoveTo:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startFollowingAnim()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsInverseDragAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->releaseInverDragAnim()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsMoveToAnimationRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mOnDragListener:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->releaseDrag()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createCountObject(FF)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 6

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0159

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v4, v5, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->convX(I)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v5, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->convY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->drawCountView(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v3
.end method

.method private drawCountView(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 18

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct/range {p1 .. p1}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    int-to-long v14, v2

    invoke-virtual {v7, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ","

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    const v15, 0x7f100122

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b0158

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b0157

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v14, v12

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-static {v3, v14, v10, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v14, 0x2

    const/4 v15, 0x2

    invoke-virtual {v9, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    invoke-direct {v8, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    const v15, 0x7f02020c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b0155

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsNos:Z

    if-eqz v14, :cond_2

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v14

    add-int/2addr v14, v11

    if-le v14, v13, :cond_1

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v14

    add-int v13, v14, v11

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v14, 0x2

    const/4 v15, 0x2

    invoke-virtual {v8, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v8, v13, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;)I

    return-object p1

    :cond_2
    const/16 v14, 0x64

    if-lt v2, v14, :cond_3

    add-int/2addr v13, v11

    :cond_3
    const/16 v14, 0x3e8

    if-lt v2, v14, :cond_1

    add-int/2addr v13, v11

    goto :goto_0
.end method

.method private releaseDrag()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocused(Z)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIsBroken:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_2
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_1
.end method

.method private releaseInverDragAnim()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isOriginExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setOriginExpanded(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->releaseDrag()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsInverseDragAnimationRunning:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInverseDragAnimRunning:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mMoveToAnimRunning:Z

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    return-void
.end method

.method private startFollowingAnim()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    const-wide/32 v2, 0x989680

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->start()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    return-void
.end method


# virtual methods
.method public findFocused(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mDestObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mDestObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v7, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->isInclude(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mDestObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusForLogical()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocused(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v1, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v7, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->isInclude(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocused(Z)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_1
.end method

.method public getFocusedObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public getScrollIntensity()F
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsX()F

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsY()F

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollSplit:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollUpArea:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollUpArea:F

    sub-float v2, v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollDownArea:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollDownArea:F

    sub-float v2, v1, v2

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastAnimRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsInverseDragAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsMoveToAnimationRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetDrag()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->stopDim()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->releaseDrag()V

    goto :goto_0
.end method

.method public resetSourceDim(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->unDim()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetDim()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnDragAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mOnDragListener:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    return-void
.end method

.method public setScrollArea(FFF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollSplit:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollUpArea:F

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mScrollDownArea:F

    return-void
.end method

.method public setTargetPos(FF)V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    neg-float v5, p2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, p1, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(IFFF)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsX()F

    move-result v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsY()F

    move-result v5

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsZ()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetPos(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startAnimation(Landroid/util/SparseArray;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ">;",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            "II)V"
        }
    .end annotation

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v6, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mDestObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v7

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v4, v10, v11

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v3, v10, v11

    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFixedTrailObjectSize:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b01ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v3

    move v4, v3

    :cond_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_1

    if-ne v8, p2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-direct {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget v10, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIndex:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    goto :goto_1

    :cond_3
    new-instance v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-direct {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget v10, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIndex:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPosIndex()I

    move-result v10

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    iput-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    const/4 v5, 0x0

    :goto_2
    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    if-ge v5, v10, :cond_6

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v10, v9, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIndex:I

    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v8, :cond_4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getHeight(Z)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSize(FF)V

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v10

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v11

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(FFF)V

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setCurrentPosToSource()V

    iget v10, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mWidth:F

    iget v11, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mHeight:F

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSourceSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isDynamicLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getHeight(Z)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetSize(FF)V

    :goto_4
    move/from16 v0, p4

    int-to-float v10, v0

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual {v9, v10, v11, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetPos(FFF)V

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->dim()V

    const v10, 0x3f4ccccd    # 0.8f

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    sub-int/2addr v11, v5

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const v11, 0x3e4ccccd    # 0.2f

    add-float v2, v10, v11

    invoke-virtual {v9, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setDim(F)V

    goto :goto_3

    :cond_5
    invoke-virtual {v9, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetSize(FF)V

    goto :goto_4

    :cond_6
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isDynamicLayout()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getWidth(Z)F

    move-result v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getHeight(Z)F

    move-result v3

    :cond_7
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    invoke-direct {p0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->createCountObject(FF)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method

.method public startDragAnimation()V
    .locals 15

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsInverseDragAnimationRunning:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsMoveToAnimationRunning:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v7, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    move v1, v7

    move v2, v7

    move v3, v9

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setEnableAnim(ZZZZZ)V

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    move-object v6, v0

    move v8, v7

    move v10, v9

    move v11, v9

    invoke-virtual/range {v6 .. v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setEnableAnim(ZZZZZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playSoundResource(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v12

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V

    invoke-virtual {v12, v1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    goto :goto_0
.end method

.method public startInverseDragAnimation()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playSoundResource(I)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    invoke-virtual {v1, v2, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->addPos(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->releasePosIndex(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    const/16 v8, 0xc8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mSrcObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setCurrentPosToSource()V

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSourceSize(FF)V

    iget v1, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    iget v2, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetSize(FF)V

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v1

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v2

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetPos(FFF)V

    const/4 v1, 0x0

    int-to-long v2, v8

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    move v1, v13

    move v2, v13

    move v3, v12

    move v4, v12

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setEnableAnim(ZZZZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mListenerInverseDrag:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iput-boolean v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInverseDragAnimRunning:Z

    goto/16 :goto_0
.end method

.method public startMoveToAnimation()V
    .locals 14

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mFollowAnim:Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playSoundResource(I)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->addPos(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->releasePosIndex(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    const/16 v13, 0x28

    const/16 v8, 0xc8

    const/16 v1, 0x1e

    if-le v7, v1, :cond_2

    const/16 v13, 0xa

    const/16 v8, 0x32

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setCurrentPosToSource()V

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSourceSize(FF)V

    iget v1, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    iget v2, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetSize(FF)V

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v1

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v2

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCount:I

    sub-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x1

    mul-int v12, v1, v13

    const/4 v1, 0x0

    int-to-long v2, v8

    int-to-long v4, v12

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mInterpolator:Lcom/sec/android/gallery3d/glcore/GlInterpolator;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setEnableAnim(ZZZZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mListenerMoveTo:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mMoveToAnimRunning:Z

    goto/16 :goto_0
.end method
