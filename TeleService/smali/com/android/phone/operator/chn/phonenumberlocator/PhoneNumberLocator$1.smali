.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;
.super Landroid/os/Handler;
.source "PhoneNumberLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLanguageChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-set1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string/jumbo v1, "handleMessage, EVENT_DOWNLOAD_FINISH"

    invoke-static {v0, v1, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PhoneNumberLocator"

    const-string/jumbo v1, "UpdatePNL"

    const-string/jumbo v2, "LatestVersionDownloaded"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-set1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get7()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string/jumbo v1, "handleMessage, EVENT_HTTP_EXCEPTION"

    invoke-static {v0, v1, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "PhoneNumberLocator"

    const-string/jumbo v1, "UpdatePNL"

    const-string/jumbo v2, "SuccessfullyDownloaded"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-set1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string/jumbo v1, "handleMessage, EVENT_FILE_EXCEPTION"

    invoke-static {v0, v1, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string/jumbo v1, "handleMessage, EVENT_VERSION_SAME"

    invoke-static {v0, v1, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "PhoneNumberLocator"

    const-string/jumbo v1, "UpdatePNL"

    const-string/jumbo v2, "LatestVersionDownloaded"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-set1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string/jumbo v1, "handleMessage, EVENT_COPY_FINISH"

    invoke-static {v0, v1, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get7()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_b
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
