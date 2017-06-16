.class Lcom/android/bluetooth/opp/TestTcpListener$1;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/TestTcpListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mServerSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/android/bluetooth/opp/TestTcpListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "RfcommSocket listen thread starting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Create server RfcommSocket on channel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v7}, Lcom/android/bluetooth/opp/TestTcpListener;->-get1(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v5, Ljava/net/ServerSocket;

    const/16 v6, 0x1964

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5}, Lcom/android/bluetooth/opp/TestTcpListener;->-get3(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v5

    if-nez v5, :cond_6

    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "incomming connection time out"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5}, Lcom/android/bluetooth/opp/TestTcpListener;->-get3(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "socketAcceptThread thread was interrupted (2), exiting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error listing on channel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v7}, Lcom/android/bluetooth/opp/TestTcpListener;->-get1(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5, v8}, Lcom/android/bluetooth/opp/TestTcpListener;->-set0(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "RfcommSocket connected!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remote addr is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/bluetooth/opp/TestTcpTransport;

    invoke-direct {v4, v0}, Lcom/android/bluetooth/opp/TestTcpTransport;-><init>(Ljava/net/Socket;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5}, Lcom/android/bluetooth/opp/TestTcpListener;->-get2(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    const/16 v5, 0x64

    iput v5, v3, Landroid/os/Message;->what:I

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error accept connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error accept connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "RfcommSocket listen thread finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
