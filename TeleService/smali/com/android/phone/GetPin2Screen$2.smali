.class Lcom/android/phone/GetPin2Screen$2;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-wide/16 v2, 0x64

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get2(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get3(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0d047b

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get3(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get2(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get0(Lcom/android/phone/GetPin2Screen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/GetPin2Screen$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/GetPin2Screen$2$1;-><init>(Lcom/android/phone/GetPin2Screen$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->-wrap1(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/GetPin2Screen;->-wrap0(Lcom/android/phone/GetPin2Screen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get3(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0d04a4

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get3(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get2(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-get0(Lcom/android/phone/GetPin2Screen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/GetPin2Screen$2$2;

    invoke-direct {v1, p0}, Lcom/android/phone/GetPin2Screen$2$2;-><init>(Lcom/android/phone/GetPin2Screen$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->-wrap2(Lcom/android/phone/GetPin2Screen;)V

    return-void
.end method
