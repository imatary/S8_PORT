.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->c(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Z)Z

    return-void
.end method
