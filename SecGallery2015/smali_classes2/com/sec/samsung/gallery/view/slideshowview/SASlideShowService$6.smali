.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$6;
.super Ljava/lang/Object;
.source "SASlideShowService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->USE_MULTIWINDOW:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1600()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1600()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SASlideShowService"

    const-string/jumbo v1, "changed to MultiWindowMode and stop SlideshowService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopSelf()V

    :cond_0
    return-void
.end method
