.class Lcom/android/phone/callsettings/SecAutoRejectList$6;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$6;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkErrorText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$6;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->clickSaveBtn()V

    :cond_0
    return-void
.end method
