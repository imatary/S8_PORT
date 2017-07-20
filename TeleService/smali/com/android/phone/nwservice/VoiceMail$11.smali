.class Lcom/android/phone/nwservice/VoiceMail$11;
.super Ljava/lang/Object;
.source "VoiceMail.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/phone/nwservice/VoiceMail$11;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$11;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-static {v0}, Lcom/android/phone/nwservice/VoiceMail;->-get1(Lcom/android/phone/nwservice/VoiceMail;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$11;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, v1, Lcom/android/phone/nwservice/VoiceMail;->editRingTime:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
