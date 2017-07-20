.class Lcom/android/phone/callsettings/PopupList$3;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$3;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-get5(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$3;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-wrap0(Lcom/android/phone/callsettings/PopupList;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$3;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->-get5(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method
