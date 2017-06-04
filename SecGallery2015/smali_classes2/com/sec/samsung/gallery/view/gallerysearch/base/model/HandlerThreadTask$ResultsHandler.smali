.class Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;
.super Landroid/os/Handler;
.source "HandlerThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->publishResults(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->publishTempResults(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
