.class Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;
.super Ljava/lang/Object;
.source "RingDurationPickerDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/RingDurationPickerDialog;-><init>(Landroid/content/Context;ILcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v0

    if-ne p3, v0, :cond_2

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v0

    if-ne p2, v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-wrap1(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get4()I

    move-result v0

    if-ne p3, v0, :cond_1

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get4()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-wrap0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-set0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;Z)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;->this$0:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get3(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-static {}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->-get5()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0
.end method
