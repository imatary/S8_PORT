.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposePhotoCoverObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverScrollAnim"
.end annotation


# instance fields
.field private final mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->setDuration(J)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateChildTransition(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;F)V

    return-void
.end method
