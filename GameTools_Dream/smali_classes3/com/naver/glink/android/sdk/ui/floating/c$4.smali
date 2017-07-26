.class Lcom/naver/glink/android/sdk/ui/floating/c$4;
.super Ljava/lang/Object;
.source "WidgetControlHelper.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/floating/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/floating/b;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/floating/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$4;->c:Lcom/naver/glink/android/sdk/ui/floating/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/floating/c$4;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$4;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

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

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$4;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->dismissAllowingStateLoss()V

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a()V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 0

    return-void
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
