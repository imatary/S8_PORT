.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;
.super Ljava/lang/Object;
.source "GlComposeChannelGridTimelineObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->createTimelineGridMoveListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    return v0
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    return v0
.end method
