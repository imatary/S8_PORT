.class Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlHoverMovementDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 8

    const-wide/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$002(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$000(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$300(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$400(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$500(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Landroid/view/MotionEvent;Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    goto :goto_0
.end method
