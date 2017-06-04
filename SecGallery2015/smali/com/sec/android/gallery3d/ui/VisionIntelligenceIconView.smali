.class public Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView;
.source "VisionIntelligenceIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;,
        Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION_HIDE:I = 0xc8

.field private static final ANIM_DURATION_SHOW:I = 0x12c

.field private static final ANIM_DURATION_SHOW_SCALE:I = 0x320

.field private static final EXPAND_TOUCH_AREA:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VisionIntelligenceIcon"


# instance fields
.field private mDefaultIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

.field private mIsObjectSearch:Z

.field private mObjectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

.field private mObjectRect:Landroid/graphics/RectF;

.field private final mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

.field private mTagData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/PositionController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIsObjectSearch:Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Lcom/sec/android/gallery3d/ui/PositionController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)F
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getImageScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private genericMotionTTS(Z)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->showAccessibilityFocus(ZZ)V

    return-void
.end method

.method private getCenterRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getDefaultIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mDefaultIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForDefault;-><init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mDefaultIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mDefaultIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    return-object v0
.end method

.method private getImageScale()F
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private getObjectIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$VisionIntelligenceIconForObject;-><init>(Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    return-object v0
.end method


# virtual methods
.method public getAccMeasuredRect()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getCenterRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getIsObjectSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIsObjectSearch:Z

    return v0
.end method

.method public getObjectRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getObjectTagData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mTagData:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Z)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "VisionIntelligenceIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public layout(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->layout(IIII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getCenterRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getCenterRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getCenterRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getCenterRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->setBoundsCenter(IIII)V

    return-void
.end method

.method public onGenericMotion(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0x3eb

    if-ne v6, v7, :cond_1

    move v2, v4

    :goto_0
    if-ne v0, v8, :cond_2

    if-ne v1, v8, :cond_2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->showAccessibilityFocus(ZZ)V

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v6, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getCenterRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->showAccessibilityFocus(ZZ)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->isShowAccessbilityFocus()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x3ea

    if-eq v5, v6, :cond_0

    :cond_5
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->genericMotionTTS(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v4, v2}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->showAccessibilityFocus(ZZ)V

    goto :goto_1
.end method

.method public setIsObjectSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIsObjectSearch:Z

    return-void
.end method

.method public setObjectRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mObjectRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setObjectTagData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mTagData:Ljava/lang/String;

    return-void
.end method

.method public show(Ljava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Lcom/sec/android/gallery3d/anim/ScaleAnimation;-><init>(FF)V

    new-instance v2, Lcom/samsung/android/view/animation/ElasticCustom;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/view/animation/ElasticCustom;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0x320

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    const/16 v3, 0x64

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "VisionIntelligenceIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateLayout()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIsObjectSearch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getObjectIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->invalidate()V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setOffset(IIII)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getDefaultIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    move-result-object v0

    goto :goto_0
.end method
