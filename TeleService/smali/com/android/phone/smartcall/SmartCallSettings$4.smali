.class Lcom/android/phone/smartcall/SmartCallSettings$4;
.super Ljava/lang/Object;
.source "SmartCallSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SmartCallSettings;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/smartcall/SmartCallSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/smartcall/SmartCallSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/smartcall/SmartCallSettings$4;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings$4;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-static {v1}, Lcom/android/phone/smartcall/SmartCallSettings;->-get0(Lcom/android/phone/smartcall/SmartCallSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "SmartCallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick mSubAppBarView value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings$4;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-static {v1}, Lcom/android/phone/smartcall/SmartCallSettings;->-get1(Lcom/android/phone/smartcall/SmartCallSettings;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings$4;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-virtual {v1, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateTurnOnStatus(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
