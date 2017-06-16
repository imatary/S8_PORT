.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritingThread"
.end annotation


# instance fields
.field private buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

.field private mWritingBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWritingHandler:Landroid/os/Handler;

.field private mWrittenStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWrittenStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWrittenStr:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const-string/jumbo v0, "WritingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWrittenStr:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingBuffer:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-set0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addVcard(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
