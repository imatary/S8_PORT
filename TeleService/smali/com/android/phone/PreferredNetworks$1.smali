.class Lcom/android/phone/PreferredNetworks$1;
.super Landroid/os/Handler;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const v6, 0x7f0d07f8

    const/4 v5, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->-get1(Lcom/android/phone/PreferredNetworks;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const v5, 0x7f0d07e5

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/PreferredNetworks$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/PreferredNetworks$1$1;-><init>(Lcom/android/phone/PreferredNetworks$1;)V

    const v5, 0x7f0d02ca

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4, v6}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->-get1(Lcom/android/phone/PreferredNetworks;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->dismissDialog(I)V

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->-get0(Lcom/android/phone/PreferredNetworks;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dismissDialog ############."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->removeDialog(I)V

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/phone/PreferredNetworks;->-set0(Lcom/android/phone/PreferredNetworks;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4}, Lcom/android/phone/PreferredNetworks;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4, v6}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-static {v5, v4}, Lcom/android/phone/PreferredNetworks;->-wrap0(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
