.class Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;
.super Ljava/lang/Object;
.source "GlSlideshowEffect.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBitmapAvailable, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mAnimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mAdapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mFirstLoad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->addSlideItem(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->firstLoading(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception::: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mAnimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mAdapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mFirstLoad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GlSlideshowEffect"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
