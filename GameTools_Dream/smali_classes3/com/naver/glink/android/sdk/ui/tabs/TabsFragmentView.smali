.class public Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.source "TabsFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.naver.glink.ARG_START_TO"


# instance fields
.field private b:Lcom/naver/glink/android/sdk/StartTo;

.field private c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/ViewGroup;

.field private h:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_START_TO"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/StartTo;->b:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$2;->a:[I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/StartTo;->a:Lcom/naver/glink/android/sdk/StartTo$To;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/StartTo$To;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p1, Lcom/naver/glink/android/sdk/StartTo;->d:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/naver/glink/android/sdk/StartTo;->e:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;ZZ)V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Lcom/naver/glink/android/sdk/StartTo;->c:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->setClickedMenu(I)V

    iget v0, p1, Lcom/naver/glink/android/sdk/StartTo;->c:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->c(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->setClickedMenu(I)V

    invoke-static {v2}, Lcom/naver/glink/android/sdk/model/Menu;->allVideos(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/model/Menu;)V

    goto :goto_0

    :pswitch_5
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->setClickedMenu(I)V

    invoke-static {v2}, Lcom/naver/glink/android/sdk/model/Menu;->allImages(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/model/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V
    .locals 5

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->m()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->g()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->e()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->e:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v3

    iget-object v4, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iget-object v4, v4, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->e:Z

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->fragmentTag:Ljava/lang/String;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->tab_contents:I

    invoke-virtual {v1, v3, v0, p0, v4}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v3

    iget-object v4, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iget-object v4, v4, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->i()V

    :cond_4
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->h()V

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->n()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->n()V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;)Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    return-object v0
.end method

.method private b(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setClickedMenu(I)V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    check-cast v0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->setClickedMenuId(I)V

    :cond_0
    return-void
.end method

.method private setupTabs(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/d;->b:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    iget v1, v1, Lcom/naver/glink/android/sdk/configure/c;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$layout;->item_tab:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;

    iget-object v4, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-direct {v3, p0, v4, v2}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v3

    iget v3, v3, Lcom/naver/glink/android/sdk/configure/c;->f:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    iget v1, v1, Lcom/naver/glink/android/sdk/configure/c;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_tabs:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->m()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->e()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.naver.glink.ARG_START_TO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/StartTo;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b:Lcom/naver/glink/android/sdk/StartTo;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tabs_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->g:Landroid/view/ViewGroup;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tab_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->h:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->setupTabs(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b:Lcom/naver/glink/android/sdk/StartTo;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/StartTo;)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$2;->b:[I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;->a:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/model/Menu;->getType()Lcom/naver/glink/android/sdk/model/Menu$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/model/Menu$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;->a:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->c(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;->a:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/model/Menu;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    iget-object v6, v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iget-object v7, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-ne v6, v7, :cond_0

    iget-boolean v5, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->e:Z

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v3, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    :cond_1
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->d:Ljava/util/List;

    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method e()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method public getSelectedTabType()Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    return-object v0
.end method

.method l()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->h:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->h:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method m()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->h:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->h:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;->setVisibility(I)V

    :cond_0
    return-void
.end method
