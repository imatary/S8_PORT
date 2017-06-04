.class public abstract Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
.super Ljava/lang/Object;
.source "ButtonIconView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/playicon/Icon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/ButtonIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ButtonIcon"
.end annotation


# instance fields
.field mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

.field mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

.field final mIconRect:Landroid/graphics/Rect;

.field mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

.field mShowAccessibilityFocus:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/ButtonIconView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/ui/ButtonIconView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->this$0:Lcom/sec/android/gallery3d/ui/ButtonIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->this$0:Lcom/sec/android/gallery3d/ui/ButtonIconView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mShowAccessibilityFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/BasicTexture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->this$0:Lcom/sec/android/gallery3d/ui/ButtonIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    const v2, 0x7f020214

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v5, 0x14

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v1, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v5, v3}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setOpaque(Z)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    goto :goto_0

    nop

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public abstract getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.end method

.method public initialize()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mIconPressedTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mFocusTexture:Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mShowAccessibilityFocus:Z

    return-void
.end method

.method isShowAccessbilityFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mShowAccessibilityFocus:Z

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method showAccessbilityFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->mShowAccessibilityFocus:Z

    return-void
.end method
