.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeChannelShareRetryProgressObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlShrinkAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->updateProgress(Lcom/sec/android/gallery3d/glcore/GlView;F)V
    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;Lcom/sec/android/gallery3d/glcore/GlView;F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method
