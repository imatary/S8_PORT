.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
.super Ljava/lang/Object;
.source "WebViewArticleFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggedInListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;
    }
.end annotation


# instance fields
.field private final a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

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

.field private final c:Lcom/naver/glink/android/sdk/model/Comment;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->c:Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->e:Z

    return-void
.end method

.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->c:Lcom/naver/glink/android/sdk/model/Comment;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->e:Z

    return-void
.end method

.method static a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->RELOAD_ARTICLE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    return-object v0
.end method

.method static a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->RETRY_COMMENT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    invoke-direct {v0, v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    return-object v0
.end method

.method static a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->GO_PROFILE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->LIKE_IT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    return-object v0
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$5;->a:[I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->c:Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->g(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->e:Z

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
