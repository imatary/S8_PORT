.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "onChange() with URI == null - not handled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get11(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "Ignore events until storage is completely unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange on thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " selfchange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ConvoContact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V

    goto :goto_0
.end method
