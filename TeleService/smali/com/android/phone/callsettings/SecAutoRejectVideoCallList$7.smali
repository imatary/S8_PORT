.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->initializeSecAddButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->clickSaveBtn()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->clickSecSearchContactBtn()V

    goto :goto_0
.end method
