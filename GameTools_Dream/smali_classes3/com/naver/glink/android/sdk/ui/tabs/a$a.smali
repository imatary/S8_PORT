.class public Lcom/naver/glink/android/sdk/ui/tabs/a$a;
.super Lcom/naver/glink/android/sdk/ui/tabs/a;
.source "TabsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/tabs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/tabs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;
    .locals 4

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/a$1;->a:[I

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_1:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b(Landroid/content/Context;)Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_2:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_3:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_4:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b(Landroid/content/Context;)Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_5:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/content/Context;Z)Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
