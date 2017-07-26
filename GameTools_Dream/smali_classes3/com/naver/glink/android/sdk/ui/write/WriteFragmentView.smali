.class public Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;,
        Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$c;,
        Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;,
        Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;
    }
.end annotation


# static fields
.field static final a:I = 0xc800000

.field private static final b:I = 0x1f4

.field private static final c:I = 0x1f5

.field private static final d:I = 0x1f6

.field private static final g:I = 0x1f7

.field private static final h:Ljava/lang/String; = "com.naver.glink.ARG_ARTICLE"

.field private static final i:Ljava/lang/String; = "com.naver.glink.ARG_SHORTCUT"

.field private static final j:Ljava/lang/String; = "com.naver.glink.ARG_COLLAPSED"


# instance fields
.field private k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

.field private l:Z

.field private m:Z

.field private n:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

.field private o:Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

.field private p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<+",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Z

.field private u:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->r:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_write_navigation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$15;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$15;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/configure/d;->f(Landroid/view/View;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$16;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$16;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->v:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;)Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->u:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o:Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;)Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o:Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->n:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;ZZ)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_ARTICLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "com.naver.glink.ARG_SHORTCUT"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.naver.glink.ARG_COLLAPSED"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 5

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->article_save_fail_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$string;->retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$string;->cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$11;

    invoke-direct {v4, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$11;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/write/c;->b()V

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/a;->a()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    const-string/jumbo v1, "illegal type of image file."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->image_upload_fail_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)V
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;

    invoke-direct {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->article_save_complete_message:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/a;->a()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Z)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<+",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">;",
            "Lcom/naver/glink/android/sdk/api/Response;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_3

    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p1, p3}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/Requests;->attachAuthRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->photoKeyRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/write/c;->b()V

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    instance-of v1, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/naver/glink/android/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-static {v3, v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->attachImageRequest(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$6;

    invoke-direct {v4, p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, v3, v4}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-static {v3, v0}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->attachImageRequest(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$7;

    invoke-direct {v4, p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, v3, v4}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    instance-of v1, v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/naver/glink/android/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->p:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-static {v3, v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->attachMovieRequest(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;

    invoke-direct {v4, p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, v3, v4}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/write/c;->a()Lcom/naver/glink/android/sdk/ui/write/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;

    invoke-direct {v5, p0, v3, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/c;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;)V

    invoke-virtual {v3, v4, v0, v5}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/io/File;Lcom/naver/glink/android/sdk/api/request/RequestListener;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-direct {p0, v1, v6, v6, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_1

    :cond_a
    new-instance v4, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;

    invoke-direct {v4, p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c$a;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method private a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->t:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->w:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q()V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->g()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->cancel_article_write_confirm_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Ljava/lang/Runnable;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->r()V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->n:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l()V

    return-void
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    return-object v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->s()V

    return-void
.end method

.method static synthetic j(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o()V

    return-void
.end method

.method static synthetic k(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->n()V

    return-void
.end method

.method private l()V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$c;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$c;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/naver/glink/android/sdk/R$string;->require_login_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$19;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$19;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-interface {v1, v0, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/naver/glink/android/sdk/R$string;->need_login:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$20;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$20;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o:Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/Requests;->writeArticleRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b()I

    move-result v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->modifyArticleRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_2
.end method

.method private m()V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    new-instance v5, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;

    invoke-direct {v5, p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/naver/glink/android/sdk/ui/write/a$a;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l()V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o:Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->o:Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->menus:Ljava/util/List;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c()I

    move-result v2

    new-instance v3, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$23;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$23;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;Ljava/util/List;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->g()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->internet_not_connected_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_3

    :goto_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$string;->article_save_progress_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->l()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->saveArticleRequest(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$4;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private q()V
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    sget v2, Lcom/naver/glink/android/sdk/R$string;->permission_storage:I

    invoke-virtual {p0, v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->c(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f6

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->attachment_add_fail_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    sget v2, Lcom/naver/glink/android/sdk/R$string;->permission_storage:I

    invoke-virtual {p0, v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->c(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f7

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1f5

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->attachment_add_fail_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->f()V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_write:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a()V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$18;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$18;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->u:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->u:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;)V

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->f()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_ARTICLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->m:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/naver/glink/android/sdk/R$id;->navigation_for_portrait:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v0, Lcom/naver/glink/android/sdk/R$id;->pick_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_flpic:I

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->pick_movie:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_flmov:I

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$12;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$12;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->m()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/naver/glink/android/sdk/R$id;->navigation_for_portrait:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public a(Lcom/naver/glink/android/sdk/c$a;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->v:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->w:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;)V
    .locals 6
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;->a:I

    iget v1, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;->b:I

    iget-object v2, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;->c:Landroid/content/Intent;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$13;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$13;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/naver/glink/android/sdk/ui/write/a$a;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/a/d;->b(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/32 v4, 0xc800000

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-direct {v2, v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/Content;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->n:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$14;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$14;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$b;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$b;->a:I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$b;->c:[I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/b;->a([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->image_permission_setting_message:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/b;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->r()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->movie_permission_setting_message:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Z)V

    return-void
.end method

.method public getArticle()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->k:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    return-object v0
.end method
