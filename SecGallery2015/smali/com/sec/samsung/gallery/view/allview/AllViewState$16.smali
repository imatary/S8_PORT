.class Lcom/sec/samsung/gallery/view/allview/AllViewState$16;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$16;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$16;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$16;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$16;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
