.class Lcom/naver/glink/android/sdk/ui/floating/c$1;
.super Ljava/lang/Object;
.source "WidgetControlHelper.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/c;->b(Landroid/app/Activity;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/app/FragmentManager;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/floating/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->c:Lcom/naver/glink/android/sdk/ui/floating/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->b:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->widget_trash:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a()V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 4

    invoke-static {p2, p3}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(II)Lcom/naver/glink/android/sdk/ui/floating/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->c:Lcom/naver/glink/android/sdk/ui/floating/c;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->b:Landroid/app/FragmentManager;

    invoke-static {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/FragmentManager;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$1;->b:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "W_T"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b()V

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->setBackgoundVisible(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->setBackgoundVisible(I)V

    goto :goto_0
.end method
