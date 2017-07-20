.class Lcom/android/phone/answeringmemo/RingDurationPickerDialog$4;
.super Ljava/lang/Object;
.source "RingDurationPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$4;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$4;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get1(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "semclipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->dismissDialog()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$4;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-virtual {v1}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->dismiss()V

    return-void
.end method
