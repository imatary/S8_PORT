.class Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;
.super Ljava/lang/Object;
.source "GlTimeLineSplit.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v0, p4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$002(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onPressed(IIII)Z

    move-result v0

    return v0
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onReleased(IIII)Z

    move-result v0

    return v0
.end method
