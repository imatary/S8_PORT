.class final enum Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;
.super Ljava/lang/Enum;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "After"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

.field public static final enum GO_PROFILE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

.field public static final enum LIKE_IT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

.field public static final enum RELOAD_ARTICLE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

.field public static final enum RETRY_COMMENT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const-string/jumbo v1, "RELOAD_ARTICLE"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->RELOAD_ARTICLE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const-string/jumbo v1, "RETRY_COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->RETRY_COMMENT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const-string/jumbo v1, "LIKE_IT"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->LIKE_IT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const-string/jumbo v1, "GO_PROFILE"

    invoke-direct {v0, v1, v5}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->GO_PROFILE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->RELOAD_ARTICLE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->RETRY_COMMENT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->LIKE_IT:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->GO_PROFILE:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    aput-object v1, v0, v5

    sput-object v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->$VALUES:[Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->$VALUES:[Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener$After;

    return-object v0
.end method
