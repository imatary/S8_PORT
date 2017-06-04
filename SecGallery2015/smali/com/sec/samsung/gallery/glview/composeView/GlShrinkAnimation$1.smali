.class Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;
.super Ljava/lang/Object;
.source "GlShrinkAnimation.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSrcRoll:F

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->getAngle()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSrcRoll:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSrcRoll:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoll(F)V

    return-void
.end method
