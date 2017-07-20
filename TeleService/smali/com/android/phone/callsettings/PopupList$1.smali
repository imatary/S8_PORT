.class Lcom/android/phone/callsettings/PopupList$1;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
.method public onDismiss()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v1}, Lcom/android/phone/callsettings/PopupList;->-get5(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PopupList;->-set0(Lcom/android/phone/callsettings/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v1}, Lcom/android/phone/callsettings/PopupList;->-get0(Lcom/android/phone/callsettings/PopupList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v1}, Lcom/android/phone/callsettings/PopupList;->-get3(Lcom/android/phone/callsettings/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
