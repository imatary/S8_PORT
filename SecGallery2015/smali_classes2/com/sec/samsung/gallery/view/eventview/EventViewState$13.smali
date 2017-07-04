.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$13;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$13;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverClick(IILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$13;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$3900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;II)V

    const/4 v0, 0x1

    return v0
.end method
