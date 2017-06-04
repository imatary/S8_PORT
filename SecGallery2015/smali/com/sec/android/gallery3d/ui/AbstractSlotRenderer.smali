.class abstract Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;


# static fields
.field private static final FOCUST_BORDER_THICKNESS:I = 0x6

.field private static final IS_NOS:Z

.field private static final IS_TABLET:Z


# instance fields
.field private filmstripBorderMargin:I

.field private final mBestPhotoIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private final mBurstShotDownloadedicon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private final mCameraShortcut:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private final mFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

.field private final mFramePressed:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

.field private final mFrameSelected:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

.field private final mGenericFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

.field private final mSlotBoxStroke:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->IS_TABLET:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->IS_NOS:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 5

    const v4, 0x7f020146

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    const v3, 0x7f02021a

    invoke-direct {v2, v0, v3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-direct {v2, v0, v4}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-direct {v2, v0, v4}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    const v3, 0x7f020214

    invoke-direct {v2, v0, v3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mGenericFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    const v3, 0x7f020213

    invoke-direct {v2, v0, v3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mSlotBoxStroke:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f020144

    invoke-direct {v2, v0, v3}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mCameraShortcut:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->IS_TABLET:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceSaveIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f020174

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBurstShotDownloadedicon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    :goto_0
    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f020173

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBestPhotoIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    return-void

    :cond_1
    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f020141

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBurstShotDownloadedicon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    goto :goto_0
.end method

.method private static drawFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/glrenderer/Texture;IIII)V
    .locals 6

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/Texture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method private drawIcon(Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V
    .locals 5

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBurstShotDownloadedicon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    add-int/2addr v3, v4

    sub-int v1, p3, v3

    :goto_0
    const/4 v0, 0x2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBestPhotoIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->IS_NOS:Z

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    :goto_1
    invoke-virtual {p1, p2, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    return-void

    :cond_0
    rem-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    :goto_2
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    add-int v1, v3, v4

    goto :goto_2

    :cond_2
    div-int v3, p5, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int v3, p4, v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->filmstripBorderMargin:I

    sub-int v2, v3, v4

    goto :goto_1
.end method


# virtual methods
.method drawBestPhotoIcon(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBestPhotoIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawIcon(Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V

    return-void
.end method

.method drawBurstShotDownloadedIcon(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mBurstShotDownloadedicon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawIcon(Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V

    return-void
.end method

.method drawCameraShortcut(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mCameraShortcut:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method drawContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/Texture;III)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    if-eqz p5, :cond_0

    int-to-float v1, p3

    div-float/2addr v1, v3

    int-to-float v2, p4

    div-float/2addr v2, v3

    invoke-interface {p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v1, p5

    invoke-interface {p1, v1, v4, v4, v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v1, p3

    int-to-float v1, v1

    div-float/2addr v1, v3

    neg-int v2, p4

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    :cond_0
    int-to-float v1, p3

    invoke-interface {p2}, Lcom/sec/android/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p4

    invoke-interface {p2}, Lcom/sec/android/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-interface {p1, v0, v0, v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    invoke-interface {p2, p1, v6, v6}, Lcom/sec/android/gallery3d/glrenderer/Texture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method drawFocusFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/glrenderer/Texture;IIII)V

    return-void
.end method

.method drawGenericFocusFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mGenericFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mGenericFocusBox:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/glrenderer/Texture;IIII)V

    return-void
.end method

.method drawPressedFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/glrenderer/Texture;IIII)V

    return-void
.end method

.method drawSelectedFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/glrenderer/Texture;IIII)V

    return-void
.end method

.method drawSlotStrokeFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mSlotBoxStroke:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->mSlotBoxStroke:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, 0x2

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/glrenderer/Texture;IIII)V

    return-void
.end method
