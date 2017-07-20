.class Lcom/android/phone/nwservice/VoiceMail$7;
.super Ljava/lang/Object;
.source "VoiceMail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/VoiceMail;->alertdialogSetRingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/VoiceMail;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/VoiceMail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, v1, Lcom/android/phone/nwservice/VoiceMail;->editRingTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-static {v1}, Lcom/android/phone/nwservice/VoiceMail;->-get1(Lcom/android/phone/nwservice/VoiceMail;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v2, v2, Lcom/android/phone/nwservice/VoiceMail;->editRingTime:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-static {v1, v0}, Lcom/android/phone/nwservice/VoiceMail;->-wrap0(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iput-object v0, v1, Lcom/android/phone/nwservice/VoiceMail;->setRingTimeResult:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*121*2*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v3, v3, Lcom/android/phone/nwservice/VoiceMail;->setRingTimeResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v2, v2, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/VoiceMail;->-wrap2(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-virtual {v2}, Lcom/android/phone/nwservice/VoiceMail;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0a8c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/nwservice/VoiceMail;->-wrap4(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$7;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-static {v1}, Lcom/android/phone/nwservice/VoiceMail;->-get0(Lcom/android/phone/nwservice/VoiceMail;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/VoiceMail$7$1;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/VoiceMail$7$1;-><init>(Lcom/android/phone/nwservice/VoiceMail$7;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
