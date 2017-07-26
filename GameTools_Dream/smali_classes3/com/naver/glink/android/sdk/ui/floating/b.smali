.class public Lcom/naver/glink/android/sdk/ui/floating/b;
.super Landroid/app/DialogFragment;
.source "RecordWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/floating/b$a;,
        Lcom/naver/glink/android/sdk/ui/floating/b$c;,
        Lcom/naver/glink/android/sdk/ui/floating/b$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x28

.field private static final b:I = 0x190

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Point;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/os/Handler;

.field private v:Landroid/view/WindowManager$LayoutParams;

.field private w:Landroid/view/WindowManager;

.field private x:Lcom/naver/glink/android/sdk/ui/floating/b$b;

.field private y:Lcom/naver/glink/android/sdk/ui/record/c;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/b$c;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/floating/b$c;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->u:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/b;F)F
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->l:F

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/b;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->n:I

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/b;J)J
    .locals 1

    iput-wide p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->z:J

    return-wide p1
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/record/c;)Lcom/naver/glink/android/sdk/ui/floating/b;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->setArguments(Landroid/os/Bundle;)V

    iput-object p0, v1, Lcom/naver/glink/android/sdk/ui/floating/b;->y:Lcom/naver/glink/android/sdk/ui/record/c;

    return-object v1
.end method

.method private a()Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;
    .locals 2

    const-string/jumbo v0, ":"

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b$3;

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/b$3;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;Ljava/text/DecimalFormat;)V

    return-object v1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->r:Z

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/floating/b;F)F
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->m:F

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/floating/b;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->o:I

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/floating/b;)F
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->l:F

    return v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/floating/b;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->p:I

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/floating/b;)F
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->m:F

    return v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/floating/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->x:Lcom/naver/glink/android/sdk/ui/floating/b$b;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/floating/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->t:Z

    return v0
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->v:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->q:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic j(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/naver/glink/android/sdk/ui/floating/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->z:J

    return-wide v0
.end method

.method static synthetic l(Lcom/naver/glink/android/sdk/ui/floating/b;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->n:I

    return v0
.end method

.method static synthetic m(Lcom/naver/glink/android/sdk/ui/floating/b;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->o:I

    return v0
.end method

.method static synthetic n(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/record/c;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->y:Lcom/naver/glink/android/sdk/ui/record/c;

    return-object v0
.end method

.method static synthetic o(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/floating/b;->a()Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->w:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic r(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/naver/glink/android/sdk/ui/floating/b;)I
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->p:I

    return v0
.end method

.method static synthetic v(Lcom/naver/glink/android/sdk/ui/floating/b;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->p:I

    return v0
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/floating/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->x:Lcom/naver/glink/android/sdk/ui/floating/b$b;

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->h:Landroid/view/View;

    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->h:Landroid/view/View;

    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->t:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->y:Lcom/naver/glink/android/sdk/ui/record/c;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/b;->dismissAllowingStateLoss()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x40408

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$style;->record_widget_anim:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->v:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->w:Landroid/view/WindowManager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->widget_record_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->g:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->h:Landroid/view/View;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/b;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/c;->b()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->q:Landroid/graphics/Point;

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->record_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->i:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->record_view_stop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->j:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->record_timer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->k:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->g:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/floating/b$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b;->g:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/floating/b$2;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
