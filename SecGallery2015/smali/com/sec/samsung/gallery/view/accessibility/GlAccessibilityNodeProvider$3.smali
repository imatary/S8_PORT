.class Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;
.super Ljava/lang/Object;
.source "GlAccessibilityNodeProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->clearAccessibilityFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/high16 v2, 0x10000

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$100(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$100(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->sendAccessibilityEvent(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$102(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    return-void
.end method
