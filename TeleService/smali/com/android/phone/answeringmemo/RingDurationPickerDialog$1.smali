.class Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;
.super Ljava/lang/Object;
.source "RingDurationPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/RingDurationPickerDialog;-><init>(Landroid/content/Context;ILcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    packed-switch p2, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get2(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v2

    if-le v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-wrap1(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get2(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get2(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get4()I

    move-result v2

    if-ge v2, v0, :cond_4

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-wrap0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get2(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get4()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get2(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get4()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;->onNumberSet(I)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-virtual {v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->dismiss()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
