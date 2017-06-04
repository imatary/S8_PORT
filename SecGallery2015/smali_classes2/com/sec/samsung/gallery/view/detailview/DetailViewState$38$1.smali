.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38$1;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;->finishState()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;->access$30300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$38;)V

    return-void
.end method
