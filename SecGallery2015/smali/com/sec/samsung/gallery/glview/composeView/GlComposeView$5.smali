.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onPress(II)Z
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    return v0
.end method
