.class Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;
.super Ljava/lang/Object;
.source "GlSlideshowEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->destroyProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyProgressDialog(), mProgressBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    # getter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$002(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method
