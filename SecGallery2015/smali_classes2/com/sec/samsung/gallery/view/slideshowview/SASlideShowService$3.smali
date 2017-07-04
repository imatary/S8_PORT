.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;
.super Landroid/content/BroadcastReceiver;
.source "SASlideShowService.java"


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "VideoUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "VideoUri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$402(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_2
    const-string/jumbo v1, "ACTION_PRESENTATION_VIDEO_VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "ACTION_REMOVE_PRESENTATION_VIDEO_VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$702(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Z)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "ACTION_ADD_GLSURFACE_VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->reInitializeGLSurfaceView()V

    goto/16 :goto_0
.end method
