.class Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;
.super Landroid/os/Handler;
.source "FindNewEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "event_alarm_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->access$000(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->startFindNewEvent(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->access$000(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->access$100(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
