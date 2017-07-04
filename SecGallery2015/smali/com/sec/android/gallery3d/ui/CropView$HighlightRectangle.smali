.class Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRectangle"
.end annotation


# instance fields
.field private mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mHighlightRect:Landroid/graphics/RectF;

.field private final mIsAndroidM:Z

.field private mLeftBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mLeftTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mMovingEdges:I

.field private mReferenceX:F

.field private mReferenceY:F

.field private mRightBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mRightTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/CropView;)V
    .locals 7

    const v6, 0x7f020270

    const v5, 0x7f02026f

    const/4 v1, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mIsAndroidM:Z

    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mIsAndroidM:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    const v2, 0x7f020091

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mLeftTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    const v2, 0x7f020090

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mLeftBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    const v2, 0x7f020093

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mRightTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    const v2, 0x7f020092

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mRightBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    :goto_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$502(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->init(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    goto :goto_1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    return v0
.end method

.method private drawHighlightRectangle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;)V
    .locals 55

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$2000(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3100(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3200(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLcdRect()Landroid/graphics/Rect;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v50, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$2700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v48, v1, v2

    const/4 v1, 0x0

    cmpl-float v1, v48, v1

    if-lez v1, :cond_5

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v48, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v48, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3400(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000a6

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, v49

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v1

    move/from16 v0, v50

    int-to-float v1, v0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v4, v5

    sub-float v4, v1, v4

    move/from16 v0, v49

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v9, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move/from16 v0, v49

    int-to-float v1, v0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v2, v4

    sub-float v11, v1, v2

    move-object/from16 v7, p1

    move v12, v6

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v9, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$3100(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v10, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$3200(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v11, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v46

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v47

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v8, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v9, v47, v1

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v8, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v9, v47, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v12

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v13, v1, v3

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v14, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v15, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v16, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-interface/range {v12 .. v17}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v13, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v14, v47, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v17

    move-object/from16 v12, p1

    move v15, v11

    move/from16 v16, v10

    invoke-interface/range {v12 .. v17}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v13, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v14, v47, v1

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move v15, v11

    move/from16 v16, v10

    invoke-interface/range {v12 .. v17}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const v1, 0x7f0b00c6

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    cmpg-float v1, v48, v1

    if-gez v1, :cond_2

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v48, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v48, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3600()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$3700(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v13, v1, v3

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v14, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v15, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-interface/range {v12 .. v17}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$2700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_7
    new-instance v16, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->STROKE:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setStyle(Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$2700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v15, v1

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mIsAndroidM:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0b00c5

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    :goto_3
    const/high16 v1, 0x4d000000    # 1.34217728E8f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p1

    invoke-interface/range {v12 .. v18}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/high16 v1, 0x8000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v20, v15, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move-object/from16 v21, v16

    invoke-interface/range {v17 .. v23}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v20, v15, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move-object/from16 v21, v16

    invoke-interface/range {v17 .. v23}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mIsAndroidM:Z

    if-nez v1, :cond_9

    const/high16 v1, 0x45000000    # 2048.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    const/high16 v1, 0x40000000    # 2.0f

    add-float v20, v15, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move-object/from16 v21, v16

    invoke-interface/range {v17 .. v23}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v20, v15, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move-object/from16 v21, v16

    invoke-interface/range {v17 .. v23}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_9
    const v1, 0x7f0b00c4

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3800()I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float v20, v15, v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move-object/from16 v21, v16

    invoke-interface/range {v17 .. v23}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3800()I

    move-result v1

    const v2, -0x55000001

    and-int/2addr v1, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v24, v20, v1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move-object/from16 v25, v16

    invoke-interface/range {v21 .. v27}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v24, v20, v1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move-object/from16 v25, v16

    invoke-interface/range {v21 .. v27}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3800()I

    move-result v1

    const v2, 0x55ffffff    # 3.518437E13f

    and-int/2addr v1, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    const/high16 v1, 0x40000000    # 2.0f

    add-float v24, v20, v1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move-object/from16 v25, v16

    invoke-interface/range {v21 .. v27}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v24, v20, v1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move-object/from16 v25, v16

    invoke-interface/range {v21 .. v27}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mIsAndroidM:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float v24, v20, v1

    const v1, 0x7f0b00c5

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    const/high16 v1, 0x4d000000    # 1.34217728E8f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move-object/from16 v25, v16

    invoke-interface/range {v21 .. v27}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/high16 v1, 0x8000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v28, v24, v1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, p1

    move-object/from16 v29, v16

    invoke-interface/range {v25 .. v31}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v28, v24, v1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, p1

    move-object/from16 v29, v16

    invoke-interface/range {v25 .. v31}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_a
    const v1, 0x7f0b00c4

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v26, v1, v2

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v27, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float v28, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v29, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3700(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v30

    move-object/from16 v25, p1

    invoke-interface/range {v25 .. v30}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v26, v1, v3

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v27, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v28, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float v29, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3700(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v30

    move-object/from16 v25, p1

    invoke-interface/range {v25 .. v30}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    const v1, 0x7f0b00c7

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v53

    if-eqz v53, :cond_3

    new-instance v30, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct/range {v30 .. v30}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    move/from16 v0, v53

    int-to-float v1, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    const v2, 0x7f1000a7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3700(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v54

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    add-float v1, v1, v54

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v26, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    add-float v32, v26, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v1, v1, v54

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v27, v1, v2

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v1, v1, v54

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v54

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v29, v1, v2

    move-object/from16 v25, p1

    move/from16 v28, v26

    invoke-interface/range {v25 .. v30}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v31, p1

    move/from16 v33, v27

    move/from16 v34, v32

    move/from16 v35, v29

    move-object/from16 v36, v30

    invoke-interface/range {v31 .. v36}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v54

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    sub-float v34, v1, v2

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v54

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v54

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v36, v1, v2

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    add-float v1, v1, v54

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v35, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    add-float v39, v35, v1

    move-object/from16 v33, p1

    move/from16 v37, v35

    move-object/from16 v38, v30

    invoke-interface/range {v33 .. v38}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v37, p1

    move/from16 v38, v34

    move/from16 v40, v36

    move/from16 v41, v39

    move-object/from16 v42, v30

    invoke-interface/range {v37 .. v42}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$3100(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v10, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$3200(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v11, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v46

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v47

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v8, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v9, v47, v1

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v8, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v9, v47, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v12

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v41, v1, v3

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v42, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v43, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v44, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v45

    move-object/from16 v40, p1

    invoke-interface/range {v40 .. v45}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v41, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v42, v47, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-result-object v45

    move-object/from16 v40, p1

    move/from16 v43, v11

    move/from16 v44, v10

    invoke-interface/range {v40 .. v45}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v41, v46, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v42, v47, v1

    const/16 v45, 0x0

    move-object/from16 v40, p1

    move/from16 v43, v11

    move/from16 v44, v10

    invoke-interface/range {v40 .. v45}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    goto/16 :goto_2
.end method

.method private initDefaultCropHandler()Landroid/graphics/RectF;
    .locals 15

    const/4 v10, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v12

    mul-float v1, v9, v12

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v12

    mul-float v2, v9, v12

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1900(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1802(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    sub-float/2addr v12, v2

    div-float/2addr v12, v13

    iput v12, v9, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v2

    iput v12, v9, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    cmpg-float v9, v9, v1

    if-gtz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    sub-float/2addr v12, v1

    div-float/2addr v12, v13

    iput v12, v9, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v1

    iput v12, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2000(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v4

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_0
    and-int/2addr v4, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2000(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v5, v10

    :goto_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v4, :cond_6

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v3, :cond_5

    const v9, 0x7f0b00d0

    :goto_2
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2200(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    sub-int/2addr v10, v6

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$2400(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v12

    sub-int/2addr v10, v12

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    iget-object v13, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-static {v10, v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_4
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    :cond_2
    :goto_5
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    return-object v9

    :cond_3
    move v9, v11

    goto/16 :goto_0

    :cond_4
    move v5, v11

    goto/16 :goto_1

    :cond_5
    const v9, 0x7f0b00cf

    goto :goto_2

    :cond_6
    move v6, v11

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v10, v9, Landroid/graphics/RectF;->top:F

    int-to-float v12, v6

    sub-float/2addr v10, v12

    iput v10, v9, Landroid/graphics/RectF;->top:F

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v10, v9, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v12, v6, 0x2

    int-to-float v12, v12

    sub-float/2addr v10, v12

    iput v10, v9, Landroid/graphics/RectF;->top:F

    goto :goto_4

    :cond_9
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2500(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_f

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    div-float/2addr v10, v13

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    invoke-static {v10, v14, v12}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v2

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    invoke-static {v10, v14, v12}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v10

    div-float v0, v9, v10

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2600(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    if-le v9, v10, :cond_d

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-static {v1, v14, v12}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    add-float/2addr v10, v12

    sub-float/2addr v10, v0

    div-float/2addr v10, v13

    iput v10, v9, Landroid/graphics/RectF;->top:F

    :goto_6
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v0

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    :goto_7
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$2400(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    :cond_a
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-boolean v9, v9, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_b
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2800(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const v10, 0x3e2aaaab

    mul-float v7, v9, v10

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    :cond_c
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    goto/16 :goto_5

    :cond_d
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    sub-float v12, v1, v0

    div-float/2addr v12, v13

    add-float/2addr v10, v12

    iput v10, v9, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :cond_e
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float/2addr v10, v0

    div-float/2addr v10, v13

    iput v10, v9, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :cond_f
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float/2addr v10, v1

    div-float/2addr v10, v13

    iput v10, v9, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v1

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v10

    mul-float v8, v9, v10

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float/2addr v10, v8

    div-float/2addr v10, v13

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v8

    iput v10, v9, Landroid/graphics/RectF;->right:F

    goto/16 :goto_7
.end method

.method private moveEdges(Landroid/view/MotionEvent;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    move/from16 v23, v0

    sub-float v23, v8, v23

    div-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v10, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    move/from16 v23, v0

    sub-float v23, v9, v23

    div-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v11, v23, v24

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1000(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v14

    :cond_0
    if-nez v14, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x10

    if-eqz v23, :cond_7

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v10, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v10

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v11, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v11

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v11

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v10

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v10

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v10

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v10

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v11, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-nez v23, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v23

    if-nez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$1102(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$502(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1500(Lcom/sec/android/gallery3d/ui/CropView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    goto/16 :goto_0

    :cond_7
    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->inverseMapPoint(Landroid/graphics/PointF;)V

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    add-float v13, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    sub-float v18, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    add-float v21, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    sub-float v5, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1200(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v23

    if-eqz v23, :cond_f

    const v15, 0x3c4ccccd    # 0.0125f

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    add-float v24, v13, v15

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    const v24, 0x3ca3d70a    # 0.02f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_8

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v25, v18, v15

    invoke-static/range {v23 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const v24, 0x3ca3d70a    # 0.02f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_9

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v25, v5, v15

    invoke-static/range {v23 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const v24, 0x3ca3d70a    # 0.02f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_a

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_b

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    add-float v24, v21, v15

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    const v24, 0x3ca3d70a    # 0.02f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_b

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v20, v23, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v24

    div-float v23, v23, v24

    cmpl-float v23, v23, v20

    if-lez v23, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v23

    div-float v12, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_10

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v12

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    :cond_c
    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v24

    div-float v23, v23, v24

    cmpl-float v23, v23, v20

    if-lez v23, :cond_14

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v22, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_13

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    sub-float v23, v23, v22

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-nez v23, :cond_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v23

    if-nez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$1102(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    goto/16 :goto_1

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    sub-float v23, v23, v12

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v22, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    sub-float v23, v23, v22

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v22

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v22

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v23

    div-float v12, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v12

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    sub-float v23, v23, v12

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4
.end method

.method private setInitRectangle(Landroid/graphics/RectF;)V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$1100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$502(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->initDefaultCropHandler()Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3900()F

    move-result v3

    div-float v2, v3, v5

    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3900()F

    move-result v3

    div-float v0, v3, v5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$2500(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$2500(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v3

    div-float v0, v2, v3

    :goto_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$4000(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$4100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    div-float v3, v7, v2

    div-float v4, v7, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    div-float v1, v7, v0

    :goto_3
    mul-float/2addr v0, v1

    mul-float/2addr v2, v1

    :goto_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    sub-float v4, v7, v2

    sub-float v5, v7, v0

    add-float v6, v7, v2

    add-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$2500(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v3

    mul-float v2, v0, v3

    goto :goto_2

    :cond_4
    div-float v1, v7, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v2, v3, v5

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v0, v3, v5

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_4
.end method

.method private setMovingEdges(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v15}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    iget v15, v9, Landroid/graphics/RectF;->left:F

    sub-float v15, v13, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v15, v9, Landroid/graphics/RectF;->right:F

    sub-float v15, v13, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v15, v9, Landroid/graphics/RectF;->top:F

    sub-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v15}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b00ca

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-int/lit8 v16, v12, 0x4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_0

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v15

    mul-int/lit8 v16, v12, 0x4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    :cond_0
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v15

    float-to-int v15, v15

    div-int/lit8 v12, v15, 0x4

    :cond_1
    :goto_0
    iget v15, v9, Landroid/graphics/RectF;->left:F

    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpl-float v15, v13, v15

    if-lez v15, :cond_4

    iget v15, v9, Landroid/graphics/RectF;->right:F

    int-to-float v0, v12

    move/from16 v16, v0

    sub-float v15, v15, v16

    cmpg-float v15, v13, v15

    if-gez v15, :cond_4

    iget v15, v9, Landroid/graphics/RectF;->top:F

    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpl-float v15, v14, v15

    if-lez v15, :cond_4

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v12

    move/from16 v16, v0

    sub-float v15, v15, v16

    cmpg-float v15, v14, v15

    if-gez v15, :cond_4

    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    div-int/lit8 v12, v15, 0x4

    goto :goto_0

    :cond_4
    iget v15, v9, Landroid/graphics/RectF;->top:F

    int-to-float v0, v12

    move/from16 v16, v0

    sub-float v15, v15, v16

    cmpg-float v15, v15, v14

    if-gtz v15, :cond_c

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpg-float v15, v14, v15

    if-gtz v15, :cond_c

    const/4 v7, 0x1

    :goto_2
    iget v15, v9, Landroid/graphics/RectF;->left:F

    int-to-float v0, v12

    move/from16 v16, v0

    sub-float v15, v15, v16

    cmpg-float v15, v15, v13

    if-gtz v15, :cond_d

    iget v15, v9, Landroid/graphics/RectF;->right:F

    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_d

    const/4 v6, 0x1

    :goto_3
    if-eqz v7, :cond_8

    int-to-float v15, v12

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_e

    const/4 v8, 0x1

    :goto_4
    int-to-float v15, v12

    cmpg-float v15, v3, v15

    if-gtz v15, :cond_f

    const/4 v10, 0x1

    :goto_5
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    cmpg-float v15, v2, v3

    if-gez v15, :cond_10

    const/4 v8, 0x1

    :goto_6
    if-nez v8, :cond_11

    const/4 v10, 0x1

    :cond_5
    :goto_7
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_6
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v15}, Lcom/sec/android/gallery3d/ui/CropView;->access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v15

    if-eqz v15, :cond_8

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v16, v0

    iget v15, v9, Landroid/graphics/RectF;->top:F

    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    add-float v15, v15, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v15, v17

    cmpl-float v15, v14, v15

    if-lez v15, :cond_12

    const/16 v15, 0x8

    :goto_8
    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_8
    if-eqz v6, :cond_2

    int-to-float v15, v12

    cmpg-float v15, v5, v15

    if-gtz v15, :cond_13

    const/4 v11, 0x1

    :goto_9
    int-to-float v15, v12

    cmpg-float v15, v4, v15

    if-gtz v15, :cond_14

    const/4 v1, 0x1

    :goto_a
    if-eqz v11, :cond_9

    if-eqz v1, :cond_9

    cmpg-float v15, v5, v4

    if-gez v15, :cond_15

    const/4 v11, 0x1

    :goto_b
    if-nez v11, :cond_16

    const/4 v1, 0x1

    :cond_9
    :goto_c
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v15}, Lcom/sec/android/gallery3d/ui/CropView;->access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v16, v0

    iget v15, v9, Landroid/graphics/RectF;->left:F

    iget v0, v9, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    add-float v15, v15, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v15, v17

    cmpl-float v15, v13, v15

    if-lez v15, :cond_17

    const/4 v15, 0x4

    :goto_d
    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_12
    const/4 v15, 0x2

    goto :goto_8

    :cond_13
    const/4 v11, 0x0

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    goto :goto_a

    :cond_15
    const/4 v11, 0x0

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    goto :goto_c

    :cond_17
    const/4 v15, 0x1

    goto :goto_d
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v2

    const v3, 0x7f0a00d9

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isMoved()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->isImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$1600(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v2, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->setMovingEdges(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$1702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->moveEdges(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$1702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    iput v2, p0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected renderBackground(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->isCropAreaChanged()Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v29

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->drawHighlightRectangle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$2000(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_2

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mIsAndroidM:Z

    move/from16 v34, v0

    if-eqz v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0b00c3

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    int-to-float v0, v6

    move/from16 v35, v0

    sub-float v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mLeftBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v34, v34, v35

    int-to-float v0, v6

    move/from16 v35, v0

    add-float v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mRightTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v34, v34, v35

    int-to-float v0, v6

    move/from16 v35, v0

    add-float v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v31

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    int-to-float v0, v6

    move/from16 v35, v0

    sub-float v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mLeftTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mLeftBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mRightTopArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mRightBottomArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->initDefaultCropHandler()Landroid/graphics/RectF;

    move-result-object v29

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$3000()I

    move-result v13

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    add-float v34, v34, v35

    const/high16 v35, 0x40000000    # 2.0f

    div-float v12, v34, v35

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    add-float v34, v34, v35

    const/high16 v35, 0x40000000    # 2.0f

    div-float v11, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v4, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v5, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v14, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v15, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v7, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v8, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v16, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v17, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x2

    if-eqz v34, :cond_b

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_c

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x4

    if-eqz v34, :cond_d

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x8

    if-eqz v34, :cond_e

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v34

    const/16 v35, 0x0

    cmpl-float v34, v34, v35

    if-lez v34, :cond_f

    const/16 v34, 0x1

    :goto_7
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-nez v34, :cond_7

    sub-float v34, v11, v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v27

    sub-float v34, v12, v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    sub-float v35, v35, v4

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    sub-float v35, v35, v4

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    sub-int v35, v35, v13

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    sub-float v35, v35, v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    sub-float v35, v35, v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    sub-int v35, v35, v13

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    sub-float v34, v12, v8

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_4

    if-eqz v21, :cond_4

    if-nez v22, :cond_4

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    sub-float v35, v35, v7

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    sub-int v35, v35, v13

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_5

    if-eqz v20, :cond_5

    if-nez v22, :cond_5

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    sub-float v35, v35, v7

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_5
    sub-float v34, v11, v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_6

    if-eqz v22, :cond_6

    if-nez v20, :cond_6

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    sub-float v35, v35, v8

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_7

    if-eqz v19, :cond_7

    if-nez v20, :cond_7

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mArrowPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    sub-float v35, v35, v8

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    sub-int v35, v35, v13

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_7
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    sub-float v34, v34, v14

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    sub-float v34, v34, v15

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    sub-int v10, v34, v13

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    sub-float v34, v34, v14

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    sub-int v31, v34, v13

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    sub-float v34, v34, v15

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicator:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    sub-float v34, v34, v16

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v23

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    sub-float v34, v34, v17

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v32

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    sub-float v34, v34, v16

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    sub-int v30, v34, v13

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    sub-float v34, v34, v17

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    sub-int v9, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_8

    if-eqz v20, :cond_8

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_9

    if-eqz v20, :cond_9

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_a

    if-eqz v21, :cond_a

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/gallery3d/ui/CropView;->access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v34

    if-eqz v34, :cond_0

    if-eqz v21, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->mEdgeIndicatorPress:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_2

    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_5

    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_6

    :cond_f
    const/16 v34, 0x0

    goto/16 :goto_7
.end method
