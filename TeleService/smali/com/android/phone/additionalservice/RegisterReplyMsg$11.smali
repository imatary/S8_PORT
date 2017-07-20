.class Lcom/android/phone/additionalservice/RegisterReplyMsg$11;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg;->alertdialogRegisterReplymsg(Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterReplyMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$11;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$11;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v0}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get0(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$11;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
