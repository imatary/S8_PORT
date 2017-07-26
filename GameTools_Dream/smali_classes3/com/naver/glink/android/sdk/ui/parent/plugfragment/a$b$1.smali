.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:I

.field final synthetic e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->c:Landroid/view/ViewGroup;

    iput p5, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iput-boolean v3, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    instance-of v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c_()V

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iput-boolean v3, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iput-boolean v3, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a:Ljava/util/Vector;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->e:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a_()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->c:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->setParentView(Landroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method
