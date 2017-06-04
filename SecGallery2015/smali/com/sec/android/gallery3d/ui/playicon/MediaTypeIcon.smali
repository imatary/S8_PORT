.class public abstract Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.super Ljava/lang/Object;
.source "MediaTypeIcon.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/playicon/Icon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;
    }
.end annotation


# static fields
.field public static final ALIGN_DEFAULT:I = 0x1

.field static final ALIGN_TOP_END:I = 0x2

.field static final FeatureUsePhotoIconWithoutBorder:Z

.field private static final NONE:I = -0x1


# instance fields
.field private innerPadding:I

.field mAccessibilityStringId:I

.field mAlignType:I

.field mBundle:Landroid/os/Bundle;

.field final mContext:Landroid/content/Context;

.field private mDownOnButton:Z

.field private mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

.field private mFocused:Z

.field private mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

.field final mIconRect:Landroid/graphics/Rect;

.field mIconResId:I

.field mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

.field mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field mParent:Lcom/sec/android/gallery3d/ui/GLView;

.field mPhotoIconView:Lcom/sec/android/gallery3d/ui/GLView;

.field mSAEventId:Ljava/lang/String;

.field private mShowAccessibilityFocus:Z

.field mUpdateListener:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePhotoIconWithoutBorder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->FeatureUsePhotoIconWithoutBorder:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconResId:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAccessibilityStringId:I

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mSAEventId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableKeyBoard:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocused:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mDownOnButton:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocused:Z

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    if-ne v0, v4, :cond_3

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mShowAccessibilityFocus:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    if-ne v0, v4, :cond_6

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/Texture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    float-to-int v3, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    if-ne v0, v4, :cond_5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->innerPadding:I

    add-int v2, v0, v1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->innerPadding:I

    add-int v3, v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    float-to-int v3, v0

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    float-to-int v3, v0

    goto :goto_3
.end method

.method protected getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/Texture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f020214

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAccessibilityStringId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAccessibilityStringId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlignType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    return v0
.end method

.method getExtraMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    return-object v0
.end method

.method getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v6, :cond_2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    sget-boolean v6, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-nez v6, :cond_3

    new-instance v6, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    const v8, 0x7f020197

    invoke-direct {v6, v7, v8}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v9, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->innerPadding:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->innerPadding:I

    int-to-float v7, v7

    invoke-virtual {v0, v4, v6, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v6, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v6, v3}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setOpaque(Z)V

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v6

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v6, 0x14

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-direct {v1, v6}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4, v9, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v6, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v6, v3}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setOpaque(Z)V

    goto :goto_1

    :array_0
    .array-data 4
        0x3f570a3d    # 0.84f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f570a3d    # 0.84f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f570a3d    # 0.84f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f570a3d    # 0.84f
        0x0
    .end array-data
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    instance-of v0, v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->getResId()I

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconResId:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconResId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconResId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    :cond_1
    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mBundle:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocused:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mShowAccessibilityFocus:Z

    return-void
.end method

.method public insertSAEventLog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mSAEventId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDownOnButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mDownOnButton:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocused:Z

    return v0
.end method

.method public isShowAccessibilityFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mShowAccessibilityFocus:Z

    return v0
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 7

    const/4 v4, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mAlignType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getActionBarHeightPixel()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    sget-boolean v3, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b037e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b037d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b037f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->innerPadding:I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0242

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0241

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0243

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->innerPadding:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    sub-int v3, v6, v3

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_3
    add-int/2addr v3, v6

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_4
    sub-int v3, v6, v3

    iput v3, v5, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v6

    if-nez v6, :cond_6

    :goto_5
    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_5
.end method

.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setDownOnButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mDownOnButton:Z

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mFocused:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mIconResId:I

    return-void
.end method

.method public setPhotoIconView(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/GLView;

    return-void
.end method

.method public setUpdateListener(Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mUpdateListener:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;

    return-void
.end method

.method public showAccessibilityFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->mShowAccessibilityFocus:Z

    return-void
.end method
