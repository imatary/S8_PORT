.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->createHighlightVideoWindow()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$100(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    new-instance v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$202(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f12015f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$402(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$600(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->getPreviewLayout(I)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$502(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->sendCoverBitmapToHighlightVideo()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$700(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->disableBGM()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$800(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->resetHighlightVideoWindowLayout(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$900(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1100(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;I)V

    goto/16 :goto_0
.end method
