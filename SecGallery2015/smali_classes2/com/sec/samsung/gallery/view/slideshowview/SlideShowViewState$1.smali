.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;
.super Landroid/os/Handler;
.source "SlideShowViewState.java"


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
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShowVideoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->finishVideoView()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
