.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlComposeEventObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateCache(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->hideSeekBar()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateBitmap(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
