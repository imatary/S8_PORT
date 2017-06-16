.class Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;
.super Landroid/os/Handler;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionHandler"
.end annotation


# instance fields
.field private final mClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;->mClient:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string/jumbo v6, "BluetoothPbapClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage: what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;

    if-eqz v6, :cond_2

    const/16 v6, 0x69

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_2
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListingSize;

    if-eqz v6, :cond_3

    const/16 v6, 0x6a

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_3
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;

    if-eqz v6, :cond_4

    const/16 v6, 0x66

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_4
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;

    if-eqz v6, :cond_5

    const/16 v6, 0x67

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_5
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;

    if-eqz v6, :cond_6

    const/16 v6, 0x68

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_6
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;

    if-eqz v6, :cond_1

    const/16 v6, 0x65

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;

    if-eqz v6, :cond_7

    check-cast v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;

    invoke-virtual {v4}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->getSize()I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v0, v6, v5}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap2(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;II)V

    goto :goto_0

    :cond_7
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListingSize;

    if-eqz v6, :cond_8

    check-cast v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListingSize;

    invoke-virtual {v4}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListingSize;->getSize()I

    move-result v5

    const/4 v6, 0x6

    invoke-static {v0, v6, v5}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap2(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;II)V

    goto :goto_0

    :cond_8
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;

    if-eqz v6, :cond_9

    move-object v1, v4

    check-cast v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->getNewMissedCalls()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->getList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v0, v8, v6, v7}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap1(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;IILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;

    if-eqz v6, :cond_a

    move-object v3, v4

    check-cast v3, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;

    invoke-virtual {v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;->getNewMissedCalls()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;->getList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v0, v8, v6, v7}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap1(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;

    if-eqz v6, :cond_b

    move-object v2, v4

    check-cast v2, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->getVcard()Lcom/android/vcard/VCardEntry;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v0, v7, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap3(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    instance-of v6, v4, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v6, 0xcb

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v6, 0xcc

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v6, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->CONNECTING:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-set0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    goto/16 :goto_0

    :pswitch_5
    sget-object v6, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->CONNECTED:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-set0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    const/16 v6, 0xc9

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v6, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-set0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    const/16 v6, 0xca

    invoke-static {v0, v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->-wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
