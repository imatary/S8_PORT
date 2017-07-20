.class Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;
.super Ljava/lang/Object;
.source "BarringIncomingCallWhenRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->showAlertDialogNetworkSecurityCode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

.field final synthetic val$kind:I

.field final synthetic val$networkSecurityCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Landroid/widget/EditText;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    iput-object p2, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->val$networkSecurityCode:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->val$kind:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->val$networkSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->val$kind:I

    if-ne v1, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#101*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Ljava/lang/String;)V

    :goto_0
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    invoke-static {v1}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-get0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->val$networkSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#351*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    invoke-static {v1, v5}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap2(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;I)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->val$kind:I

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*101*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Ljava/lang/String;)V

    :goto_2
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*351*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    invoke-static {v1, v3}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap2(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*101*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*20#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Ljava/lang/String;)V

    :goto_3
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*351*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*20#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap0(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$3;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    invoke-static {v1, v4}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap2(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;I)V

    goto/16 :goto_1
.end method
