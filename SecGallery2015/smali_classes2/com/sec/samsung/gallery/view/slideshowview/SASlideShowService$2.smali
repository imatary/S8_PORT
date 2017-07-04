.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
