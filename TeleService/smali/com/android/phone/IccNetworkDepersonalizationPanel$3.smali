.class Lcom/android/phone/IccNetworkDepersonalizationPanel$3;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get5(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x64

    :goto_0
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get0(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x6a

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    :pswitch_1
    const/16 v0, 0x66

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x65

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
