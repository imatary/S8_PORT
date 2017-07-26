.class Lcom/naver/glink/android/sdk/ui/floating/c$3;
.super Ljava/lang/Object;
.source "WidgetControlHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/a;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/app/FragmentManager;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/floating/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/c;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->d:Lcom/naver/glink/android/sdk/ui/floating/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->c:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_cafe:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Glink;->startHome(Landroid/content/Context;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_capture:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/b;->d()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_video:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->d:Lcom/naver/glink/android/sdk/ui/floating/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->c:Landroid/app/FragmentManager;

    const-string/jumbo v1, "R_S_T"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->c:Landroid/app/FragmentManager;

    const-string/jumbo v1, "R_T"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/d;->a()Lcom/naver/glink/android/sdk/ui/record/d;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/c$3$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/floating/c$3$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c$3;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/d;->a(Lcom/naver/glink/android/sdk/ui/record/d$a;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "R_S_T"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_3
    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_write:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Glink;->startWrite(Landroid/content/Context;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a()V

    goto :goto_0

    :cond_4
    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_trash:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->e(Landroid/content/Context;)V

    goto :goto_0
.end method
