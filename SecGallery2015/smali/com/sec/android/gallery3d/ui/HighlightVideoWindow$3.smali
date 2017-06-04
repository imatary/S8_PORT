.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->resetHighlightVideoWindowLayout(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # invokes: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->getHighlightViewHeight()I
    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # invokes: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setPreviewSize(I)V
    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1100(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;I)V

    :cond_0
    return-void
.end method
