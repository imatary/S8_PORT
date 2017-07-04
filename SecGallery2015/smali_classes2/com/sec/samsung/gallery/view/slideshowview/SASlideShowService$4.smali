.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;
.super Ljava/lang/Object;
.source "SASlideShowService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearKeepScreenOnFlag(Landroid/view/Window;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SASlideShowService"

    const-string/jumbo v1, "ignore add keep screen on flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "SASlideShowService"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;->clearKeepScreenOnFlag(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopSelf()V

    return-void
.end method
