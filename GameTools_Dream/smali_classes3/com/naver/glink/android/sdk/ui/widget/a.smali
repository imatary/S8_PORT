.class public Lcom/naver/glink/android/sdk/ui/widget/a;
.super Landroid/app/ProgressDialog;
.source "LoadingProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/R$style;->notitle_transparent_defaultdialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/a;->setCancelable(Z)V

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/a;->setContentView(I)V

    return-void
.end method
