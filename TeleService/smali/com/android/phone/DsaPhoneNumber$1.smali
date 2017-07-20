.class Lcom/android/phone/DsaPhoneNumber$1;
.super Ljava/lang/Object;
.source "DsaPhoneNumber.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DsaPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaPhoneNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaPhoneNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    const/16 v6, 0xff

    const/16 v5, 0x42

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "DsaPhoneNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextChanged [1] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v2}, Lcom/android/phone/DsaPhoneNumber;->-get9(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [2] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v2}, Lcom/android/phone/DsaPhoneNumber;->-get10(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get9(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get10(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get3(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get2(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get6(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get8(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get8(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->-get8(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get7(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get7(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get7(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get4(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get5(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get5(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get5(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->-get4(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get3(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get2(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get6(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get8(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get8(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->-get8(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get7(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get7(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get7(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get4(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get5(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get5(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get5(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->-get4(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->-get1(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method
