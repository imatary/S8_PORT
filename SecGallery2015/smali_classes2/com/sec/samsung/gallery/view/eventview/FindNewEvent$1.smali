.class Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;
.super Ljava/lang/Object;
.source "FindNewEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->startFindNewEvent(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    iput p2, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->val$type:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->val$type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->access$402(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;)Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->access$000(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->access$100(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->access$200(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
