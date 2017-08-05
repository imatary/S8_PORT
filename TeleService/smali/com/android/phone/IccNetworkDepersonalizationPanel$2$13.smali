.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set1(Lcom/android/phone/IccNetworkDepersonalizationPanel;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->updatePanel()V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set0(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get5(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get5(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->updatePanel()V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set0(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get5(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get5(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    goto :goto_0
.end method
