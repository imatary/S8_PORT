.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnDimAnimation"
.end annotation


# instance fields
.field private mDimStart:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, p1

    sub-float v1, v3, p1

    mul-float/2addr v0, v1

    sub-float p1, v3, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->mDimStart:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->mDimStart:F

    sub-float v2, v3, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->mDimStart:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->mDimStart:F

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method
