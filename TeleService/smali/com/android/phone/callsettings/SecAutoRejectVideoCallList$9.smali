.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$9;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->onActivityResult(IILandroid/content/Intent;)V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->-get1(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
