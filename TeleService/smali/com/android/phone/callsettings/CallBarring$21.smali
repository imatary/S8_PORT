.class Lcom/android/phone/callsettings/CallBarring$21;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->showPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$21;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$21;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get17(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$21$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$21$1;-><init>(Lcom/android/phone/callsettings/CallBarring$21;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$21;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get15(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$21$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$21$2;-><init>(Lcom/android/phone/callsettings/CallBarring$21;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$21;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get7(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$21$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$21$3;-><init>(Lcom/android/phone/callsettings/CallBarring$21;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
