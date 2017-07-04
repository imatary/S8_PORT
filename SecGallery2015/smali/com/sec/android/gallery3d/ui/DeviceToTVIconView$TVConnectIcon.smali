.class Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
.source "DeviceToTVIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVConnectIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;-><init>(Lcom/sec/android/gallery3d/ui/ButtonIconView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;-><init>(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mContext:Landroid/content/Context;

    const v2, 0x7f0202d3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method

.method public layout(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getActionBarHeightPixel()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b055c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b055b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->access$200(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;)I

    move-result v4

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mOffsetLeft:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->this$0:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mOffsetTop:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
