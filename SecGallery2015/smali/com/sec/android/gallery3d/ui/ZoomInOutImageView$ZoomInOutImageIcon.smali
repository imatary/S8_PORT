.class Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
.source "ZoomInOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomInOutImageIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;-><init>(Lcom/sec/android/gallery3d/ui/ButtonIconView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;-><init>(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 6

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsEnable:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$100(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mDownOnButton:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mShowAccessibilityFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getAccessibilityFocusTexture()Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$200(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a04f6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a08bf

    goto :goto_0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsEnable:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$100(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$200(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020388

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :goto_1
    return-object v0

    :cond_1
    const v0, 0x7f02038a

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mDisabledIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$300(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$200(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020389

    :goto_2
    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mDisabledIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$302(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;)Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mDisabledIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$300(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v0, 0x7f02038b

    goto :goto_2
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsCommentsViewVisible:Z
    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$400(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b054d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0972

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0971

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0557

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, v3, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mOffsetBottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget v4, v3, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mOffsetBottom:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getNavigationBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mOffsetBottom:I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mOffsetLeft:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->access$200(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget v5, v5, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mOffsetBottom:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    return-void

    :cond_1
    move v0, v3

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;->this$0:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget v5, v5, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mOffsetBottom:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method
