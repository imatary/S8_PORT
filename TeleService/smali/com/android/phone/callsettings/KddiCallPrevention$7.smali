.class Lcom/android/phone/callsettings/KddiCallPrevention$7;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$7;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$7;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v0, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$7;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v0, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$7;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/KddiCallPrevention;->checkErrorText()V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$7;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/KddiCallPrevention;->isAvailableAddbutton()V

    return-void
.end method
