.class public Lcom/android/phone/answeringmemo/RingDurationPickerDialog;
.super Landroid/app/AlertDialog;
.source "RingDurationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field public static isWrongRange:Z

.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private endSel:I

.field private final mCallback:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

.field private mContext:Landroid/content/Context;

.field private mMaxLimitToast:Landroid/widget/Toast;

.field private mMinLimitToast:Landroid/widget/Toast;

.field private final mNumberPicker:Landroid/widget/NumberPicker;

.field private mOnkeyDown:Z

.field private mPickerType:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mCallback:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mOnkeyDown:Z

    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mOnkeyDown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->showMaxLimitWarning()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->showMinLimitWarning()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->isWrongRange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mPickerType:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->endSel:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mOnkeyDown:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mCallback:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    iput p9, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mPickerType:I

    sput p6, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    sput p5, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    invoke-virtual {p0, p8}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f0d032a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0d0327

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, -0x2

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0400c7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->setView(Landroid/view/View;)V

    const v3, 0x7f100241

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    const-string/jumbo v4, "inputType=NumberPicker_edittext"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-ne p9, v3, :cond_0

    const v3, 0x7f100242

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;

    invoke-direct {v4, p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$1;-><init>(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    new-instance v4, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;

    invoke-direct {v4, p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$2;-><init>(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;-><init>(Landroid/content/Context;ILcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    return-void
.end method

.method private showMaxLimitWarning()V
    .locals 6

    const v5, 0x7f0d0d29

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMinLimitWarning()V
    .locals 6

    const v5, 0x7f0d0d28

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$3;-><init>(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$4;

    invoke-direct {v2, p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$4;-><init>(Lcom/android/phone/answeringmemo/RingDurationPickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    if-lt v0, v2, :cond_0

    sget v2, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mOnkeyDown:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setLimitaion(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mCallback:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    if-eqz v3, :cond_2

    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    if-le v3, v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->showMinLimitWarning()V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    sget v4, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->clearFocus()V

    :cond_2
    return-void

    :cond_3
    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMin:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_4
    sget v3, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    if-ge v3, v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->showMaxLimitWarning()V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    sget v4, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->mCallback:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    invoke-interface {v3, v1}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;->onNumberSet(I)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->dismiss()V

    goto :goto_1
.end method
