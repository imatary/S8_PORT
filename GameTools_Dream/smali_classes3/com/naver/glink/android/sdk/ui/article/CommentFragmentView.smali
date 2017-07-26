.class public Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "CommentFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;,
        Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;,
        Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.naver.glink.COMMENT_BACK_STACK"

.field private static final b:Ljava/lang/String; = "CommentFragment"

.field private static final c:Ljava/lang/String; = "com.naver.glink.ARG_FROM"

.field private static final g:I = 0x3e8


# instance fields
.field private h:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

.field private i:Lcom/naver/glink/android/sdk/model/Comment;

.field private j:I

.field private k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

.field private l:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_FROM"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/main/b;->a(Z)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->c()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->saveCommentRequest(Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->j:I

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->saveRequest(Lcom/naver/glink/android/sdk/model/Comment;I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$6;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->l:Landroid/widget/Button;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->h:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->i:Lcom/naver/glink/android/sdk/model/Comment;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->setSelection(I)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->i:Lcom/naver/glink/android/sdk/model/Comment;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->i:Lcom/naver/glink/android/sdk/model/Comment;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_comment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/naver/glink/android/sdk/a/b;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lcom/naver/glink/android/sdk/a/b;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->setFilters([Landroid/text/InputFilter;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_save:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->l:Landroid/widget/Button;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$3;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->setOnKeyPreImeListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$4;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->e()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->k:Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_FROM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->h:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x53

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v0, v0, 0x12

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/model/Comment;I)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->i:Lcom/naver/glink/android/sdk/model/Comment;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->j:I

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.COMMENT_BACK_STACK"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->i:Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/main/b;->a(Z)V

    return-void
.end method
