.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$4;
.super Ljava/lang/Object;
.source "GlComposeSplitView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetBackgroundLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetScrollBar()V

    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
