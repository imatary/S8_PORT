.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggedInListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;
    }
.end annotation


# instance fields
.field private final a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/naver/glink/android/sdk/model/Comment;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->c:Lcom/naver/glink/android/sdk/model/Comment;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 1

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->c(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 6

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;->COMMENT:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 6

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;->PROFILE:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Lcom/naver/glink/android/sdk/model/Comment;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->c:Lcom/naver/glink/android/sdk/model/Comment;

    return-object v0
.end method

.method private static c(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;->LIKE:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;->REPORT:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->e:Z

    return v0
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)V

    invoke-static {v0, v1, v3, v3, v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;ZZZLjava/lang/Runnable;)V

    goto :goto_0
.end method
