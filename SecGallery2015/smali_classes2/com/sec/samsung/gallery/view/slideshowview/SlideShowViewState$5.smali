.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;
.super Ljava/lang/Object;
.source "SlideShowViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->showOrHideCloseButton()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewEnable(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "7012"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
