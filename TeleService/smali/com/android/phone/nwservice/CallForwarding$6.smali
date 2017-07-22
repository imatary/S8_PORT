.class Lcom/android/phone/nwservice/CallForwarding$6;
.super Ljava/lang/Object;
.source "CallForwarding.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingActivate()V
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

    iput-object p1, p0, Lcom/android/phone/nwservice/CallForwarding$6;->this$0:Lcom/android/phone/nwservice/CallForwarding;

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

    const/4 v2, 0x2

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$6;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, v1, Lcom/android/phone/nwservice/CallForwarding;->editRingTime:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$6;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/phone/nwservice/CallForwarding;->showDialog(I)V

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$6;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, v1, Lcom/android/phone/nwservice/CallForwarding;->editRingTime:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CallForwarding"

    const-string/jumbo v2, "NumberFormatException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
