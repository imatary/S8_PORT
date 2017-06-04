.class Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$1;
.super Landroid/os/Handler;
.source "CpuBoostScrollCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->initBoostThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->boostCpu()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->access$000(Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->boostRelease()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->access$100(Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
