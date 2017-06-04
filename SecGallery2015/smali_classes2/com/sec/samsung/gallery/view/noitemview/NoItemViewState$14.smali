.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$14;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setCreateEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$14;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$14;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setCreateEventVisibleMode(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V

    return-void
.end method
