.class Lcom/android/phone/photoring/PhotoRingScreen$16;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->initPhotoRingScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

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
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get2(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get6(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get6(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap1(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get12(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-set8(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-set9(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get6(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get6(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-set0(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v2, p2, p4

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-set8(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-set4(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto :goto_1
.end method
