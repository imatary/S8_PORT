.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
