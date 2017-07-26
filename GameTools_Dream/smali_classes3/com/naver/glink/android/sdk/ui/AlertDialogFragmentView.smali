.class public Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "AlertDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.naver.glink.ARG_MESSAGE"

.field public static final b:Ljava/lang/String; = "com.naver.glink.ARG_POSITIVE_NAME"

.field public static final c:Ljava/lang/String; = "com.naver.glink.ARG_NEGATIVE_NAME"


# instance fields
.field private g:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->g:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.naver.glink.ARG_POSITIVE_NAME"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.naver.glink.ARG_NEGATIVE_NAME"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->setAlertDialogListener(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->setAlertDialogListener(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->confirm:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->cancel:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->alert_dialog:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->g:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->g:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    :goto_0
    double-to-int v0, v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->dialog_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->setCanceledOnTouchOutside(ZLandroid/view/View;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_POSITIVE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_NEGATIVE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/naver/glink/android/sdk/R$id;->dialog_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->dialog_confirm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->dialog_cancel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setAlertDialogListener(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->g:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    return-void
.end method
