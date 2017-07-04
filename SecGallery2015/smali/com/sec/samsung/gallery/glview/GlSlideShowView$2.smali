.class Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;
.super Ljava/lang/Object;
.source "GlSlideShowView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWaitStarts(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;JZZ)V
    .locals 3

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->access$100(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    move-result-object v1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->resetTime(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->access$100(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setAnimationStartTime(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->access$100(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setStartRatio()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->access$100(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setDurationObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;->this$0:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->access$100(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
