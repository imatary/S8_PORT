.class Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave$1;
.super Landroid/os/Handler;
.source "StartMmsSaveCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave$1;->this$0:Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave$1;->this$0:Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;->finish()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave$1;->this$0:Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;->overridePendingTransition(II)V

    return-void
.end method
