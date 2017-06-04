.class Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlTimeLineSplit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeFadeAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$100(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$000(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDeltaX:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$300(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onPull(FF)V
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$400(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;FF)V

    return-void
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->onStop()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$102(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->cancelEdgeFadeAni()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$200(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V

    return-void
.end method
