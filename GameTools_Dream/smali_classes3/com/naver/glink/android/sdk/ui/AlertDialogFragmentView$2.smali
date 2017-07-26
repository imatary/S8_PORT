.class Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;
.super Lcom/naver/glink/android/sdk/a/o;
.source "AlertDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->dismiss()V

    return-void
.end method
