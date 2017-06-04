.class Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
.source "HorizontalNavigationImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalNavigationImageIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;-><init>(Lcom/sec/android/gallery3d/ui/ButtonIconView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;-><init>(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIsPrevious:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->access$100(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0885

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a087d

    goto :goto_0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIsPrevious:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->access$100(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020282

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0

    :cond_1
    const v0, 0x7f02026e

    goto :goto_0
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0610

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIsPrevious:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->access$100(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mOffsetLeft:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    sub-int v1, v4, v1

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mOffsetRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_2
.end method
