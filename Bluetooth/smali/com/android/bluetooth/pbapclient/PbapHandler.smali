.class public Lcom/android/bluetooth/pbapclient/PbapHandler;
.super Landroid/os/Handler;
.source "PbapHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PbapHandler"


# instance fields
.field private mListener:Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapHandler;->mListener:Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "PbapHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "PbapHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v1, "PbapHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_PULL_PHONE_BOOK_DONE with entries "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapHandler;->mListener:Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;->onPhoneBookPullDone(Ljava/util/List;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_PHONE_BOOK_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapHandler;->mListener:Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;

    invoke-interface {v0}, Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;->onPhoneBookError()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_SESSION_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapHandler;->mListener:Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;->onPbapClientConnected(Z)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_SESSION_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapHandler;->mListener:Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;->onPbapClientConnected(Z)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_SET_PHONE_BOOK_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_VCARD_LISTING_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_VCARD_ENTRY_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_PHONE_BOOK_SIZE_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_VCARD_LISTING_SIZE_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_SET_PHONE_BOOK_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_VCARD_LISTING_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_VCARD_ENTRY_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_PHONE_BOOK_SIZE_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_PULL_VCARD_LISTING_SIZE_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_SESSION_AUTH_REQUESTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "PbapHandler"

    const-string/jumbo v1, "EVENT_SESSION_AUTH_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x65 -> :sswitch_9
        0x66 -> :sswitch_1
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcb -> :sswitch_e
        0xcc -> :sswitch_f
    .end sparse-switch
.end method
