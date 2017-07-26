.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "ItemsDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;,
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;,
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.naver.glink.ARG_TITLE"

.field public static final b:Ljava/lang/String; = "com.naver.glink.ARG_ITEMS"

.field public static final c:Ljava/lang/String; = "com.naver.glink.ARG_CHECKED_INDEX"

.field public static final g:I = -0x1

.field public static final h:Ljava/lang/String; = "CHANNELS_DIALOG_TAG"

.field public static final i:Ljava/lang/String; = "PROFILE_DIALOG_TAG"

.field private static final o:Ljava/lang/String; = "section:"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->m:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;I)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    iget-object v0, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "com.naver.glink.ARG_TITLE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.naver.glink.ARG_ITEMS"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "com.naver.glink.ARG_CHECKED_INDEX"

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->setArguments(Landroid/os/Bundle;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$2;

    invoke-direct {v1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->setOnItemClickListener(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->title_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->dialog_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->k:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->addAll(Ljava/util/Collection;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->item_dialog_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;

    invoke-direct {v2, p0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->dialog_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->l:I

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;"
        }
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.naver.glink.ARG_ITEMS"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "com.naver.glink.ARG_CHECKED_INDEX"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "section:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "section:"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "section:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_items_dialog:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_ITEMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->k:Ljava/util/List;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_CHECKED_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->l:I

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-wide v8, 0x3fc3333333333333L    # 0.15

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->setCanceledOnTouchOutside(ZLandroid/view/View;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/c;->b()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    :goto_0
    double-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    :goto_1
    double-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    :goto_2
    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/c;->g:I

    int-to-double v2, v2

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    goto :goto_1

    :cond_2
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    goto :goto_2
.end method

.method public setOnItemClickListener(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->m:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;

    return-void
.end method
