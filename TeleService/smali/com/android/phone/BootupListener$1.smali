.class Lcom/android/phone/BootupListener$1;
.super Landroid/os/Handler;
.source "BootupListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BootupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BootupListener;


# direct methods
.method constructor <init>(Lcom/android/phone/BootupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-static {v1, p1}, Lcom/android/phone/BootupListener;->-wrap3(Lcom/android/phone/BootupListener;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/phone/BootupListener;->-wrap2(Lcom/android/phone/BootupListener;Landroid/os/Message;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/phone/BootupListener;->-wrap2(Lcom/android/phone/BootupListener;Landroid/os/Message;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-static {v1, p1}, Lcom/android/phone/BootupListener;->-wrap4(Lcom/android/phone/BootupListener;Landroid/os/Message;)V

    const-string/jumbo v1, "BootupListener"

    const-string/jumbo v2, "set_preferred_network"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    iget-object v2, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-static {v2}, Lcom/android/phone/BootupListener;->-get0(Lcom/android/phone/BootupListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/BootupListener;->-wrap1(Lcom/android/phone/BootupListener;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    iget-object v2, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-static {v2}, Lcom/android/phone/BootupListener;->-get0(Lcom/android/phone/BootupListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/BootupListener;->-wrap5(Lcom/android/phone/BootupListener;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    iget-object v2, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-static {v2}, Lcom/android/phone/BootupListener;->-get0(Lcom/android/phone/BootupListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/BootupListener;->-wrap0(Lcom/android/phone/BootupListener;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-static {v1}, Lcom/android/phone/BootupListener;->-wrap6(Lcom/android/phone/BootupListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
