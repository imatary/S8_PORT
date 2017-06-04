.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;
.super Ljava/lang/Object;
.source "GlComposePhotoCoverObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsExpanded:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverViewScroll:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v3

    sub-float v0, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getX()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setPos(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float v1, v2, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateChildTransition(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;F)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mActionbarHeight:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v3

    sub-float v0, v2, v3

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
