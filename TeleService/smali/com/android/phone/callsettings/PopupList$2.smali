.class Lcom/android/phone/callsettings/PopupList$2;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PopupList;


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$2;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-get5(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$2;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-get5(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$2;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-get4(Lcom/android/phone/callsettings/PopupList;)Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$2;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-get4(Lcom/android/phone/callsettings/PopupList;)Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;->onPopupItemClick(I)Z

    :cond_1
    return-void
.end method
