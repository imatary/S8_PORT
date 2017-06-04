.class public Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "UnlockIcon.java"


# static fields
.field private static final mUseGraceUnlockViewUI:Z

.field private static final sIsTablet:Z


# instance fields
.field private mIconTextHeight:I

.field private mShowAccessibilityFocusString:Z

.field private mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

.field private mTextMarginBottom:I

.field private mTextMarginTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->sIsTablet:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceUnlockViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mUseGraceUnlockViewUI:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mShowAccessibilityFocusString:Z

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020192

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconResId:I

    :goto_0
    const v0, 0x7f0a0410

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mAccessibilityStringId:I

    return-void

    :cond_0
    const v0, 0x7f020191

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconResId:I

    goto :goto_0
.end method

.method private getStringPosX(Landroid/graphics/Rect;)I
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getStringPosY(Landroid/graphics/Rect;)I
    .locals 5

    sget-boolean v2, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mUseGraceUnlockViewUI:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mTextMarginBottom:I

    sub-int v0, v2, v3

    sget-boolean v2, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->sIsTablet:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x7f0b0298

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mTextMarginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getExtraMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0
.end method

.method private getStringTexture()Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;
    .locals 11

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mUseGraceUnlockViewUI:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b039b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f100255

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x7f0b039c

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v0, 0x7f0b0399

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mTextMarginBottom:I

    :goto_0
    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->sIsTablet:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b0299

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0499

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x0

    sget-boolean v7, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mUseGraceUnlockViewUI:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x3fc00000    # 1.5f

    :goto_2
    invoke-static/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;ZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mTextMarginTop:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconTextHeight:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getExtraMargin()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getExtraMargin()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/sec/android/gallery3d/ui/GLView;->layout(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    return-object v0

    :cond_1
    const v0, 0x7f0b039d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v0, 0x7f0b039a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mTextMarginBottom:I

    goto :goto_0

    :cond_2
    const v0, 0x7f0b029a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const v0, 0x7f0b029b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f100254

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const v0, 0x7f0b0298

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mTextMarginTop:I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    mul-int/lit8 v2, v9, 0x2

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    mul-int/lit8 v2, v9, 0x2

    sub-int v1, v0, v2

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    goto/16 :goto_1

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_2
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    new-instance v6, Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Point;->x:I

    iget v1, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringPosX(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringPosY(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mShowAccessibilityFocusString:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/Texture;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringPosX(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringPosY(Landroid/graphics/Rect;)I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/Texture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method getExtraMargin()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mUseGraceUnlockViewUI:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->sIsTablet:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mIconTextHeight:I

    div-int/lit8 v0, v1, 0x2

    goto :goto_0
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->layout(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    return-void
.end method

.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playUnlockIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotion(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringPosX(Landroid/graphics/Rect;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->getStringPosY(Landroid/graphics/Rect;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mShowAccessibilityFocusString:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mShowAccessibilityFocusString:Z

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0499

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/GLView;->invalidate()V

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mShowAccessibilityFocusString:Z

    return v3

    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->mShowAccessibilityFocusString:Z

    goto :goto_0
.end method
