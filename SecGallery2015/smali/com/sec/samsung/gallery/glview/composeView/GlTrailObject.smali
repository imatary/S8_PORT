.class Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
.source "GlTrailObject.java"


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 1

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method
