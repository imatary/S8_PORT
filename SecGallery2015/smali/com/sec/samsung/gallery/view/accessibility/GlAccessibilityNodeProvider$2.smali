.class Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;
.super Ljava/lang/Object;
.source "GlAccessibilityNodeProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->refreshAccessibilityFocus()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$100(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$100(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;->this$0:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->invalidate()V

    return-void
.end method
