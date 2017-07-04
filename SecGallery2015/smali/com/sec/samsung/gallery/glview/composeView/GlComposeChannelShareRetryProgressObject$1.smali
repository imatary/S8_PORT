.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;
.super Ljava/lang/Object;
.source "GlComposeChannelShareRetryProgressObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->removeShareRetryProgress()V

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
