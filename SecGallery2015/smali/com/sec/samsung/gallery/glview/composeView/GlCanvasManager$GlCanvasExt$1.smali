.class Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt$1;
.super Ljava/lang/Object;
.source "GlCanvasManager.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetached(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->remove(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method
