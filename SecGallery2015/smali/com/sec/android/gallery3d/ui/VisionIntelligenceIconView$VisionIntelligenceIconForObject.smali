.class Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
.source "VisionIntelligenceIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisionIntelligenceIconForObject"
.end annotation


# instance fields
.field mResId:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;-><init>(Lcom/sec/android/gallery3d/ui/ButtonIconView;)V

    const v0, 0x7f0201b8

    iput v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mResId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;-><init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mDownOnButton:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mShowAccessibilityFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a04da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020360

    iput v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mResId:I

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mResId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 11

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$200(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$200(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # invokes: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getImageScale()F
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$300(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$200(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # invokes: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getImageScale()F
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$300(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v0, v9

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v2, v9, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v2, v9

    :cond_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    int-to-float v9, v1

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v10, v10, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v6, v9

    int-to-float v9, v1

    mul-float/2addr v9, v2

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v10, v10, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v5, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v9, v10

    float-to-int v4, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    mul-float/2addr v9, v10

    float-to-int v7, v9

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconRect:Landroid/graphics/Rect;

    add-int v10, v6, v5

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconRect:Landroid/graphics/Rect;

    add-int v10, v4, v7

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconRect:Landroid/graphics/Rect;

    add-int v10, v6, v5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, 0x14

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->mIconRect:Landroid/graphics/Rect;

    add-int v10, v4, v7

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, 0x14

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v10

    float-to-int v6, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v9, v9, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v5, v9

    int-to-float v9, v0

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v10, v10, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v4, v9

    int-to-float v9, v0

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    # getter for: Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v10, v10, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v7, v9

    goto :goto_0
.end method
