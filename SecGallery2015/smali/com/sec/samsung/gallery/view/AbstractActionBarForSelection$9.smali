.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "AbsActBarForSelection"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$500(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$500(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$500(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->destroy()V

    :cond_0
    return-void
.end method
