.class Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;
.super Landroid/os/Handler;
.source "LGTNetworkAutoRebootProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-wrap1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;)V

    invoke-virtual {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1$1;->start()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-wrap0(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v0, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_roaming_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-wrap1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v0, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_roaming_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v0, v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
