.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;
.source "DialogFragmentView.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Z

.field private c:Landroid/view/View;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    if-lt p2, v3, :cond_2

    aget v3, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_2

    aget v3, v2, v0

    if-lt p3, v3, :cond_2

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le p3, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c()Landroid/app/Dialog;
    .locals 4

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b:Z

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v1, -0x2

    if-eqz p1, :cond_0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3f19999a    # 0.6f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x1030002

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000402

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    return-void
.end method

.method public a_()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a_()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d:Ljava/lang/String;

    const-string/jumbo v1, "This FragmentView is aleady added to window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->g(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    sget-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d:Ljava/lang/String;

    const-string/jumbo v1, "copy from service window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b_()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b_()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->requestFocus()Z

    return-void
.end method

.method public c_()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->removeAllViews()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    return-void
.end method

.method public d_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->g:Ljava/lang/String;

    invoke-virtual {p0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/DialogInterface;)V

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->d_()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/g;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->dismiss()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->c_()V

    :cond_0
    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCanceledOnTouchOutside(ZLandroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->c:Landroid/view/View;

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b:Z

    return-void
.end method

.method protected setDialogVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->g:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
