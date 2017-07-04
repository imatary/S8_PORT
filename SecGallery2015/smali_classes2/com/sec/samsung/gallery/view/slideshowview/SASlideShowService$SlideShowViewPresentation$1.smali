.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation$1;
.super Ljava/lang/Object;
.source "SASlideShowService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->dismiss()V

    :cond_0
    return-void
.end method
