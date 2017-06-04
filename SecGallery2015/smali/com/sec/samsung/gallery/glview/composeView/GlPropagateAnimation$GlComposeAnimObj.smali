.class Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;
.super Ljava/lang/Object;
.source "GlPropagateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlComposeAnimObj"
.end annotation


# instance fields
.field mDistFrom0:F

.field final mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final mRadius:F

.field mStartedAnim:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mDistFrom0:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mStartedAnim:Z

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->getObjRadius(Lcom/sec/android/gallery3d/glcore/GlObject;)F
    invoke-static {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mRadius:F

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mRadius:F

    return v0
.end method
