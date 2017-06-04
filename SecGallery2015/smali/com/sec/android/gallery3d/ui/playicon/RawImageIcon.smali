.class public Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "RawImageIcon.java"


# static fields
.field private static final BACKGROUND_ALPHA_VALUE:I = 0xe6


# instance fields
.field private final RAW_LABEL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const-string/jumbo v0, "RAW"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->RAW_LABEL:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mAlignType:I

    const v0, 0x7f020145

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconResId:I

    return-void
.end method


# virtual methods
.method public getAccessibilityString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "RAW"

    return-object v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 13

    const/4 v12, 0x0

    const/16 v10, 0xfa

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const v9, 0x7f0b05c1

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string/jumbo v9, "RAW"

    const-string/jumbo v10, "RAW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v12, v10, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const v9, 0x7f0b05c0

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v6, v9

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v7, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconResId:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v9, 0xe6

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    mul-float v9, v8, v11

    add-float/2addr v9, v7

    float-to-int v9, v9

    mul-float v10, v8, v11

    add-float/2addr v10, v6

    float-to-int v10, v10

    invoke-static {v9, v10, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string/jumbo v9, "RAW"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v6

    div-float/2addr v10, v11

    add-float/2addr v10, v6

    invoke-virtual {v2, v9, v8, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v9, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v9, v1}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v9, v12}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setOpaque(Z)V

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v9
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getActionBarHeightPixel()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b078e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b078d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
