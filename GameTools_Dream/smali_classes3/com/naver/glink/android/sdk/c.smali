.class public Lcom/naver/glink/android/sdk/c;
.super Ljava/lang/Object;
.source "G.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "plug.sdk.lifecycle"

.field private static final b:Ljava/lang/String; = "G"

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/view/WindowManager$LayoutParams;

.field private static e:Lcom/naver/glink/android/sdk/configure/a;

.field private static f:Lcom/naver/glink/android/sdk/configure/d;

.field private static g:Lcom/naver/glink/android/sdk/configure/c;

.field private static h:Lcom/naver/glink/android/sdk/StartFrom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/naver/glink/android/sdk/configure/a;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/configure/a;->f()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a;
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/StartTo;->a()Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/StartTo;->b(I)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->b(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/StartTo;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->b(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->c(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/StartTo;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V
    .locals 1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/StartTo;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->h(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->l(Landroid/content/Context;)V

    sget-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/configure/a;->a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->plug_sdk_version:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->from(Landroid/content/Context;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/configure/b;->a(Landroid/content/res/Resources;)Lcom/naver/glink/android/sdk/configure/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/configure/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/naver/glink/android/sdk/configure/a$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->b(Lcom/naver/glink/android/sdk/configure/a$b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a$a;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    new-instance v0, Lcom/naver/glink/android/sdk/configure/c;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/configure/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/naver/glink/android/sdk/c;->g:Lcom/naver/glink/android/sdk/configure/c;

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NEO_ID:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->connectionsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v1, Lcom/naver/glink/android/sdk/c$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/c$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->h(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->l(Landroid/content/Context;)V

    sget-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/configure/a;->a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->plug_sdk_version:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->from(Landroid/content/Context;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/configure/b;->a(Landroid/content/res/Resources;)Lcom/naver/glink/android/sdk/configure/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/configure/a$b;

    invoke-direct {v1, p3, p1, p2}, Lcom/naver/glink/android/sdk/configure/a$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/a$b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a$a;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    new-instance v0, Lcom/naver/glink/android/sdk/configure/c;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/configure/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/naver/glink/android/sdk/c;->g:Lcom/naver/glink/android/sdk/configure/c;

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/c$3;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/c$3;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/c;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/StartFrom;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/c;->h:Lcom/naver/glink/android/sdk/StartFrom;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/configure/d;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/c;->f:Lcom/naver/glink/android/sdk/configure/d;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/tabs/a;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/tabs/a;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/StartTo;->b()Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method static b(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/StartTo;->a(I)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->b(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/StartTo;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->l(Landroid/content/Context;)V

    new-instance v0, Lcom/naver/glink/android/sdk/c$2;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/c$2;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public static c()Lcom/naver/glink/android/sdk/configure/d;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/c;->f:Lcom/naver/glink/android/sdk/configure/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/configure/d;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/configure/d;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/c;->f:Lcom/naver/glink/android/sdk/configure/d;

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/c;->f:Lcom/naver/glink/android/sdk/configure/d;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->k(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->i(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/c;->a()Lcom/naver/glink/android/sdk/ui/floating/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/c;->b()V

    const-string/jumbo v0, "GST"

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Statistics;->sendRequest(Ljava/lang/String;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/b;->a()V

    return-void
.end method

.method private static c(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/c$a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/c$a;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancelAllRequests(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onDestroy()V

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/a;->c()V

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->h()V

    invoke-static {}, Lcom/naver/glink/android/sdk/b;->b()V

    const-string/jumbo v0, "GSP"

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Statistics;->sendRequest(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    new-instance v0, Lcom/naver/glink/android/sdk/c$4;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/c$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    new-instance v0, Lcom/naver/glink/android/sdk/c$5;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/c$5;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static e()Z
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/c;->h:Lcom/naver/glink/android/sdk/StartFrom;

    sget-object v1, Lcom/naver/glink/android/sdk/StartFrom;->GAME:Lcom/naver/glink/android/sdk/StartFrom;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/c;->h:Lcom/naver/glink/android/sdk/StartFrom;

    sget-object v1, Lcom/naver/glink/android/sdk/StartFrom;->SAMSUNG_GAME_TOOLS:Lcom/naver/glink/android/sdk/StartFrom;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/c;->d:Landroid/view/WindowManager$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/configure/c;->a:Z

    return v0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->clearAllCaches()V

    return-void
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "plug.sdk.lifecycle"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;

    move-result-object v1

    const-string/jumbo v2, "plug.sdk.lifecycle"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->b()Z

    move-result v0

    return v0
.end method

.method private static j(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "plug.sdk.lifecycle"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->c()Z

    move-result v0

    return v0
.end method

.method private static k(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    new-instance v0, Lcom/naver/glink/android/sdk/configure/c;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/configure/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/naver/glink/android/sdk/c;->g:Lcom/naver/glink/android/sdk/configure/c;

    goto :goto_0
.end method

.method public static k()Z
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/configure/a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    sget-object v1, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->DEV:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/naver/glink/android/sdk/c;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static l()Z
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/configure/a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    sget-object v1, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->STAGE:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m()Z
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/configure/a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    sget-object v1, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->REAL:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()Lcom/naver/glink/android/sdk/configure/c;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/c;->g:Lcom/naver/glink/android/sdk/configure/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/configure/c;->a()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/c;->g:Lcom/naver/glink/android/sdk/configure/c;

    goto :goto_0
.end method

.method public static o()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/c;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic q()Lcom/naver/glink/android/sdk/configure/a;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/c;->e:Lcom/naver/glink/android/sdk/configure/a;

    return-object v0
.end method
