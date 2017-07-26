.class public Lcom/naver/glink/android/sdk/ui/record/d;
.super Landroid/app/DialogFragment;
.source "RecordSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/record/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/naver/glink/android/sdk/ui/record/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/RadioGroup;)I
    .locals 3

    const v0, 0x2191c0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget v2, Lcom/naver/glink/android/sdk/R$id;->rb_quality_low:I

    if-ne v1, v2, :cond_1

    const v0, 0xdbba0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/naver/glink/android/sdk/R$id;->rb_quality_std:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/naver/glink/android/sdk/R$id;->rb_quality_high:I

    if-ne v1, v2, :cond_0

    const v0, 0x3d0900

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/record/d;Landroid/widget/RadioGroup;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/record/d;->b(Landroid/widget/RadioGroup;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/record/d;)Lcom/naver/glink/android/sdk/ui/record/d$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d;->a:Lcom/naver/glink/android/sdk/ui/record/d$a;

    return-object v0
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/record/d;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/record/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/record/d;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private b(Landroid/widget/RadioGroup;)I
    .locals 3

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v0, 0x2191c0

    sget v2, Lcom/naver/glink/android/sdk/R$id;->rb_resolution_360:I

    if-ne v1, v2, :cond_1

    const/16 v0, 0x168

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/naver/glink/android/sdk/R$id;->rb_resolution_480:I

    if-ne v1, v2, :cond_2

    const/16 v0, 0x1e0

    goto :goto_0

    :cond_2
    sget v2, Lcom/naver/glink/android/sdk/R$id;->rb_resolution_720:I

    if-ne v1, v2, :cond_0

    const/16 v0, 0x2d0

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/record/d;Landroid/widget/RadioGroup;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/record/d;->a(Landroid/widget/RadioGroup;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/record/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/d;->a:Lcom/naver/glink/android/sdk/ui/record/d$a;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->widget_record_setting_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/record/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/record/d;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/record/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$style;->record_setting_anim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->record_setting_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/naver/glink/android/sdk/R$id;->record_setting_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/naver/glink/android/sdk/R$id;->setting_quality_radio_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->setting_resolution_radio_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/record/d$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/record/d$1;-><init>(Lcom/naver/glink/android/sdk/ui/record/d;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/d$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/record/d$2;-><init>(Lcom/naver/glink/android/sdk/ui/record/d;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d;->a:Lcom/naver/glink/android/sdk/ui/record/d$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/record/d;->dismiss()V

    :cond_0
    return-void
.end method
