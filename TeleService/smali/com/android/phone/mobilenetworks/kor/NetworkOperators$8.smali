.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/16 v6, 0x258

    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :goto_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectSearchDialogListener: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_3

    :cond_0
    const-string/jumbo v1, "mDisconnectSearchDialogListener : disableDataConnectivity"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0cd9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v1, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap18(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectSearchDialogListener : DATA_DISCONNECTED : mActionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v2, -0x2711

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-set0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap20(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    :goto_2
    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectSearchDialogListener : else mActionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    goto :goto_2
.end method
