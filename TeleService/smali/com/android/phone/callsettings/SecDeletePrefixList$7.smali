.class Lcom/android/phone/callsettings/SecDeletePrefixList$7;
.super Ljava/lang/Object;
.source "SecDeletePrefixList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecDeletePrefixList;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$7;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$7;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$7;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-get0(Lcom/android/phone/callsettings/SecDeletePrefixList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$7;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
