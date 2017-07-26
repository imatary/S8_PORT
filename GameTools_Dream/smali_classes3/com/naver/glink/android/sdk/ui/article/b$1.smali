.class final Lcom/naver/glink/android/sdk/ui/article/b$1;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "ArticleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;I)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    iput p3, p0, Lcom/naver/glink/android/sdk/ui/article/b$1;->c:I

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/article/b$1;->c:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;IZ)V

    return-void
.end method
