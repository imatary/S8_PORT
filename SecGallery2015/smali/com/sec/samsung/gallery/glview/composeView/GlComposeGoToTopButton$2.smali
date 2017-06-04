.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;
.super Ljava/lang/Object;
.source "GlComposeGoToTopButton.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRawX:I

.field mRawY:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 1

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->mRawX:I

    iput p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->mRawY:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    return v0
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->mRawX:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->mRawY:I

    add-int/2addr v1, p3

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    return v0
.end method
