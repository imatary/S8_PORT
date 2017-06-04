.class Lcom/sec/samsung/gallery/glview/GlSlideShowView$1;
.super Ljava/lang/Object;
.source "GlSlideShowView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/GlSlideShowView;->onCreate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationReady(Z)V
    .locals 3

    const-string/jumbo v0, "GlSlideShowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationReady isFirstStart["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    # getter for: Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->access$000(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAnimation(ZZ)V

    return-void
.end method
