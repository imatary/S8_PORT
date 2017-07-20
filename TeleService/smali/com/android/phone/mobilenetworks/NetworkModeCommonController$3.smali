.class Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;
.super Ljava/lang/Object;
.source "NetworkModeCommonController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "mDisconnectDataConnectionDialogListener: BUTTON_POSITIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-get3(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->showProgressDialog(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-get3(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setMobileDataEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-set0(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;Z)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-set1(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;Z)Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "mDisconnectDataConnectionDialogListener: BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->getPreferredNetworkTypeRequest()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
