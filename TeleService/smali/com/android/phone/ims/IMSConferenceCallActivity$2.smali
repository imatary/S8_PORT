.class Lcom/android/phone/ims/IMSConferenceCallActivity$2;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inside afterTextChanged() : Editable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap4(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get5(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get14(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get14(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get5(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set2(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const v1, 0x7f0d0823

    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap8(Lcom/android/phone/ims/IMSConferenceCallActivity;I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get18(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get3(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get18(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get18(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    :cond_0
    return-void
.end method
