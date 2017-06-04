.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->moveSearchFilter(F)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mY:F
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setY(F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method
