.class Lcom/android/phone/nwservice/CallForwarding$19;
.super Ljava/lang/Object;
.source "CallForwarding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CallForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallForwarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallForwarding$19;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$19;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-static {v0}, Lcom/android/phone/nwservice/CallForwarding;->-get2(Lcom/android/phone/nwservice/CallForwarding;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding$19;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    iget-object v1, v1, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
