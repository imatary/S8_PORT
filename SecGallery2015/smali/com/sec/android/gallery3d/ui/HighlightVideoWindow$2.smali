.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # invokes: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->pauseHighlightVideoWindow()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPreviewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$202(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    goto :goto_0
.end method
