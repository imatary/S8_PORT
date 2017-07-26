.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;
.super Landroid/os/Handler;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x1


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/naver/glink/android/sdk/model/Comment;

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
