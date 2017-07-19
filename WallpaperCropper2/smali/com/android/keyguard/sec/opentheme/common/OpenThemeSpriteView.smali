.class public Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;
.super Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;
.source "Unknown"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mIsTop:Z

.field protected mSprites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/opentheme/common/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeUtil;->loadBackgroundBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addSprite(Lcom/android/keyguard/sec/opentheme/common/Sprite;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawFrame(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mIsTop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/opentheme/common/Sprite;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->onUpdate()V

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ondetach2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/opentheme/common/Sprite;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->clear()V

    goto :goto_1
.end method

.method public setZOrderOnTop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->mIsTop:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->setZOrderOnTop(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method
