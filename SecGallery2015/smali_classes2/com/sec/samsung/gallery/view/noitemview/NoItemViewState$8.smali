.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startDetailViewInUIThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

.field final synthetic val$changeScreen:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;->val$changeScreen:Z

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V

    return-void
.end method
