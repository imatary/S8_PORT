.class public Lcom/sec/android/gallery3d/ui/BackgroundView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "BackgroundView.java"


# static fields
.field private static final BACKGROUND_ALPHA_VALUE:I = 0x76

.field private static final SHOW_ALPHA_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BackgroundView"


# instance fields
.field private final IS_NOS:Z

.field private final mBackgroundBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

.field private mHeight:I

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mWidth:I

.field private mXpos:I

.field private mYpos:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 4

    const/16 v3, 0x64

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->IS_NOS:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->IS_NOS:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1000eb

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-static {v3, v3, v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mBackgroundBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mBackgroundBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->initPosition()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private initPosition()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mXpos:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mYpos:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mWidth:I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->IS_NOS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mHeight:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mHeight:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->initPosition()V

    return-void
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mBackgroundBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mXpos:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mYpos:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mWidth:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/BackgroundView;->mHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->initPosition()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showWithAlpha()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/BackgroundView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BackgroundView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
