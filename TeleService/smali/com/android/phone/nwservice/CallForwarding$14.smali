.class Lcom/android/phone/nwservice/CallForwarding$14;
.super Ljava/lang/Object;
.source "CallForwarding.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CallForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallForwarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-static {v0}, Lcom/android/phone/nwservice/CallForwarding;->-get2(Lcom/android/phone/nwservice/CallForwarding;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, v1, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v0, v0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    const v2, 0x7f0d0ac9

    invoke-virtual {v1, v2}, Lcom/android/phone/nwservice/CallForwarding;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/CallForwarding;->-wrap3(Lcom/android/phone/nwservice/CallForwarding;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-static {v0}, Lcom/android/phone/nwservice/CallForwarding;->-get1(Lcom/android/phone/nwservice/CallForwarding;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/nwservice/CallForwarding$14$1;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/CallForwarding$14$1;-><init>(Lcom/android/phone/nwservice/CallForwarding$14;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v0, v0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    const v2, 0x7f0d0aca

    invoke-virtual {v1, v2}, Lcom/android/phone/nwservice/CallForwarding;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/CallForwarding;->-wrap3(Lcom/android/phone/nwservice/CallForwarding;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-static {v0}, Lcom/android/phone/nwservice/CallForwarding;->-get1(Lcom/android/phone/nwservice/CallForwarding;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/nwservice/CallForwarding$14$2;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/CallForwarding$14$2;-><init>(Lcom/android/phone/nwservice/CallForwarding$14;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$14;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, v1, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/nwservice/CallForwarding;->-wrap4(Lcom/android/phone/nwservice/CallForwarding;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    return-void
.end method
