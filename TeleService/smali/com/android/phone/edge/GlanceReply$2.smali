.class Lcom/android/phone/edge/GlanceReply$2;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/edge/GlanceReply;


# direct methods
.method constructor <init>(Lcom/android/phone/edge/GlanceReply;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$2;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$2;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-static {v1}, Lcom/android/phone/edge/GlanceReply;->-get1(Lcom/android/phone/edge/GlanceReply;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/edge/GlanceReply$2;->this$0:Lcom/android/phone/edge/GlanceReply;

    iget-object v2, v2, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$2;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-static {v1}, Lcom/android/phone/edge/GlanceReply;->-get2(Lcom/android/phone/edge/GlanceReply;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/edge/GlanceReply;->-get3()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "semclipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->showDialog()V

    goto :goto_0
.end method
