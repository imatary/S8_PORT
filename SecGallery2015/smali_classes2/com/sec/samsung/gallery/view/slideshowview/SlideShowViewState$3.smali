.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;
.super Ljava/lang/Object;
.source "SlideShowViewState.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Z

    move-result v4

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$900(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    if-ne v4, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$702(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SlideShowViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
