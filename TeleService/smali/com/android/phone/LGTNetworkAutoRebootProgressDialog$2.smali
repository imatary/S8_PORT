.class Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;
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

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v2, v2, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0763

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0776

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v2, v2, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040013

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-set0(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-get1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-get1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-get1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-virtual {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d077a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-wrap3(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->-wrap2(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
