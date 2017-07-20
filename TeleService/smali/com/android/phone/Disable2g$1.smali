.class Lcom/android/phone/Disable2g$1;
.super Landroid/os/Handler;
.source "Disable2g.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Disable2g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Disable2g;


# direct methods
.method constructor <init>(Lcom/android/phone/Disable2g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Disable2g$1;->this$0:Lcom/android/phone/Disable2g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "Disable2g"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mHandler msg.what"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v5, p0, Lcom/android/phone/Disable2g$1;->this$0:Lcom/android/phone/Disable2g;

    invoke-static {v5}, Lcom/android/phone/Disable2g;->-get0(Lcom/android/phone/Disable2g;)Landroid/preference/SwitchPreference;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    if-ne v6, v3, :cond_2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Disable2g"

    const-string/jumbo v4, "ArrayIndexOutOfBoundsException Caught"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method
