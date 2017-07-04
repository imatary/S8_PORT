.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float p1, v2, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method
