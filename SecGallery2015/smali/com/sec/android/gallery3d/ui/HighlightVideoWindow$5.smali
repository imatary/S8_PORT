.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->sendCoverBitmapToHighlightVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCroppedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1600(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->setCoverImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1602(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Z)Z

    :cond_1
    return-void
.end method
