.class Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
.source "VisionIntelligenceIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisionIntelligenceIconForDefault"
.end annotation


# instance fields
.field mResId:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;-><init>(Lcom/sec/android/gallery3d/ui/ButtonIconView;)V

    const v0, 0x7f0201b8

    iput v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mResId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;-><init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mDownOnButton:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mShowAccessibilityFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a04da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02035f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mResId:I

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mResId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->this$0:Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->mIconRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
