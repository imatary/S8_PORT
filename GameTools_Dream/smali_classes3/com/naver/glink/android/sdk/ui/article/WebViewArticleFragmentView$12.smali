.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$12;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$12;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method
