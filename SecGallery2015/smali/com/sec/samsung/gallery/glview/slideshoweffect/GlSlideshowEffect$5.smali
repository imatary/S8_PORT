.class Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;
.super Ljava/lang/Object;
.source "GlSlideshowEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->checkForVideoItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

.field final synthetic val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;->this$0:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    # invokes: Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updatePlayVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method
