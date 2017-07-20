.class final Lcom/android/phone/PhoneUtils$8;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;

.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$mmiCode:Lcom/android/internal/telephony/MmiCode;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/MmiCode;Lcom/android/internal/telephony/Phone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneUtils$8;->val$inputText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$8;->val$app:Lcom/android/phone/PhoneGlobals;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$8;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    iput-object p4, p0, Lcom/android/phone/PhoneUtils$8;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/16 v8, 0xa0

    const/4 v7, 0x0

    const/4 v6, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-le v1, v8, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/PhoneUtils$8;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0d02c8

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    :cond_1
    :goto_1
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->-set0(Lcom/android/internal/telephony/MmiCode$State;)Lcom/android/internal/telephony/MmiCode$State;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->-set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending inputStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$8;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    :cond_3
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->-set0(Lcom/android/internal/telephony/MmiCode$State;)Lcom/android/internal/telephony/MmiCode$State;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->-set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
