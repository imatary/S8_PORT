.class public Lcom/naver/glink/android/sdk/ui/floating/c;
.super Ljava/lang/Object;
.source "WidgetControlHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "W_T"

.field private static final b:Ljava/lang/String; = "R_T"

.field private static final c:Ljava/lang/String; = "R_S_T"

.field private static d:Lcom/naver/glink/android/sdk/ui/floating/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/c;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/floating/c;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/c;->d:Lcom/naver/glink/android/sdk/ui/floating/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/floating/c;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/c;->d:Lcom/naver/glink/android/sdk/ui/floating/c;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/FragmentManager;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/c$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/floating/c$2;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c;)V

    invoke-virtual {p2, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(Lcom/naver/glink/android/sdk/ui/floating/a$b;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/c$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/naver/glink/android/sdk/ui/floating/c$3;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/Activity;Landroid/app/FragmentManager;)V

    invoke-virtual {p2, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/c$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/floating/c$4;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V

    invoke-virtual {p2, v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b$b;)V

    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_plughome_g_104:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_plughome_k_104:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/app/FragmentManager;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget v0, Lcom/naver/glink/android/sdk/R$string;->permission_storage_record:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Lcom/naver/glink/android/sdk/R$string;->permission_record:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v6, v3, :cond_5

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/c$5;

    invoke-direct {v1, p0, p1, v4}, Lcom/naver/glink/android/sdk/ui/floating/c$5;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->b(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    :cond_4
    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v3, v1

    invoke-static {p1, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x2406

    invoke-static {p1, v1, v0, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.RECORD_AUDIO"

    aput-object v6, v3, v1

    invoke-static {p1, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/c$6;

    invoke-direct {v1, p0, p1, v4}, Lcom/naver/glink/android/sdk/ui/floating/c$6;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->b(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/floating/c$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Landroid/app/FragmentManager;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->setListener(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/floating/c;->b(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a()V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->d()Z

    move-result v0

    return v0
.end method
