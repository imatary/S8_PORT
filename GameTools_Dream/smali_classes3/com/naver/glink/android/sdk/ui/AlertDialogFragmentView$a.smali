.class public abstract Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.super Ljava/lang/Object;
.source "AlertDialogFragmentView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a(Landroid/content/DialogInterface;)V

    :cond_0
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    goto :goto_0
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->a(Landroid/content/DialogInterface;I)V

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;I)V

    :cond_2
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b:Z

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;)V

    :cond_3
    return-void
.end method
