.class Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;
.super Ljava/lang/Object;
.source "ProfileArticlesFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->f:Landroid/view/View;

    iput-object p8, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->g:Landroid/view/View;

    iput-object p9, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->h:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "L"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%,d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%,d"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v6, v6, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v6}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->h(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->h(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->i(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->j(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->i:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
